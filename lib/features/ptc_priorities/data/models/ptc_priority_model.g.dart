// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ptc_priority_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PtcPriorityModel _$PtcPriorityModelFromJson(Map<String, dynamic> json) => _PtcPriorityModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  meetingDate: DateTime.parse(json['meetingDate'] as String),
  priorityTitle: json['priorityTitle'] as String,
  priorityTitleUrdu: json['priorityTitleUrdu'] as String?,
  rank: (json['rank'] as num?)?.toInt() ?? 1,
  category: $enumDecode(_$PtcCategoryEnumMap, json['category']),
  priorityLevel:
      $enumDecodeNullable(_$PtcPriorityLevelEnumMap, json['priorityLevel']) ??
      PtcPriorityLevel.medium,
  proposedAction: json['proposedAction'] as String?,
  estimatedCost: (json['estimatedCost'] as num?)?.toDouble() ?? 0,
  availableFunds: (json['availableFunds'] as num?)?.toDouble() ?? 0,
  decision: json['decision'] as String?,
  responsiblePersonName: json['responsiblePersonName'] as String?,
  targetDate: json['targetDate'] == null ? null : DateTime.parse(json['targetDate'] as String),
  status: $enumDecodeNullable(_$PtcStatusEnumMap, json['status']) ?? PtcStatus.proposed,
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$PtcPriorityModelToJson(_PtcPriorityModel instance) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'meetingDate': instance.meetingDate.toIso8601String(),
  'priorityTitle': instance.priorityTitle,
  'priorityTitleUrdu': instance.priorityTitleUrdu,
  'rank': instance.rank,
  'category': _$PtcCategoryEnumMap[instance.category]!,
  'priorityLevel': _$PtcPriorityLevelEnumMap[instance.priorityLevel]!,
  'proposedAction': instance.proposedAction,
  'estimatedCost': instance.estimatedCost,
  'availableFunds': instance.availableFunds,
  'decision': instance.decision,
  'responsiblePersonName': instance.responsiblePersonName,
  'targetDate': instance.targetDate?.toIso8601String(),
  'status': _$PtcStatusEnumMap[instance.status]!,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$PtcCategoryEnumMap = {
  PtcCategory.furniture: 'furniture',
  PtcCategory.buildingRepair: 'buildingRepair',
  PtcCategory.water: 'water',
  PtcCategory.toilets: 'toilets',
  PtcCategory.boundaryWall: 'boundaryWall',
  PtcCategory.electricity: 'electricity',
  PtcCategory.classroom: 'classroom',
  PtcCategory.ece: 'ece',
  PtcCategory.cleanliness: 'cleanliness',
  PtcCategory.plantation: 'plantation',
  PtcCategory.learningMaterials: 'learningMaterials',
  PtcCategory.other: 'other',
};

const _$PtcPriorityLevelEnumMap = {
  PtcPriorityLevel.low: 'low',
  PtcPriorityLevel.medium: 'medium',
  PtcPriorityLevel.high: 'high',
  PtcPriorityLevel.critical: 'critical',
};

const _$PtcStatusEnumMap = {
  PtcStatus.proposed: 'proposed',
  PtcStatus.approved: 'approved',
  PtcStatus.inProgress: 'inProgress',
  PtcStatus.completed: 'completed',
};
