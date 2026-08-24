import '../../data/models/notification_model.dart';

abstract class NotificationRepository {
  /// Notifications addressed directly to [uid], newest first.
  Stream<List<NotificationModel>> watchForUser(String uid);

  Future<void> create(NotificationModel notification);

  Future<void> markRead(String id);

  Future<void> markAllRead(String uid);
}
