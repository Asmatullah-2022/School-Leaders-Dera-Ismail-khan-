import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../admission_campaign/presentation/providers/admission_providers.dart';
import '../../../emergency_reports/presentation/providers/emergency_providers.dart';
import '../../../ptc_priorities/presentation/providers/ptc_providers.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../../school_monitoring/presentation/providers/monitoring_providers.dart';
import '../../../school_problems/presentation/providers/school_problem_providers.dart';
import '../../data/report_adapters.dart';
import '../../data/report_export_service.dart';
import '../../domain/report_module.dart';
import '../../domain/report_table.dart';

final reportExportServiceProvider = Provider<ReportExportService>((ref) {
  return const ReportExportService();
});

/// Builds the table for a given filter by reading whichever scoped module
/// stream it targets — so exports inherit the same hierarchy scoping (and
/// therefore the same permissions) as the on-screen lists.
final reportTableProvider = Provider.family<ReportTable, ReportFilter>((ref, filter) {
  switch (filter.module) {
    case ReportModule.admissionCampaigns:
      return buildAdmissionCampaignTable(
        ref.watch(scopedAdmissionCampaignsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.oosc:
      return buildOoscTable(ref.watch(scopedOoscRecordsProvider).valueOrNull ?? const [], filter);
    case ReportModule.monitoringReports:
      return buildMonitoringTable(
        ref.watch(scopedMonitoringReportsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.schoolProblems:
      return buildSchoolProblemTable(
        ref.watch(scopedSchoolProblemsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.emergencyReports:
      return buildEmergencyTable(
        ref.watch(scopedEmergencyReportsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.ptcPriorities:
      return buildPtcTable(ref.watch(scopedPtcPrioritiesProvider).valueOrNull ?? const [], filter);
    case ReportModule.doorToDoor:
      return buildDoorToDoorTable(
        ref.watch(scopedDoorToDoorProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.communityEngagement:
      return buildCommunityActivityTable(
        ref.watch(scopedCommunityActivitiesProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.parentTeacherContact:
      return buildParentContactTable(
        ref.watch(scopedParentContactsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.advertisementCampaigns:
      return buildAdvertisementTable(
        ref.watch(scopedAdvertisementsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.socialMediaCampaigns:
      return buildSocialMediaTable(
        ref.watch(scopedSocialMediaProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.textbookDistribution:
      return buildTextbookTable(ref.watch(scopedTextbooksProvider).valueOrNull ?? const [], filter);
    case ReportModule.clusterMeetings:
      return buildClusterMeetingTable(
        ref.watch(scopedClusterMeetingsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.statements:
      return buildStatementTable(
        ref.watch(scopedStatementsProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.schoolFunctionality:
      return buildSchoolFunctionalityTable(
        ref.watch(scopedSchoolFunctionalityProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.schoolOpening:
      return buildSchoolOpeningTable(
        ref.watch(scopedSchoolOpeningProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.cleanliness:
      return buildCleanlinessTable(
        ref.watch(scopedCleanlinessProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.plantation:
      return buildPlantationTable(
        ref.watch(scopedPlantationProvider).valueOrNull ?? const [],
        filter,
      );
    case ReportModule.eceMonitoring:
      return buildEceMonitoringTable(
        ref.watch(scopedEceMonitoringProvider).valueOrNull ?? const [],
        filter,
      );
  }
});
