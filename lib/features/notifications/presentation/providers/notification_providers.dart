import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
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
