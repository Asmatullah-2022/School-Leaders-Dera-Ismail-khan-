import '../../data/models/scoring_criterion_model.dart';

class WeightedScoreResult {
  const WeightedScoreResult({required this.totalScore, required this.grade});
  final double totalScore;
  final String grade;
}

/// `totalWeightedScore = Σ(normalizedScore × weight) / Σ(weight) × 100`
/// where `normalizedScore = achievedScore / maxScore` per criterion.
/// Weights are relative (need not sum to exactly 100 — the division by
/// `Σ(weight)` normalizes them regardless), which is what lets an admin
/// tune `monitoring_config/weights` without every edit having to re-balance
/// to a round 100.
double calculateWeightedScore(List<CriterionScoreModel> criteriaScores) {
  if (criteriaScores.isEmpty) return 0;
  final double totalWeight = criteriaScores.fold(0.0, (sum, c) => sum + c.weight);
  if (totalWeight <= 0) return 0;

  double weightedSum = 0;
  for (final CriterionScoreModel c in criteriaScores) {
    final double normalized = c.maxScore > 0 ? (c.achievedScore / c.maxScore).clamp(0, 1) : 0;
    weightedSum += normalized * c.weight;
  }
  final double result = (weightedSum / totalWeight) * 100;
  return double.parse(result.clamp(0, 100).toStringAsFixed(1));
}

/// Locates which configured [GradeBandModel] a score falls into, clamping to
/// the top/bottom band if the score is outside every band's range (should
/// not normally happen since scores are 0-100, but bands are admin-editable).
String resolveGrade(double score, List<GradeBandModel> bands) {
  if (bands.isEmpty) return 'critical';
  final List<GradeBandModel> sorted = List<GradeBandModel>.from(bands)
    ..sort((a, b) => a.minScore.compareTo(b.minScore));
  for (final GradeBandModel band in sorted) {
    if (score >= band.minScore && score <= band.maxScore) return band.grade;
  }
  if (score > sorted.last.maxScore) return sorted.last.grade;
  return sorted.first.grade;
}

WeightedScoreResult calculateMonitoringScore(
  List<CriterionScoreModel> criteriaScores,
  List<GradeBandModel> gradeBands,
) {
  final double score = calculateWeightedScore(criteriaScores);
  return WeightedScoreResult(totalScore: score, grade: resolveGrade(score, gradeBands));
}
