import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/cluster_meeting_model.dart';
import '../widgets/meeting_status_labels.dart';
import 'cluster_meeting_detail_screen.dart';
import 'cluster_meeting_form_screen.dart';

class ClusterMeetingListScreen extends ConsumerWidget {
  const ClusterMeetingListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<ClusterMeetingModel>> async = ref.watch(scopedClusterMeetingsProvider);

    return AppScaffold(
      title: l10n.more_clusterMeetings,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const ClusterMeetingFormScreen()),
        ),
        icon: const Icon(Icons.add),
        label: Text(l10n.clusterMeeting_addMeeting),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<ClusterMeetingModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.clusterMeeting_noMeetings, icon: Icons.groups_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final ClusterMeetingModel m = items[index];
              return Card(
                child: ListTile(
                  title: Text(m.venue ?? DateFormat.yMMMd().format(m.meetingDate)),
                  subtitle: Text(m.chairperson ?? ''),
                  leading: CircleAvatar(
                    backgroundColor: meetingStatusColor(m.status).withValues(alpha: 0.15),
                    child: Icon(Icons.event_outlined, color: meetingStatusColor(m.status)),
                  ),
                  trailing: Text(DateFormat.yMMMd().format(m.meetingDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => ClusterMeetingDetailScreen(meetingId: m.id)),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
