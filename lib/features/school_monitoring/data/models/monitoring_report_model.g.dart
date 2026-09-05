// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonitoringReportModel _$MonitoringReportModelFromJson(Map<String, dynamic> json) =>
    _MonitoringReportModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      visitDate: DateTime.parse(json['visitDate'] as String),
      monitoredByUid: json['monitoredByUid'] as String,
      monitoredByName: json['monitoredByName'] as String,
      criteriaScores: (json['criteriaScores'] as List<dynamic>)
          .map((e) => CriterionScoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWeightedScore: (json['totalWeightedScore'] as num?)?.toDouble() ?? 0.0,
      grade: json['grade'] as String? ?? 'critical',
      remarks: json['remarks'] as String?,
      remarksUrdu: json['remarksUrdu'] as String?,
      evidencePhotoUrls:
          (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      status:
          $enumDecodeNullable(_$MonitoringReportStatusEnumMap, json['status']) ??
          MonitoringReportStatus.draft,
      isSynced: json['isSynced'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$MonitoringReportModelToJson(_MonitoringReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'visitDate': instance.visitDate.toIso8601String(),
      'monitoredByUid': instance.monitoredByUid,
      'monitoredByName': instance.monitoredByName,
      'criteriaScores': instance.criteriaScores,
      'totalWeightedScore': instance.totalWeightedScore,
      'grade': instance.grade,
      'remarks': instance.remarks,
      'remarksUrdu': instance.remarksUrdu,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'status': _$MonitoringReportStatusEnumMap[instance.status]!,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };

const _$MonitoringReportStatusEnumMap = {
  MonitoringReportStatus.draft: 'draft',
  MonitoringReportStatus.submitted: 'submitted',
};
