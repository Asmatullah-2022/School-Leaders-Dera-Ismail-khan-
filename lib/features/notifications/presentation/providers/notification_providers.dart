import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../data/fcm_service.dart';
import '../../data/models/notification_model.dart';
import '../../data/notification_repository_impl.dart';
import '../../domain/repositories/notification_repository.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepositoryImpl(ref.watch(firestoreProvider));
});

final myNotificationsProvider = StreamProvider<List<NotificationModel>>((ref) {
  final String? uid = ref.watch(currentUserProvider).valueOrNull?.uid;
  if (uid == null) return Stream<List<NotificationModel>>.value(const <NotificationModel>[]);
  return ref.watch(notificationRepositoryProvider).watchForUser(uid);
});

final unreadNotificationCountProvider = Provider<int>((ref) {
  return ref.watch(myNotificationsProvider).valueOrNull?.where((n) => !n.isRead).length ?? 0;
});

final fcmServiceProvider = Provider<FcmService>((ref) {
  return FcmService(FirebaseMessaging.instance);
});

/// Registers the device token against the signed-in user, and re-registers
/// whenever FCM rotates it. Watched once from the app shell after login.
final fcmRegistrationProvider = FutureProvider<void>((ref) async {
  final String? uid = ref.watch(currentUserProvider).valueOrNull?.uid;
  if (uid == null) return;

  final FcmService fcm = ref.watch(fcmServiceProvider);
  final authRepo = ref.watch(authRepositoryProvider);

  final String? token = await fcm.requestPermissionAndGetToken();
  if (token != null) {
    await authRepo.updateFcmToken(uid, token);
  }

  final sub = fcm.onTokenRefresh.listen((String refreshed) {
    authRepo.updateFcmToken(uid, refreshed);
  });
  ref.onDispose(sub.cancel);
});
