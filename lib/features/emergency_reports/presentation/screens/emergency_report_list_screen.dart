import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/emergency_report_model.dart';
import '../providers/emergency_providers.dart';
import '../widgets/severity_badge.dart';
import 'emergency_report_detail_screen.dart';
import 'emergency_report_form_screen.dart';

class EmergencyReportListScreen extends ConsumerWidget {
  const EmergencyReportListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<EmergencyReportModel>> reportsAsync = ref.watch(scopedEmergencyReportsProvider);
    final List<EmergencyReportModel> critical = ref.watch(activeCriticalEmergenciesProvider);

    return AppScaffold(
      title: l10n.more_emergency,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).colorScheme.error,
        foregroundColor: Colors.white,
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const EmergencyReportFormScreen()),
        ),
        icon: const Icon(Icons.add_alert),
        label: Text(l10n.emergency_addReport),
      ),
      body: reportsAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<EmergencyReportModel> reports) {
          if (reports.isEmpty) {
            return EmptyState(message: l10n.emergency_noReports, icon: Icons.emergency_outlined);
          }
          return Column(
            children: <Widget>[
              if (critical.isNotEmpty)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.criticalRed.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.criticalRed),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.warning_amber_rounded, color: AppColors.criticalRed),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '${l10n.emergency_activeCritical}: ${critical.length}',
                          style: const TextStyle(
                            color: AppColors.criticalRed,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: reports.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (BuildContext context, int index) {
                    final EmergencyReportModel r = reports[index];
                    return Card(
                      color: r.isActiveCritical
                          ? AppColors.criticalRed.withValues(alpha: 0.06)
                          : null,
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(12),
                        leading: Icon(
                          Icons.emergency,
                          color: SeverityBadge.color(r.severity),
                        ),
                        title: Text(emergencyTypeLabel(l10n, r.emergencyType)),
                        subtitle: Text(
                          '${DateFormat.yMMMd().format(r.occurredAt)} · ${emergencyStatusLabel(l10n, r.status)}',
                        ),
                        trailing: SeverityBadge(severity: r.severity),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => EmergencyReportDetailScreen(reportId: r.id),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
