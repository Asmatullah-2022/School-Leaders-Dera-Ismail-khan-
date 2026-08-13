// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scoring_criterion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScoringCriterionModel _$ScoringCriterionModelFromJson(
  Map<String, dynamic> json,
) => _ScoringCriterionModel(
  id: json['id'] as String,
  label: json['label'] as String,
  labelUrdu: json['labelUrdu'] as String?,
  weight: (json['weight'] as num).toDouble(),
  maxScore: (json['maxScore'] as num?)?.toDouble() ?? 100.0,
);

Map<String, dynamic> _$ScoringCriterionModelToJson(
  _ScoringCriterionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'labelUrdu': instance.labelUrdu,
  'weight': instance.weight,
  'maxScore': instance.maxScore,
};

_GradeBandModel _$GradeBandModelFromJson(Map<String, dynamic> json) =>
    _GradeBandModel(
      grade: json['grade'] as String,
      minScore: (json['minScore'] as num).toDouble(),
      maxScore: (json['maxScore'] as num).toDouble(),
    );

Map<String, dynamic> _$GradeBandModelToJson(_GradeBandModel instance) =>
    <String, dynamic>{
      'grade': instance.grade,
      'minScore': instance.minScore,
      'maxScore': instance.maxScore,
    };

_CriterionScoreModel _$CriterionScoreModelFromJson(Map<String, dynamic> json) =>
    _CriterionScoreModel(
      criterionId: json['criterionId'] as String,
      label: json['label'] as String,
      labelUrdu: json['labelUrdu'] as String?,
      weight: (json['weight'] as num).toDouble(),
      maxScore: (json['maxScore'] as num).toDouble(),
      achievedScore: (json['achievedScore'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$CriterionScoreModelToJson(
  _CriterionScoreModel instance,
) => <String, dynamic>{
  'criterionId': instance.criterionId,
  'label': instance.label,
  'labelUrdu': instance.labelUrdu,
  'weight': instance.weight,
  'maxScore': instance.maxScore,
  'achievedScore': instance.achievedScore,
};
