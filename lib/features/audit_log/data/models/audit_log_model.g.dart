// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditLogModel _$AuditLogModelFromJson(Map<String, dynamic> json) =>
    _AuditLogModel(
      id: json['id'] as String,
      actorUid: json['actorUid'] as String,
      actorName: json['actorName'] as String?,
      actorRole: json['actorRole'] as String?,
      action: $enumDecode(_$AuditActionEnumMap, json['action']),
      collectionName: json['collectionName'] as String,
      docId: json['docId'] as String?,
      districtId: json['districtId'] as String?,
      subDivisionId: json['subDivisionId'] as String?,
      circleId: json['circleId'] as String?,
      clusterId: json['clusterId'] as String?,
      schoolId: json['schoolId'] as String?,
      deviceInfo: json['deviceInfo'] as String?,
      beforeData: json['beforeData'] as Map<String, dynamic>?,
      afterData: json['afterData'] as Map<String, dynamic>?,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$AuditLogModelToJson(_AuditLogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actorUid': instance.actorUid,
      'actorName': instance.actorName,
      'actorRole': instance.actorRole,
      'action': _$AuditActionEnumMap[instance.action]!,
      'collectionName': instance.collectionName,
      'docId': instance.docId,
      'districtId': instance.districtId,
      'subDivisionId': instance.subDivisionId,
      'circleId': instance.circleId,
      'clusterId': instance.clusterId,
      'schoolId': instance.schoolId,
      'deviceInfo': instance.deviceInfo,
      'beforeData': instance.beforeData,
      'afterData': instance.afterData,
      'timestamp': instance.timestamp.toIso8601String(),
    };

const _$AuditActionEnumMap = {
  AuditAction.login: 'login',
  AuditAction.logout: 'logout',
  AuditAction.create: 'create',
  AuditAction.update: 'update',
  AuditAction.delete: 'delete',
  AuditAction.submit: 'submit',
  AuditAction.approve: 'approve',
  AuditAction.reject: 'reject',
  AuditAction.returned: 'returned',
  AuditAction.roleChange: 'roleChange',
  AuditAction.export: 'export',
};
