// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plantation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantationModel _$PlantationModelFromJson(Map<String, dynamic> json) => _PlantationModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  plantationDate: DateTime.parse(json['plantationDate'] as String),
  treesPlanted: (json['treesPlanted'] as num?)?.toInt() ?? 0,
  treeTypes:
      (json['treeTypes'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
  studentsInvolved: (json['studentsInvolved'] as num?)?.toInt() ?? 0,
  teachersInvolved: (json['teachersInvolved'] as num?)?.toInt() ?? 0,
  communityMembersInvolved: (json['communityMembersInvolved'] as num?)?.toInt() ?? 0,
  location: json['location'] as String?,
  survivalRatePercent: (json['survivalRatePercent'] as num?)?.toDouble(),
  remarks: json['remarks'] as String?,
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$PlantationModelToJson(_PlantationModel instance) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'plantationDate': instance.plantationDate.toIso8601String(),
  'treesPlanted': instance.treesPlanted,
  'treeTypes': instance.treeTypes,
  'studentsInvolved': instance.studentsInvolved,
  'teachersInvolved': instance.teachersInvolved,
  'communityMembersInvolved': instance.communityMembersInvolved,
  'location': instance.location,
  'survivalRatePercent': instance.survivalRatePercent,
  'remarks': instance.remarks,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};
