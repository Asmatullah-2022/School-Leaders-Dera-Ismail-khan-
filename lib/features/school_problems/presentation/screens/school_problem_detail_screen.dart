import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/school_problem_model.dart';
import '../../domain/usecases/problem_status_transitions.dart';
import '../providers/school_problem_providers.dart';
import '../widgets/priority_chip.dart';
import '../widgets/problem_labels.dart';
import '../widgets/problem_status_badge.dart';
import 'school_problem_form_screen.dart';

class SchoolProblemDetailScreen extends ConsumerWidget {
  const SchoolProblemDetailScreen({super.key, required this.problemId});

  final String problemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<SchoolProblemModel?> problemAsync = ref.watch(schoolProblemByIdProvider(problemId));
    final AppRole? role = ref.watch(currentRoleProvider);
    final bool canManageStatus = canManageProblemStatus(role);

    return AppScaffold(
      title: l10n.more_schoolProblems,
      actions: <Widget>[
        problemAsync.maybeWhen(
          data: (SchoolProblemModel? p) => p == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => SchoolProblemFormScreen(existing: p)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: problemAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (SchoolProblemModel? p) {
          if (p == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(p.title, style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  ProblemStatusBadge(status: p.status),
                ],
              ),
              if (p.titleUrdu != null)
                Text(p.titleUrdu!, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  PriorityChip(priority: p.priority),
                  const SizedBox(width: 8),
                  Text(problemCategoryLabel(l10n, p.category),
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const Divider(height: 32),
              Text(l10n.problem_description, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 4),
              Text(p.description),
              if (p.descriptionUrdu != null) ...<Widget>[
                const SizedBox(height: 8),
                Text(p.descriptionUrdu!),
              ],
              const Divider(height: 32),
              _row(context, l10n.problem_dateReported, DateFormat.yMMMd().format(p.dateReported)),
              _row(context, l10n.problem_reportedBy, p.reportedByName),
              if (p.requiredSupport != null) _row(context, l10n.problem_requiredSupport, p.requiredSupport!),
              if (p.assignedToName != null) _row(context, l10n.problem_assignedTo, p.assignedToName!),
              if (p.expectedResolutionDate != null)
                _row(context, l10n.problem_expectedResolution,
                    DateFormat.yMMMd().format(p.expectedResolutionDate!)),
              if (p.resolutionNotes != null) _row(context, l10n.problem_resolutionNotes, p.resolutionNotes!),
              if (p.resolvedAt != null)
                _row(context, l10n.problem_status_resolved, DateFormat.yMMMd().format(p.resolvedAt!)),
              if (p.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const Divider(height: 32),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                _photoWrap(p.evidencePhotoUrls),
              ],
              if (p.resolutionEvidenceUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.problem_resolutionEvidence, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                _photoWrap(p.resolutionEvidenceUrls),
              ],
              const Divider(height: 32),
              Text(l10n.problem_updateStatus, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 8),
              if (!canManageStatus)
                Text(
                  l10n.problem_statusRestricted,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.outline),
                )
              else
                _StatusActions(problem: p),
            ],
          );
        },
      ),
    );
  }

  Widget _photoWrap(List<String> urls) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        for (final String url in urls)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
          ),
      ],
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

/// Renders only the transitions that are legal from the problem's current
/// state, so an officer can't skip straight from Open to Closed.
class _StatusActions extends ConsumerStatefulWidget {
  const _StatusActions({required this.problem});

  final SchoolProblemModel problem;

  @override
  ConsumerState<_StatusActions> createState() => _StatusActionsState();
}

class _StatusActionsState extends ConsumerState<_StatusActions> {
  bool _isSaving = false;

  Future<void> _apply(ProblemStatus next) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    String? notes;
    if (next == ProblemStatus.resolved) {
      notes = await _promptResolutionNotes(l10n);
      if (notes == null) return;
    }
    setState(() => _isSaving = true);
    final SchoolProblemModel updated = widget.problem.copyWith(
      status: next,
      resolutionNotes: notes ?? widget.problem.resolutionNotes,
      resolvedAt: next == ProblemStatus.resolved ? DateTime.now() : widget.problem.resolvedAt,
      updatedAt: DateTime.now(),
    );
    await ref.read(schoolProblemRepositoryProvider).update(updated);
    ref.invalidate(schoolProblemByIdProvider(widget.problem.id));
    if (!mounted) return;
    setState(() => _isSaving = false);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.common_success_saved)));
  }

  Future<String?> _promptResolutionNotes(AppLocalizations l10n) async {
    final TextEditingController controller = TextEditingController();
    final String? result = await showDialog<String>(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: Text(l10n.problem_resolutionNotes),
        content: TextField(
          controller: controller,
          maxLines: 3,
          decoration: InputDecoration(labelText: l10n.problem_resolutionNotes),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: Text(l10n.common_cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(controller.text.trim()),
            child: Text(l10n.common_confirm),
          ),
        ],
      ),
    );
    controller.dispose();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final List<ProblemStatus> next = nextProblemStatuses(widget.problem.status);
    if (next.isEmpty) {
      return Text(
        ProblemStatusBadge.label(l10n, widget.problem.status),
        style: Theme.of(context).textTheme.bodyMedium,
      );
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        for (final ProblemStatus s in next)
          FilledButton.tonal(
            onPressed: _isSaving ? null : () => _apply(s),
            child: Text(ProblemStatusBadge.label(l10n, s)),
          ),
      ],
    );
  }
}
