import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../../core/error/failure.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/cluster_meeting_model.dart';
import 'meeting_status_labels.dart';

/// Read-write list of action items agreed at a cluster meeting, embedded in
/// [ClusterMeetingDetailScreen]. Backed directly by the
/// `cluster_meetings/{meetingId}/meeting_actions` subcollection.
class MeetingActionsSection extends ConsumerWidget {
  const MeetingActionsSection({super.key, required this.meetingId});

  final String meetingId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<MeetingActionModel>> async = ref.watch(meetingActionsProvider(meetingId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(l10n.clusterMeeting_actionsTitle, style: Theme.of(context).textTheme.titleSmall),
            TextButton.icon(
              onPressed: () => _showAddActionDialog(context, ref),
              icon: const Icon(Icons.add, size: 18),
              label: Text(l10n.clusterMeeting_addAction),
            ),
          ],
        ),
        async.when(
          loading: () => const LoadingIndicator(),
          error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
          data: (List<MeetingActionModel> actions) {
            if (actions.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: EmptyState(
                  message: l10n.clusterMeeting_noActions,
                  icon: Icons.checklist_outlined,
                ),
              );
            }
            return Column(
              children: <Widget>[
                for (final MeetingActionModel action in actions)
                  Card(
                    child: ListTile(
                      title: Text(action.actionText),
                      subtitle: Text(
                        <String>[
                          if (action.responsiblePersonName != null) action.responsiblePersonName!,
                          if (action.deadline != null) DateFormat.yMMMd().format(action.deadline!),
                        ].join(' · '),
                      ),
                      trailing: DropdownButton<MeetingStatus>(
                        value: action.status,
                        underline: const SizedBox.shrink(),
                        items: MeetingStatus.values
                            .map(
                              (s) => DropdownMenuItem<MeetingStatus>(
                                value: s,
                                child: Text(
                                  meetingStatusLabel(l10n, s),
                                  style: TextStyle(color: meetingStatusColor(s)),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (MeetingStatus? s) {
                          if (s == null) return;
                          ref
                              .read(meetingActionRepositoryProvider)
                              .save(
                                meetingId,
                                action.copyWith(status: s, updatedAt: DateTime.now()),
                              );
                        },
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }

  Future<void> _showAddActionDialog(BuildContext context, WidgetRef ref) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final TextEditingController textController = TextEditingController();
    final TextEditingController personController = TextEditingController();
    DateTime? deadline;

    await showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setDialogState) {
            return AlertDialog(
              title: Text(l10n.clusterMeeting_addAction),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AppTextField(
                    label: l10n.clusterMeeting_actionText,
                    controller: textController,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 12),
                  AppTextField(
                    label: l10n.clusterMeeting_responsiblePerson,
                    controller: personController,
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2015),
                        lastDate: DateTime(2100),
                      );
                      if (picked != null) setDialogState(() => deadline = picked);
                    },
                    child: InputDecorator(
                      decoration: InputDecoration(labelText: l10n.clusterMeeting_deadline),
                      child: Text(
                        deadline == null
                            ? l10n.common_selectOption
                            : DateFormat.yMMMd().format(deadline!),
                      ),
                    ),
                  ),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  child: Text(l10n.common_cancel),
                ),
                FilledButton(
                  onPressed: () {
                    if (textController.text.trim().isEmpty) return;
                    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
                    final DateTime now = DateTime.now();
                    final MeetingActionModel action = MeetingActionModel(
                      id: OfflineWriteHelper.newId(),
                      meetingId: meetingId,
                      actionText: textController.text.trim(),
                      responsiblePersonName: personController.text.trim().isEmpty
                          ? null
                          : personController.text.trim(),
                      deadline: deadline,
                      createdAt: now,
                      updatedAt: now,
                      createdBy: uid,
                    );
                    ref.read(meetingActionRepositoryProvider).save(meetingId, action);
                    Navigator.of(dialogContext).pop();
                  },
                  child: Text(l10n.common_save),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
