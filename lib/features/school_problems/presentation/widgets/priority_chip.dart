import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/models/school_problem_model.dart';

class PriorityChip extends StatelessWidget {
  const PriorityChip({super.key, required this.priority});

  final ProblemPriority priority;

  static String label(AppLocalizations l10n, ProblemPriority p) => switch (p) {
    ProblemPriority.low => l10n.priority_low,
    ProblemPriority.medium => l10n.priority_medium,
    ProblemPriority.high => l10n.priority_high,
    ProblemPriority.critical => l10n.priority_critical,
  };

  static Color color(ProblemPriority p) => switch (p) {
    ProblemPriority.low => AppColors.success,
    ProblemPriority.medium => AppColors.infoBlue,
    ProblemPriority.high => AppColors.warningAmber,
    ProblemPriority.critical => AppColors.criticalRed,
  };

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color c = color(priority);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: c.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label(l10n, priority),
        style: TextStyle(color: c, fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
