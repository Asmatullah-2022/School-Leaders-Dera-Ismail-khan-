import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/school_functionality_model.dart';

String functionalityStatusLabel(AppLocalizations l10n, FunctionalityStatus s) => switch (s) {
      FunctionalityStatus.functional => l10n.functionality_status_functional,
      FunctionalityStatus.partiallyFunctional => l10n.functionality_status_partiallyFunctional,
      FunctionalityStatus.needsAttention => l10n.functionality_status_needsAttention,
      FunctionalityStatus.nonFunctional => l10n.functionality_status_nonFunctional,
    };

Color functionalityStatusColor(FunctionalityStatus s) => switch (s) {
      FunctionalityStatus.functional => Colors.green,
      FunctionalityStatus.partiallyFunctional => Colors.orange,
      FunctionalityStatus.needsAttention => Colors.deepOrange,
      FunctionalityStatus.nonFunctional => Colors.red,
    };
