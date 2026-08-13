// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonitoringConfigModel _$MonitoringConfigModelFromJson(
  Map<String, dynamic> json,
) => _MonitoringConfigModel(
  criteria: (json['criteria'] as List<dynamic>)
      .map((e) => ScoringCriterionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  gradeBands: (json['gradeBands'] as List<dynamic>)
      .map((e) => GradeBandModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  updatedBy: json['updatedBy'] as String?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$MonitoringConfigModelToJson(
  _MonitoringConfigModel instance,
) => <String, dynamic>{
  'criteria': instance.criteria,
  'gradeBands': instance.gradeBands,
  'updatedBy': instance.updatedBy,
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
