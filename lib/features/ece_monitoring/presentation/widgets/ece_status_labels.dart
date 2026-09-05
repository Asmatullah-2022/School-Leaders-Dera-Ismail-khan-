import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/ece_monitoring_model.dart';

String eceStatusLabel(AppLocalizations l10n, EceStatus s) => switch (s) {
  EceStatus.good => l10n.ece_status_good,
  EceStatus.needsImprovement => l10n.ece_status_needsImprovement,
  EceStatus.critical => l10n.ece_status_critical,
};

Color eceStatusColor(EceStatus s) => switch (s) {
  EceStatus.good => Colors.green,
  EceStatus.needsImprovement => Colors.orange,
  EceStatus.critical => Colors.red,
};
