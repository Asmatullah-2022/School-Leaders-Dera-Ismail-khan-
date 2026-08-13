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
import '../../data/models/monitoring_report_model.dart';
import '../providers/monitoring_providers.dart';
import '../widgets/grade_badge.dart';
import 'monitoring_report_detail_screen.dart';
import 'monitoring_report_form_screen.dart';
import 'scoring_config_admin_screen.dart';

class MonitoringReportListScreen extends ConsumerWidget {
  const MonitoringReportListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<MonitoringReportModel>> reportsAsync = ref.watch(scopedMonitoringReportsProvider);
    final AppRole? role = ref.watch(currentRoleProvider);

    return AppScaffold(
      title: l10n.nav_monitoring,
      actions: <Widget>[
        if (role != null && (role == AppRole.districtAdmin || role == AppRole.superAdmin))
          IconButton(
            icon: const Icon(Icons.tune),
            tooltip: l10n.monitoring_scoringConfig,
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const ScoringConfigAdminScreen()),
            ),
          ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const MonitoringReportFormScreen()),
        ),
        icon: const Icon(Icons.add),
        label: Text(l10n.monitoring_addReport),
      ),
      body: reportsAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<MonitoringReportModel> reports) {
          if (reports.isEmpty) {
            return EmptyState(message: l10n.monitoring_noReports, icon: Icons.fact_check_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: reports.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (BuildContext context, int index) {
              final MonitoringReportModel r = reports[index];
              return Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: GradeBadge(grade: r.grade, score: r.totalWeightedScore),
                  title: Text(DateFormat.yMMMd().format(r.visitDate)),
                  subtitle: Text(r.monitoredByName),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => MonitoringReportDetailScreen(reportId: r.id)),
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
