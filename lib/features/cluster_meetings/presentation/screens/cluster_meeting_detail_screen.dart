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
import '../widgets/meeting_actions_section.dart';
import '../widgets/meeting_status_labels.dart';
import 'cluster_meeting_form_screen.dart';

class ClusterMeetingDetailScreen extends ConsumerWidget {
  const ClusterMeetingDetailScreen({super.key, required this.meetingId});

  final String meetingId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<ClusterMeetingModel?> async = ref.watch(clusterMeetingByIdProvider(meetingId));

    return AppScaffold(
      title: l10n.more_clusterMeetings,
      actions: <Widget>[
        async.maybeWhen(
          data: (ClusterMeetingModel? m) => m == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => ClusterMeetingFormScreen(existing: m)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (ClusterMeetingModel? m) {
          if (m == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      m.venue ?? DateFormat.yMMMd().format(m.meetingDate),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Chip(
                    label: Text(meetingStatusLabel(l10n, m.status)),
                    backgroundColor: meetingStatusColor(m.status).withValues(alpha: 0.15),
                    labelStyle: TextStyle(color: meetingStatusColor(m.status)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _row(context, l10n.common_date, DateFormat.yMMMd().format(m.meetingDate)),
              if (m.meetingTime != null)
                _row(context, l10n.clusterMeeting_meetingTime, m.meetingTime!),
              if (m.chairperson != null)
                _row(context, l10n.clusterMeeting_chairperson, m.chairperson!),
              _row(context, l10n.clusterMeeting_participantsCount, '${m.participantsCount}'),
              if (m.agenda != null) _row(context, l10n.clusterMeeting_agenda, m.agenda!),
              if (m.decisions != null) _row(context, l10n.clusterMeeting_decisions, m.decisions!),
              if (m.minutes != null) _row(context, l10n.clusterMeeting_minutes, m.minutes!),
              if (m.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in m.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ],
              const Divider(height: 32),
              MeetingActionsSection(meetingId: meetingId),
            ],
          );
        },
      ),
    );
  }

  Widget _row(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 150, child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
          Expanded(child: Text(value, style: Theme.of(context).textTheme.bodyLarge)),
        ],
      ),
    );
  }
}
