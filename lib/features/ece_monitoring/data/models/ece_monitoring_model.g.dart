// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ece_monitoring_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EceMonitoringModel _$EceMonitoringModelFromJson(Map<String, dynamic> json) => _EceMonitoringModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  visitDate: DateTime.parse(json['visitDate'] as String),
  eceRoomAvailable: json['eceRoomAvailable'] as bool? ?? false,
  functional: json['functional'] as bool? ?? false,
  teacherAvailable: json['teacherAvailable'] as bool? ?? false,
  furnitureAdequate: json['furnitureAdequate'] as bool? ?? false,
  learningMaterialsAvailable: json['learningMaterialsAvailable'] as bool? ?? false,
  toysAvailable: json['toysAvailable'] as bool? ?? false,
  learningCornersSetUp: json['learningCornersSetUp'] as bool? ?? false,
  decorationAdequate: json['decorationAdequate'] as bool? ?? false,
  cleanlinessSatisfactory: json['cleanlinessSatisfactory'] as bool? ?? false,
  safetySatisfactory: json['safetySatisfactory'] as bool? ?? false,
  childrenEnrolled: (json['childrenEnrolled'] as num?)?.toInt() ?? 0,
  childrenPresent: (json['childrenPresent'] as num?)?.toInt() ?? 0,
  status: $enumDecodeNullable(_$EceStatusEnumMap, json['status']) ?? EceStatus.needsImprovement,
  remarks: json['remarks'] as String?,
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$EceMonitoringModelToJson(_EceMonitoringModel instance) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'visitDate': instance.visitDate.toIso8601String(),
  'eceRoomAvailable': instance.eceRoomAvailable,
  'functional': instance.functional,
  'teacherAvailable': instance.teacherAvailable,
  'furnitureAdequate': instance.furnitureAdequate,
  'learningMaterialsAvailable': instance.learningMaterialsAvailable,
  'toysAvailable': instance.toysAvailable,
  'learningCornersSetUp': instance.learningCornersSetUp,
  'decorationAdequate': instance.decorationAdequate,
  'cleanlinessSatisfactory': instance.cleanlinessSatisfactory,
  'safetySatisfactory': instance.safetySatisfactory,
  'childrenEnrolled': instance.childrenEnrolled,
  'childrenPresent': instance.childrenPresent,
  'status': _$EceStatusEnumMap[instance.status]!,
  'remarks': instance.remarks,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$EceStatusEnumMap = {
  EceStatus.good: 'good',
  EceStatus.needsImprovement: 'needsImprovement',
  EceStatus.critical: 'critical',
};
