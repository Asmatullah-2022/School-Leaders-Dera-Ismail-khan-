import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/monitoring_report_model.dart';
import '../providers/monitoring_providers.dart';
import '../widgets/grade_badge.dart';
import '../widgets/weighted_score_breakdown.dart';

class MonitoringReportDetailScreen extends ConsumerWidget {
  const MonitoringReportDetailScreen({super.key, required this.reportId});

  final String reportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<MonitoringReportModel?> reportAsync = ref.watch(
      monitoringReportByIdProvider(reportId),
    );

    return AppScaffold(
      title: l10n.nav_monitoring,
      body: reportAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (MonitoringReportModel? r) {
          if (r == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Center(
                child: GradeBadge(grade: r.grade, score: r.totalWeightedScore),
              ),
              const SizedBox(height: 16),
              _row(context, l10n.monitoring_visitDate, DateFormat.yMMMd().format(r.visitDate)),
              _row(
                context,
                l10n.common_status,
                r.status == MonitoringReportStatus.draft
                    ? l10n.monitoring_status_draft
                    : l10n.monitoring_status_submitted,
              ),
              _row(context, l10n.profile_title, r.monitoredByName),
              const Divider(height: 32),
              Text(l10n.monitoring_criteria, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 8),
              WeightedScoreBreakdown(criteriaScores: r.criteriaScores),
              if (r.remarks != null) ...<Widget>[
                const Divider(height: 32),
                Text(l10n.common_remarks, style: Theme.of(context).textTheme.titleSmall),
                Text(r.remarks!),
              ],
              if (r.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: <Widget>[
                    for (final String url in r.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
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
        children: <Widget>[
          SizedBox(width: 140, child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
          Expanded(child: Text(value, style: Theme.of(context).textTheme.bodyLarge)),
        ],
      ),
    );
  }
}
