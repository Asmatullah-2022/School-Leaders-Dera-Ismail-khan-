import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

class GradeBadge extends StatelessWidget {
  const GradeBadge({super.key, required this.grade, required this.score});

  final String grade;
  final double score;

  static String label(AppLocalizations l10n, String grade) => switch (grade) {
        'excellent' => l10n.monitoring_grade_excellent,
        'veryGood' => l10n.monitoring_grade_veryGood,
        'good' => l10n.monitoring_grade_good,
        'needsImprovement' => l10n.monitoring_grade_needsImprovement,
        _ => l10n.monitoring_grade_critical,
      };

  static Color color(String grade) => switch (grade) {
        'excellent' => AppColors.success,
        'veryGood' => AppColors.primaryGreen,
        'good' => AppColors.infoBlue,
        'needsImprovement' => AppColors.warningAmber,
        _ => AppColors.criticalRed,
      };

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color c = color(grade);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(color: c, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '${score.toStringAsFixed(1)}%',
            style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(label(l10n, grade), style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
