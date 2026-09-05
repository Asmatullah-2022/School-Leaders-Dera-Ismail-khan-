import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/statement_model.dart';
import '../../domain/usecases/statement_status_transitions.dart';
import '../widgets/statement_status_labels.dart';
import 'statement_form_screen.dart';

class StatementDetailScreen extends ConsumerWidget {
  const StatementDetailScreen({super.key, required this.statementId});

  final String statementId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<StatementModel?> async = ref.watch(statementByIdProvider(statementId));
    final role = ref.watch(currentRoleProvider);

    return AppScaffold(
      title: l10n.statement_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (StatementModel? s) => (s == null || !s.isEditable)
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(
                    context,
                  ).push(MaterialPageRoute<void>(builder: (_) => StatementFormScreen(existing: s))),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (StatementModel? s) {
          if (s == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '${s.statementType} · ${s.period}',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Chip(
                    label: Text(statementStatusLabel(l10n, s.status)),
                    backgroundColor: statementStatusColor(s.status).withValues(alpha: 0.15),
                    labelStyle: TextStyle(color: statementStatusColor(s.status)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _row(context, l10n.statement_periodStart, DateFormat.yMMMd().format(s.periodStart)),
              if (s.periodEnd != null)
                _row(context, l10n.statement_periodEnd, DateFormat.yMMMd().format(s.periodEnd!)),
              if (s.submittedAt != null)
                _row(
                  context,
                  l10n.statement_submittedAt,
                  DateFormat.yMMMd().format(s.submittedAt!),
                ),
              if (s.reviewedAt != null)
                _row(context, l10n.statement_reviewedAt, DateFormat.yMMMd().format(s.reviewedAt!)),
              if (s.reviewNotes != null) _row(context, l10n.statement_reviewNotes, s.reviewNotes!),
              if (s.data.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.statement_dataFields, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                for (final MapEntry<String, dynamic> entry in s.data.entries)
                  _row(context, entry.key, '${entry.value}'),
              ],
              if (s.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in s.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ],
              const SizedBox(height: 24),
              if (s.isEditable)
                FilledButton.icon(
                  onPressed: () => _submitForReview(context, ref, s),
                  icon: const Icon(Icons.send_outlined),
                  label: Text(l10n.statement_submit),
                ),
              if (canReviewStatement(role)) ...<Widget>[
                for (final StatementStatus next in nextReviewerStatuses(s.status))
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: OutlinedButton(
                      onPressed: () => next == StatementStatus.returned
                          ? _returnWithNotes(context, ref, s)
                          : _updateStatus(ref, s, next),
                      child: Text(statementStatusLabel(l10n, next)),
                    ),
                  ),
              ],
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

  Future<void> _submitForReview(BuildContext context, WidgetRef ref, StatementModel s) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    await ref
        .read(statementRepositoryProvider)
        .update(
          s.copyWith(
            status: StatementStatus.submitted,
            submittedByUid: uid,
            submittedAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
    if (context.mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(l10n.common_success_submitted)));
    }
  }

  Future<void> _updateStatus(WidgetRef ref, StatementModel s, StatementStatus next) async {
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    await ref
        .read(statementRepositoryProvider)
        .update(
          s.copyWith(
            status: next,
            reviewedByUid: uid,
            reviewedAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
  }

  Future<void> _returnWithNotes(BuildContext context, WidgetRef ref, StatementModel s) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final TextEditingController notesController = TextEditingController();
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: Text(l10n.statement_status_returned),
        content: AppTextField(
          label: l10n.statement_reviewNotes,
          controller: notesController,
          maxLines: 3,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.common_cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.common_confirm),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    await ref
        .read(statementRepositoryProvider)
        .update(
          s.copyWith(
            status: StatementStatus.returned,
            reviewedByUid: uid,
            reviewedAt: DateTime.now(),
            reviewNotes: notesController.text.trim().isEmpty ? null : notesController.text.trim(),
            updatedAt: DateTime.now(),
          ),
        );
  }
}
