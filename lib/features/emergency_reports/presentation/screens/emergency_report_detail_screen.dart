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
import '../../data/models/emergency_report_model.dart';
import '../providers/emergency_providers.dart';
import '../widgets/severity_badge.dart';

class EmergencyReportDetailScreen extends ConsumerWidget {
  const EmergencyReportDetailScreen({super.key, required this.reportId});

  final String reportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<EmergencyReportModel?> reportAsync = ref.watch(emergencyReportByIdProvider(reportId));
    final AppRole? role = ref.watch(currentRoleProvider);
    // Anyone above school level (plus monitoring officers) can drive an
    // emergency to resolution; the reporting school leader cannot close it.
    final bool canManage = role != null && role != AppRole.schoolLeader;

    return AppScaffold(
      title: l10n.more_emergency,
      body: reportAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (EmergencyReportModel? r) {
          if (r == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      emergencyTypeLabel(l10n, r.emergencyType),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  SeverityBadge(severity: r.severity),
                ],
              ),
              const SizedBox(height: 8),
              Text(emergencyStatusLabel(l10n, r.status),
                  style: Theme.of(context).textTheme.titleMedium),
              const Divider(height: 32),
              Text(l10n.emergency_description, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 4),
              Text(r.description),
              if (r.descriptionUrdu != null) ...<Widget>[
                const SizedBox(height: 8),
                Text(r.descriptionUrdu!),
              ],
              const Divider(height: 32),
              _row(context, l10n.emergency_occurredAt, DateFormat.yMMMd().format(r.occurredAt)),
              _row(context, l10n.emergency_reportedBy, r.reportedByName),
              if (r.immediateAction != null)
                _row(context, l10n.emergency_immediateAction, r.immediateAction!),
              if (r.requiredSupport != null)
                _row(context, l10n.emergency_requiredSupport, r.requiredSupport!),
              if (r.contactPersonName != null)
                _row(context, l10n.emergency_contactPerson, r.contactPersonName!),
              if (r.contactPhone != null) _row(context, l10n.emergency_contactPhone, r.contactPhone!),
              if (r.casualties != null) _row(context, l10n.emergency_casualties, '${r.casualties}'),
              if (r.resolutionNotes != null)
                _row(context, l10n.emergency_resolutionNotes, r.resolutionNotes!),
              if (r.resolvedAt != null)
                _row(context, l10n.emergency_status_resolved, DateFormat.yMMMd().format(r.resolvedAt!)),
              if (r.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const Divider(height: 32),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in r.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ],
              if (canManage && r.status != EmergencyStatus.resolved) ...<Widget>[
                const Divider(height: 32),
                Text(l10n.emergency_updateStatus, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                _StatusActions(report: r),
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
}

class _StatusActions extends ConsumerStatefulWidget {
  const _StatusActions({required this.report});

  final EmergencyReportModel report;

  @override
  ConsumerState<_StatusActions> createState() => _StatusActionsState();
}

class _StatusActionsState extends ConsumerState<_StatusActions> {
  bool _isSaving = false;

  Future<void> _apply(EmergencyStatus next) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    String? notes;
    if (next == EmergencyStatus.resolved) {
      notes = await _promptNotes(l10n);
      if (notes == null) return;
    }
    setState(() => _isSaving = true);
    await ref.read(emergencyReportRepositoryProvider).update(
          widget.report.copyWith(
            status: next,
            resolutionNotes: notes ?? widget.report.resolutionNotes,
            resolvedAt: next == EmergencyStatus.resolved ? DateTime.now() : widget.report.resolvedAt,
            updatedAt: DateTime.now(),
          ),
        );
    ref.invalidate(emergencyReportByIdProvider(widget.report.id));
    if (!mounted) return;
    setState(() => _isSaving = false);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.common_success_saved)));
  }

  Future<String?> _promptNotes(AppLocalizations l10n) async {
    final TextEditingController controller = TextEditingController();
    final String? result = await showDialog<String>(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: Text(l10n.emergency_resolutionNotes),
        content: TextField(controller: controller, maxLines: 3),
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
    final List<EmergencyStatus> next = widget.report.status == EmergencyStatus.open
        ? <EmergencyStatus>[EmergencyStatus.responding, EmergencyStatus.resolved]
        : <EmergencyStatus>[EmergencyStatus.resolved];
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        for (final EmergencyStatus s in next)
          FilledButton.tonal(
            onPressed: _isSaving ? null : () => _apply(s),
            child: Text(emergencyStatusLabel(l10n, s)),
          ),
      ],
    );
  }
}
