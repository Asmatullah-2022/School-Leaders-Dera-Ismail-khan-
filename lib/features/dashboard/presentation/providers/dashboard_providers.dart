import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../admission_campaign/data/models/oosc_record_model.dart';
import '../../../admission_campaign/presentation/providers/admission_providers.dart';
import '../../../emergency_reports/data/models/emergency_report_model.dart';
import '../../../emergency_reports/presentation/providers/emergency_providers.dart';
import '../../../hierarchy/data/models/hierarchy_node_model.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/domain/hierarchy_level.dart';
import '../../../hierarchy/presentation/providers/hierarchy_providers.dart';
import '../../../school_monitoring/data/models/monitoring_report_model.dart';
import '../../../school_monitoring/presentation/providers/monitoring_providers.dart';
import '../../../school_problems/data/models/school_problem_model.dart';
import '../../../school_problems/presentation/providers/school_problem_providers.dart';
import '../../domain/entities/dashboard_stats.dart';

/// Derives the home dashboard counters from the same scoped streams the
/// feature screens use, so the dashboard always agrees with the lists a user
/// can drill into and no separate aggregation needs to be kept in sync.
///
/// Every source is read via `valueOrNull`, so the dashboard renders partial
/// numbers as data arrives instead of blocking on the slowest collection.
final dashboardStatsProvider = Provider<DashboardStats>((ref) {
  final List<SchoolModel> schools =
      ref.watch(scopedSchoolsProvider).valueOrNull ?? const <SchoolModel>[];
  final List<HierarchyNodeModel> clusters =
      ref.watch(hierarchyAllProvider(HierarchyLevel.cluster)).valueOrNull ??
          const <HierarchyNodeModel>[];
  final List<OoscRecordModel> oosc =
      ref.watch(scopedOoscRecordsProvider).valueOrNull ?? const <OoscRecordModel>[];
  final List<SchoolProblemModel> problems =
      ref.watch(scopedSchoolProblemsProvider).valueOrNull ?? const <SchoolProblemModel>[];
  final List<EmergencyReportModel> emergencies =
      ref.watch(scopedEmergencyReportsProvider).valueOrNull ?? const <EmergencyReportModel>[];
  final List<MonitoringReportModel> monitoring =
      ref.watch(scopedMonitoringReportsProvider).valueOrNull ?? const <MonitoringReportModel>[];
  final campaigns = ref.watch(scopedAdmissionCampaignsProvider).valueOrNull ?? const [];

  final List<SchoolModel> activeSchools = schools.where((s) => s.isActive).toList();

  // "Needs attention" = any school with an unresolved problem or an
  // unresolved emergency against it.
  final Set<String> flaggedSchoolIds = <String>{
    ...problems
        .where((p) => p.status == ProblemStatus.open || p.status == ProblemStatus.inProgress)
        .map((p) => p.schoolId),
    ...emergencies.where((e) => e.status != EmergencyStatus.resolved).map((e) => e.schoolId),
  };

  return DashboardStats(
    totalSchools: activeSchools.length,
    totalClusters: clusters.where((c) => c.isActive).length,
    totalEnrollment: activeSchools.fold(0, (sum, s) => sum + s.totalEnrollment),
    newAdmissions: campaigns.fold(0, (int sum, c) => sum + c.newAdmissionsTotal),
    ooscCount: oosc.where((o) => !o.isReenrolled).length,
    functionalSchools: activeSchools.length - flaggedSchoolIds.length,
    schoolsNeedingAttention: flaggedSchoolIds.length,
    pendingReports: monitoring.where((m) => m.status == MonitoringReportStatus.draft).length,
  );
});
