import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

/// Registers this device for push and wires the foreground/background
/// handlers. Called after sign-in (see `fcmRegistrationProvider`) because the
/// token has to be stored against a known user document.
///
/// Delivery of the actual push messages is a server-side concern — the
/// Cloud Function documented in README ("Emergency push") sends to the tokens
/// this service records.
class FcmService {
  FcmService(this._messaging);

  final FirebaseMessaging _messaging;

  /// Requests permission (a no-op grant on Android < 13) and returns the
  /// device token, or null if the user declined or the platform has no token.
  Future<String?> requestPermissionAndGetToken() async {
    final NotificationSettings settings = await _messaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.denied) return null;
    return _messaging.getToken();
  }

  /// Fires whenever FCM rotates the token so the new value can be persisted.
  Stream<String> get onTokenRefresh => _messaging.onTokenRefresh;

  /// Messages arriving while the app is in the foreground. The in-app
  /// notification list is Firestore-backed, so this stream is only used for
  /// transient UI (banners/snackbars).
  Stream<RemoteMessage> get onForegroundMessage => FirebaseMessaging.onMessage;

  /// Taps on a push that opened the app from background.
  Stream<RemoteMessage> get onMessageOpenedApp => FirebaseMessaging.onMessageOpenedApp;

  /// The notification that cold-started the app, if any.
  Future<RemoteMessage?> getInitialMessage() => _messaging.getInitialMessage();
}

/// Top-level background handler. Must be a top-level or static function —
/// Flutter spawns a separate isolate for it, so it cannot capture state.
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Intentionally minimal: the authoritative record is the Firestore
  // `notifications` document, which the in-app list reads when opened.
  if (kDebugMode) {
    debugPrint('Background FCM message received: ${message.messageId}');
  }
}
