import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// intl also exports a `TextDirection`, which would shadow Flutter's and break
// the `Directionality.of(context)` comparison below.
import 'package:intl/intl.dart' hide TextDirection;

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/notification_model.dart';
import '../providers/notification_providers.dart';

class NotificationListScreen extends ConsumerWidget {
  const NotificationListScreen({super.key});

  static IconData iconFor(AppNotificationType type) => switch (type) {
    AppNotificationType.emergency => Icons.emergency_outlined,
    AppNotificationType.problem => Icons.report_problem_outlined,
    AppNotificationType.assignment => Icons.assignment_ind_outlined,
    AppNotificationType.reportPending => Icons.pending_actions_outlined,
    AppNotificationType.reportReturned => Icons.undo,
    AppNotificationType.reportApproved => Icons.check_circle_outline,
    AppNotificationType.deadline => Icons.schedule_outlined,
    AppNotificationType.meeting => Icons.event_note_outlined,
    AppNotificationType.announcement => Icons.campaign_outlined,
    AppNotificationType.system => Icons.info_outline,
  };

  static Color colorFor(AppNotificationType type) => switch (type) {
    AppNotificationType.emergency => AppColors.criticalRed,
    AppNotificationType.problem => AppColors.warningAmber,
    AppNotificationType.reportApproved => AppColors.success,
    _ => AppColors.infoBlue,
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<NotificationModel>> async = ref.watch(myNotificationsProvider);
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;
    final String? uid = ref.watch(currentUserProvider).valueOrNull?.uid;

    return AppScaffold(
      title: l10n.more_notifications,
      actions: <Widget>[
        if (uid != null)
          IconButton(
            icon: const Icon(Icons.done_all),
            tooltip: l10n.common_done,
            onPressed: () => ref.read(notificationRepositoryProvider).markAllRead(uid),
          ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (_, _) => EmptyState(message: l10n.common_error_unknown, icon: Icons.error_outline),
        data: (List<NotificationModel> items) {
          if (items.isEmpty) {
            return EmptyState(
              message: l10n.notifications_empty,
              icon: Icons.notifications_none_outlined,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: items.length,
            separatorBuilder: (_, _) => const Divider(height: 1),
            itemBuilder: (BuildContext context, int index) {
              final NotificationModel n = items[index];
              // Prefer the Urdu copy when the app is in Urdu and one exists.
              final String title = (isRtl && n.titleUrdu != null) ? n.titleUrdu! : n.title;
              final String body = (isRtl && n.bodyUrdu != null) ? n.bodyUrdu! : n.body;
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: colorFor(n.type).withValues(alpha: 0.15),
                  child: Icon(iconFor(n.type), color: colorFor(n.type), size: 20),
                ),
                title: Text(
                  title,
                  style: TextStyle(fontWeight: n.isRead ? FontWeight.normal : FontWeight.bold),
                ),
                subtitle: Text(body, maxLines: 2, overflow: TextOverflow.ellipsis),
                trailing: Text(
                  DateFormat.MMMd().format(n.createdAt),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                onTap: n.isRead
                    ? null
                    : () => ref.read(notificationRepositoryProvider).markRead(n.id),
              );
            },
          );
        },
      ),
    );
  }
}
