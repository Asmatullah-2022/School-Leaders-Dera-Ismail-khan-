import 'package:flutter/material.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/coming_soon_screen.dart';

/// Full in-app notification list + FCM wiring lands in a later build step;
/// this keeps the notification bell icon navigable in the meantime.
class NotificationListScreen extends StatelessWidget {
  const NotificationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return ComingSoonScreen(title: l10n.more_notifications);
  }
}
