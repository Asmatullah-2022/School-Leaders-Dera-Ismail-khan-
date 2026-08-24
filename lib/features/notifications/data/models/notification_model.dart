import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

enum AppNotificationType {
  system,
  emergency,
  problem,
  assignment,
  reportPending,
  reportReturned,
  reportApproved,
  deadline,
  meeting,
  announcement,
}

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,

    /// Either a specific recipient, or null for a role/scope broadcast.
    String? recipientUid,

    /// For broadcasts: the minimum role tier plus the hierarchy scope the
    /// notification applies to, so a recipient's own scope decides visibility.
    String? recipientRole,
    String? districtId,
    String? subDivisionId,
    String? circleId,
    String? clusterId,
    String? schoolId,
    required String title,
    String? titleUrdu,
    required String body,
    String? bodyUrdu,
    required AppNotificationType type,
    @Default(false) bool isRead,

    /// Deep-link target: which collection + document this notification is about.
    String? relatedCollection,
    String? relatedDocId,
    required DateTime createdAt,
    required String createdBy,
  }) = _NotificationModel;

  const NotificationModel._();

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  static const Set<String> dateFields = <String>{'createdAt'};
}
