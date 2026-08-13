/// `achievementPercentage = achievedEnrollment / targetEnrollment * 100`,
/// clamped to a sane display range and rounded to 1 decimal. Recomputed
/// here (not trusted from client cache) every time a campaign is saved.
double calculateAchievementPercentage({
  required int targetEnrollment,
  required int currentEnrollment,
}) {
  if (targetEnrollment <= 0) return 0;
  final double raw = (currentEnrollment / targetEnrollment) * 100;
  final double clamped = raw.clamp(0, 999).toDouble();
  return double.parse(clamped.toStringAsFixed(1));
}
