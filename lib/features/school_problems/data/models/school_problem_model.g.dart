// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_problem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolProblemModel _$SchoolProblemModelFromJson(Map<String, dynamic> json) => _SchoolProblemModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  title: json['title'] as String,
  titleUrdu: json['titleUrdu'] as String?,
  category: $enumDecode(_$ProblemCategoryEnumMap, json['category']),
  description: json['description'] as String,
  descriptionUrdu: json['descriptionUrdu'] as String?,
  priority:
      $enumDecodeNullable(_$ProblemPriorityEnumMap, json['priority']) ?? ProblemPriority.medium,
  dateReported: DateTime.parse(json['dateReported'] as String),
  requiredSupport: json['requiredSupport'] as String?,
  assignedToUid: json['assignedToUid'] as String?,
  assignedToName: json['assignedToName'] as String?,
  expectedResolutionDate: json['expectedResolutionDate'] == null
      ? null
      : DateTime.parse(json['expectedResolutionDate'] as String),
  status: $enumDecodeNullable(_$ProblemStatusEnumMap, json['status']) ?? ProblemStatus.open,
  resolutionNotes: json['resolutionNotes'] as String?,
  resolvedAt: json['resolvedAt'] == null ? null : DateTime.parse(json['resolvedAt'] as String),
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  resolutionEvidenceUrls:
      (json['resolutionEvidenceUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  reportedByUid: json['reportedByUid'] as String,
  reportedByName: json['reportedByName'] as String,
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$SchoolProblemModelToJson(_SchoolProblemModel instance) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'title': instance.title,
  'titleUrdu': instance.titleUrdu,
  'category': _$ProblemCategoryEnumMap[instance.category]!,
  'description': instance.description,
  'descriptionUrdu': instance.descriptionUrdu,
  'priority': _$ProblemPriorityEnumMap[instance.priority]!,
  'dateReported': instance.dateReported.toIso8601String(),
  'requiredSupport': instance.requiredSupport,
  'assignedToUid': instance.assignedToUid,
  'assignedToName': instance.assignedToName,
  'expectedResolutionDate': instance.expectedResolutionDate?.toIso8601String(),
  'status': _$ProblemStatusEnumMap[instance.status]!,
  'resolutionNotes': instance.resolutionNotes,
  'resolvedAt': instance.resolvedAt?.toIso8601String(),
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'resolutionEvidenceUrls': instance.resolutionEvidenceUrls,
  'reportedByUid': instance.reportedByUid,
  'reportedByName': instance.reportedByName,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$ProblemCategoryEnumMap = {
  ProblemCategory.infrastructure: 'infrastructure',
  ProblemCategory.furniture: 'furniture',
  ProblemCategory.water: 'water',
  ProblemCategory.toilets: 'toilets',
  ProblemCategory.boundaryWall: 'boundaryWall',
  ProblemCategory.electricity: 'electricity',
  ProblemCategory.classroom: 'classroom',
  ProblemCategory.ece: 'ece',
  ProblemCategory.cleanliness: 'cleanliness',
  ProblemCategory.staffing: 'staffing',
  ProblemCategory.safety: 'safety',
  ProblemCategory.academic: 'academic',
  ProblemCategory.other: 'other',
};

const _$ProblemPriorityEnumMap = {
  ProblemPriority.low: 'low',
  ProblemPriority.medium: 'medium',
  ProblemPriority.high: 'high',
  ProblemPriority.critical: 'critical',
};

const _$ProblemStatusEnumMap = {
  ProblemStatus.open: 'open',
  ProblemStatus.inProgress: 'inProgress',
  ProblemStatus.resolved: 'resolved',
  ProblemStatus.closed: 'closed',
};
