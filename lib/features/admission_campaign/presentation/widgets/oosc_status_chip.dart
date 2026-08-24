import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/models/oosc_record_model.dart';

class OoscStatusChip extends StatelessWidget {
  const OoscStatusChip({super.key, required this.status});

  final OoscStatus status;

  static String label(AppLocalizations l10n, OoscStatus status) => switch (status) {
    OoscStatus.identified => l10n.oosc_status_identified,
    OoscStatus.contacted => l10n.oosc_status_contacted,
    OoscStatus.counseled => l10n.oosc_status_counseled,
    OoscStatus.reenrolled => l10n.oosc_status_reenrolled,
    OoscStatus.notReenrolled => l10n.oosc_status_notReenrolled,
    OoscStatus.followUpRequired => l10n.oosc_status_followUpRequired,
  };

  static Color color(OoscStatus status) => switch (status) {
    OoscStatus.reenrolled => AppColors.success,
    OoscStatus.notReenrolled => AppColors.criticalRed,
    OoscStatus.followUpRequired => AppColors.warningAmber,
    OoscStatus.identified || OoscStatus.contacted || OoscStatus.counseled => AppColors.infoBlue,
  };

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final Color c = color(status);
    return Chip(
      label: Text(label(l10n, status), style: const TextStyle(color: Colors.white, fontSize: 12)),
      backgroundColor: c,
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
    );
  }
}
