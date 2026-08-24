// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmergencyReportModel _$EmergencyReportModelFromJson(
  Map<String, dynamic> json,
) => _EmergencyReportModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  emergencyType: $enumDecode(_$EmergencyTypeEnumMap, json['emergencyType']),
  severity: $enumDecode(_$EmergencySeverityEnumMap, json['severity']),
  description: json['description'] as String,
  descriptionUrdu: json['descriptionUrdu'] as String?,
  occurredAt: DateTime.parse(json['occurredAt'] as String),
  immediateAction: json['immediateAction'] as String?,
  requiredSupport: json['requiredSupport'] as String?,
  contactPersonName: json['contactPersonName'] as String?,
  contactPhone: json['contactPhone'] as String?,
  casualties: (json['casualties'] as num?)?.toInt(),
  status:
      $enumDecodeNullable(_$EmergencyStatusEnumMap, json['status']) ??
      EmergencyStatus.open,
  resolutionNotes: json['resolutionNotes'] as String?,
  resolvedAt: json['resolvedAt'] == null
      ? null
      : DateTime.parse(json['resolvedAt'] as String),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  reportedByUid: json['reportedByUid'] as String,
  reportedByName: json['reportedByName'] as String,
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$EmergencyReportModelToJson(
  _EmergencyReportModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'emergencyType': _$EmergencyTypeEnumMap[instance.emergencyType]!,
  'severity': _$EmergencySeverityEnumMap[instance.severity]!,
  'description': instance.description,
  'descriptionUrdu': instance.descriptionUrdu,
  'occurredAt': instance.occurredAt.toIso8601String(),
  'immediateAction': instance.immediateAction,
  'requiredSupport': instance.requiredSupport,
  'contactPersonName': instance.contactPersonName,
  'contactPhone': instance.contactPhone,
  'casualties': instance.casualties,
  'status': _$EmergencyStatusEnumMap[instance.status]!,
  'resolutionNotes': instance.resolutionNotes,
  'resolvedAt': instance.resolvedAt?.toIso8601String(),
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'reportedByUid': instance.reportedByUid,
  'reportedByName': instance.reportedByName,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$EmergencyTypeEnumMap = {
  EmergencyType.fire: 'fire',
  EmergencyType.flood: 'flood',
  EmergencyType.buildingDamage: 'buildingDamage',
  EmergencyType.security: 'security',
  EmergencyType.naturalDisaster: 'naturalDisaster',
  EmergencyType.health: 'health',
  EmergencyType.electricalHazard: 'electricalHazard',
  EmergencyType.waterProblem: 'waterProblem',
  EmergencyType.boundaryWall: 'boundaryWall',
  EmergencyType.other: 'other',
};

const _$EmergencySeverityEnumMap = {
  EmergencySeverity.low: 'low',
  EmergencySeverity.medium: 'medium',
  EmergencySeverity.high: 'high',
  EmergencySeverity.critical: 'critical',
};

const _$EmergencyStatusEnumMap = {
  EmergencyStatus.open: 'open',
  EmergencyStatus.responding: 'responding',
  EmergencyStatus.resolved: 'resolved',
};
