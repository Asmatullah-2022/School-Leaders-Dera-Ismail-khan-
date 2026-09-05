// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) => _NotificationModel(
  id: json['id'] as String,
  recipientUid: json['recipientUid'] as String?,
  recipientRole: json['recipientRole'] as String?,
  districtId: json['districtId'] as String?,
  subDivisionId: json['subDivisionId'] as String?,
  circleId: json['circleId'] as String?,
  clusterId: json['clusterId'] as String?,
  schoolId: json['schoolId'] as String?,
  title: json['title'] as String,
  titleUrdu: json['titleUrdu'] as String?,
  body: json['body'] as String,
  bodyUrdu: json['bodyUrdu'] as String?,
  type: $enumDecode(_$AppNotificationTypeEnumMap, json['type']),
  isRead: json['isRead'] as bool? ?? false,
  relatedCollection: json['relatedCollection'] as String?,
  relatedDocId: json['relatedDocId'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) => <String, dynamic>{
  'id': instance.id,
  'recipientUid': instance.recipientUid,
  'recipientRole': instance.recipientRole,
  'districtId': instance.districtId,
  'subDivisionId': instance.subDivisionId,
  'circleId': instance.circleId,
  'clusterId': instance.clusterId,
  'schoolId': instance.schoolId,
  'title': instance.title,
  'titleUrdu': instance.titleUrdu,
  'body': instance.body,
  'bodyUrdu': instance.bodyUrdu,
  'type': _$AppNotificationTypeEnumMap[instance.type]!,
  'isRead': instance.isRead,
  'relatedCollection': instance.relatedCollection,
  'relatedDocId': instance.relatedDocId,
  'createdAt': instance.createdAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$AppNotificationTypeEnumMap = {
  AppNotificationType.system: 'system',
  AppNotificationType.emergency: 'emergency',
  AppNotificationType.problem: 'problem',
  AppNotificationType.assignment: 'assignment',
  AppNotificationType.reportPending: 'reportPending',
  AppNotificationType.reportReturned: 'reportReturned',
  AppNotificationType.reportApproved: 'reportApproved',
  AppNotificationType.deadline: 'deadline',
  AppNotificationType.meeting: 'meeting',
  AppNotificationType.announcement: 'announcement',
};
