import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';

/// Target vs Achievement progress bar with a percentage readout, used on
/// both the campaign form (live preview) and list/detail screens.
class AchievementGauge extends StatelessWidget {
  const AchievementGauge({
    super.key,
    required this.target,
    required this.achieved,
    required this.percentage,
  });

  final int target;
  final int achieved;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final double fraction = (percentage / 100).clamp(0, 1);
    final Color barColor = percentage >= 100
        ? AppColors.success
        : (percentage >= 60 ? AppColors.warningAmber : AppColors.criticalRed);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('${l10n.admission_target}: $target', style: Theme.of(context).textTheme.bodySmall),
            Text(
              '${percentage.toStringAsFixed(1)}%',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: barColor),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: fraction,
            minHeight: 10,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
            valueColor: AlwaysStoppedAnimation<Color>(barColor),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${l10n.admission_achieved}: $achieved',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
