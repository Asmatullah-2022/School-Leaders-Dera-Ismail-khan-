import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../data/models/official_update_model.dart';

String updateCategoryLabel(AppLocalizations l10n, UpdateCategory c) => switch (c) {
  UpdateCategory.announcement => l10n.update_category_announcement,
  UpdateCategory.circular => l10n.update_category_circular,
  UpdateCategory.notification => l10n.update_category_notification,
  UpdateCategory.campaign => l10n.update_category_campaign,
  UpdateCategory.training => l10n.update_category_training,
  UpdateCategory.meeting => l10n.update_category_meeting,
  UpdateCategory.importantDate => l10n.update_category_importantDate,
  UpdateCategory.educationInitiative => l10n.update_category_educationInitiative,
};

String updatePriorityLabel(AppLocalizations l10n, UpdatePriority p) => switch (p) {
  UpdatePriority.normal => l10n.update_priority_normal,
  UpdatePriority.important => l10n.update_priority_important,
  UpdatePriority.urgent => l10n.update_priority_urgent,
};

String updateAudienceLabel(AppLocalizations l10n, UpdateAudience a) => switch (a) {
  UpdateAudience.all => l10n.update_audience_all,
  UpdateAudience.schoolLeaders => l10n.update_audience_schoolLeaders,
  UpdateAudience.monitoringOfficers => l10n.update_audience_monitoringOfficers,
  UpdateAudience.admins => l10n.update_audience_admins,
};

Color updatePriorityColor(UpdatePriority p) => switch (p) {
  UpdatePriority.normal => AppColors.infoBlue,
  UpdatePriority.important => AppColors.warningAmber,
  UpdatePriority.urgent => AppColors.criticalRed,
};
