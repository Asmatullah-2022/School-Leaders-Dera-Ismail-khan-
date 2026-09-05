// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatementModel _$StatementModelFromJson(Map<String, dynamic> json) => _StatementModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  statementType: json['statementType'] as String,
  period: json['period'] as String,
  periodStart: DateTime.parse(json['periodStart'] as String),
  periodEnd: json['periodEnd'] == null ? null : DateTime.parse(json['periodEnd'] as String),
  data: json['data'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  status: $enumDecodeNullable(_$StatementStatusEnumMap, json['status']) ?? StatementStatus.draft,
  submittedByUid: json['submittedByUid'] as String?,
  submittedAt: json['submittedAt'] == null ? null : DateTime.parse(json['submittedAt'] as String),
  reviewedByUid: json['reviewedByUid'] as String?,
  reviewedAt: json['reviewedAt'] == null ? null : DateTime.parse(json['reviewedAt'] as String),
  reviewNotes: json['reviewNotes'] as String?,
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$StatementModelToJson(_StatementModel instance) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'statementType': instance.statementType,
  'period': instance.period,
  'periodStart': instance.periodStart.toIso8601String(),
  'periodEnd': instance.periodEnd?.toIso8601String(),
  'data': instance.data,
  'status': _$StatementStatusEnumMap[instance.status]!,
  'submittedByUid': instance.submittedByUid,
  'submittedAt': instance.submittedAt?.toIso8601String(),
  'reviewedByUid': instance.reviewedByUid,
  'reviewedAt': instance.reviewedAt?.toIso8601String(),
  'reviewNotes': instance.reviewNotes,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$StatementStatusEnumMap = {
  StatementStatus.draft: 'draft',
  StatementStatus.submitted: 'submitted',
  StatementStatus.underReview: 'underReview',
  StatementStatus.approved: 'approved',
  StatementStatus.returned: 'returned',
};
