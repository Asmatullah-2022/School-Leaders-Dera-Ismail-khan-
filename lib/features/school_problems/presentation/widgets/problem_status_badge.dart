import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/models/school_problem_model.dart';

class ProblemStatusBadge extends StatelessWidget {
  const ProblemStatusBadge({super.key, required this.status});

  final ProblemStatus status;

  static String label(AppLocalizations l10n, ProblemStatus status) => switch (status) {
        ProblemStatus.open => l10n.problem_status_open,
        ProblemStatus.inProgress => l10n.problem_status_inProgress,
        ProblemStatus.resolved => l10n.problem_status_resolved,
        ProblemStatus.closed => l10n.problem_status_closed,
      };

  static Color color(ProblemStatus status) => switch (status) {
        ProblemStatus.open => AppColors.criticalRed,
        ProblemStatus.inProgress => AppColors.warningAmber,
        ProblemStatus.resolved => AppColors.success,
        ProblemStatus.closed => AppColors.neutralGrayMid,
      };

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Chip(
      label: Text(label(l10n, status), style: const TextStyle(color: Colors.white, fontSize: 12)),
      backgroundColor: color(status),
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
    );
  }
}
