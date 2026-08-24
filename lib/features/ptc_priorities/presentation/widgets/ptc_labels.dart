import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/models/ptc_priority_model.dart';

String ptcCategoryLabel(AppLocalizations l10n, PtcCategory c) => switch (c) {
      PtcCategory.furniture => l10n.ptc_category_furniture,
      PtcCategory.buildingRepair => l10n.ptc_category_buildingRepair,
      PtcCategory.water => l10n.ptc_category_water,
      PtcCategory.toilets => l10n.ptc_category_toilets,
      PtcCategory.boundaryWall => l10n.ptc_category_boundaryWall,
      PtcCategory.electricity => l10n.ptc_category_electricity,
      PtcCategory.classroom => l10n.ptc_category_classroom,
      PtcCategory.ece => l10n.ptc_category_ece,
      PtcCategory.cleanliness => l10n.ptc_category_cleanliness,
      PtcCategory.plantation => l10n.ptc_category_plantation,
      PtcCategory.learningMaterials => l10n.ptc_category_learningMaterials,
      PtcCategory.other => l10n.ptc_category_other,
    };

String ptcStatusLabel(AppLocalizations l10n, PtcStatus s) => switch (s) {
      PtcStatus.proposed => l10n.ptc_status_proposed,
      PtcStatus.approved => l10n.ptc_status_approved,
      PtcStatus.inProgress => l10n.ptc_status_inProgress,
      PtcStatus.completed => l10n.ptc_status_completed,
    };

String ptcPriorityLevelLabel(AppLocalizations l10n, PtcPriorityLevel p) => switch (p) {
      PtcPriorityLevel.low => l10n.priority_low,
      PtcPriorityLevel.medium => l10n.priority_medium,
      PtcPriorityLevel.high => l10n.priority_high,
      PtcPriorityLevel.critical => l10n.priority_critical,
    };

Color ptcStatusColor(PtcStatus s) => switch (s) {
      PtcStatus.proposed => AppColors.neutralGrayMid,
      PtcStatus.approved => AppColors.infoBlue,
      PtcStatus.inProgress => AppColors.warningAmber,
      PtcStatus.completed => AppColors.success,
    };
