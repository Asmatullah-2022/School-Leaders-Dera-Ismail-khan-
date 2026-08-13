import 'package:freezed_annotation/freezed_annotation.dart';

part 'scoring_criterion_model.freezed.dart';
part 'scoring_criterion_model.g.dart';

/// A single weighted criterion, as configured by an admin in
/// `config/monitoring_weights`. Reports snapshot these (see
/// [CriterionScoreModel]) rather than referencing them live, so a later
/// weight change never rewrites the meaning of a historical report.
@freezed
abstract class ScoringCriterionModel with _$ScoringCriterionModel {
  const factory ScoringCriterionModel({
    required String id,
    required String label,
    String? labelUrdu,
    required double weight,
    @Default(100.0) double maxScore,
  }) = _ScoringCriterionModel;

  factory ScoringCriterionModel.fromJson(Map<String, dynamic> json) =>
      _$ScoringCriterionModelFromJson(json);
}

@freezed
abstract class GradeBandModel with _$GradeBandModel {
  const factory GradeBandModel({
    required String grade,
    required double minScore,
    required double maxScore,
  }) = _GradeBandModel;

  factory GradeBandModel.fromJson(Map<String, dynamic> json) => _$GradeBandModelFromJson(json);
}

/// A criterion as scored on one specific report — a snapshot of the
/// [ScoringCriterionModel] that was active at report-creation time, plus the
/// score the monitor entered.
@freezed
abstract class CriterionScoreModel with _$CriterionScoreModel {
  const factory CriterionScoreModel({
    required String criterionId,
    required String label,
    String? labelUrdu,
    required double weight,
    required double maxScore,
    @Default(0.0) double achievedScore,
  }) = _CriterionScoreModel;

  factory CriterionScoreModel.fromJson(Map<String, dynamic> json) =>
      _$CriterionScoreModelFromJson(json);
}
