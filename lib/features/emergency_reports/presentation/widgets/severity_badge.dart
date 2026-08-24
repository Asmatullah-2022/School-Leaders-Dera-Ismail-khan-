import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/models/emergency_report_model.dart';

class SeverityBadge extends StatelessWidget {
  const SeverityBadge({super.key, required this.severity});

  final EmergencySeverity severity;

  static String label(AppLocalizations l10n, EmergencySeverity s) => switch (s) {
    EmergencySeverity.low => l10n.priority_low,
    EmergencySeverity.medium => l10n.priority_medium,
    EmergencySeverity.high => l10n.priority_high,
    EmergencySeverity.critical => l10n.priority_critical,
  };

  static Color color(EmergencySeverity s) => switch (s) {
    EmergencySeverity.low => AppColors.success,
    EmergencySeverity.medium => AppColors.infoBlue,
    EmergencySeverity.high => const Color(0xFFE64A19),
    EmergencySeverity.critical => AppColors.criticalRed,
  };

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Chip(
      label: Text(label(l10n, severity), style: const TextStyle(color: Colors.white, fontSize: 12)),
      backgroundColor: color(severity),
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
    );
  }
}

/// Shared display strings for emergency type + status, so the form, list, and
/// detail screens never drift apart.
String emergencyTypeLabel(AppLocalizations l10n, EmergencyType t) => switch (t) {
  EmergencyType.fire => l10n.emergency_type_fire,
  EmergencyType.flood => l10n.emergency_type_flood,
  EmergencyType.buildingDamage => l10n.emergency_type_buildingDamage,
  EmergencyType.security => l10n.emergency_type_security,
  EmergencyType.naturalDisaster => l10n.emergency_type_naturalDisaster,
  EmergencyType.health => l10n.emergency_type_health,
  EmergencyType.electricalHazard => l10n.emergency_type_electricalHazard,
  EmergencyType.waterProblem => l10n.emergency_type_waterProblem,
  EmergencyType.boundaryWall => l10n.emergency_type_boundaryWall,
  EmergencyType.other => l10n.emergency_type_other,
};

String emergencyStatusLabel(AppLocalizations l10n, EmergencyStatus s) => switch (s) {
  EmergencyStatus.open => l10n.emergency_status_open,
  EmergencyStatus.responding => l10n.emergency_status_responding,
  EmergencyStatus.resolved => l10n.emergency_status_resolved,
};
