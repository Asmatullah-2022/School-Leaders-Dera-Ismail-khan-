import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/admission_campaign/presentation/screens/admission_campaign_form_screen.dart';
import '../../features/admission_campaign/presentation/screens/admission_campaign_list_screen.dart';
import '../../features/admission_campaign/presentation/screens/oosc_form_screen.dart';
import '../../features/admission_campaign/presentation/screens/oosc_list_screen.dart';
import '../../features/audit_log/presentation/screens/audit_log_screen.dart';
import '../../features/auth/domain/entities/app_user.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/advertisement_campaigns/presentation/screens/advertisement_list_screen.dart';
import '../../features/cleanliness/presentation/screens/cleanliness_list_screen.dart';
import '../../features/cluster_meetings/presentation/screens/cluster_meeting_list_screen.dart';
import '../../features/community_engagement/presentation/screens/community_activity_list_screen.dart';
import '../../features/dashboard/presentation/screens/home_shell_screen.dart';
import '../../features/door_to_door/presentation/screens/door_to_door_list_screen.dart';
import '../../features/ece_monitoring/presentation/screens/ece_monitoring_list_screen.dart';
import '../../features/emergency_reports/presentation/screens/emergency_report_form_screen.dart';
import '../../features/emergency_reports/presentation/screens/emergency_report_list_screen.dart';
import '../../features/hierarchy/domain/hierarchy_level.dart';
import '../../features/hierarchy/presentation/screens/hierarchy_level_list_screen.dart';
import '../../features/hierarchy/presentation/screens/school_form_screen.dart';
import '../../features/notifications/presentation/screens/notification_list_screen.dart';
import '../../features/official_updates/presentation/screens/official_update_form_screen.dart';
import '../../features/official_updates/presentation/screens/official_updates_screen.dart';
import '../../features/onboarding/presentation/screens/setup_screen.dart';
import '../../features/parent_teacher_contact/presentation/screens/parent_contact_list_screen.dart';
import '../../features/plantation/presentation/screens/plantation_list_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/ptc_priorities/presentation/screens/ptc_priority_form_screen.dart';
import '../../features/ptc_priorities/presentation/screens/ptc_priority_list_screen.dart';
import '../../features/reports_center/presentation/screens/reports_center_screen.dart';
import '../../features/school_functionality/presentation/screens/functionality_list_screen.dart';
import '../../features/school_monitoring/presentation/screens/monitoring_report_form_screen.dart';
import '../../features/school_monitoring/presentation/screens/scoring_config_admin_screen.dart';
import '../../features/school_opening/presentation/screens/school_opening_list_screen.dart';
import '../../features/school_problems/presentation/screens/school_problem_form_screen.dart';
import '../../features/school_problems/presentation/screens/school_problem_list_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/social_media_campaigns/presentation/screens/social_media_list_screen.dart';
import '../../features/statements/presentation/screens/statement_list_screen.dart';
import '../../features/textbook_distribution/presentation/screens/textbook_list_screen.dart';
import '../local_db/app_meta_store.dart';
import '../localization/l10n_gen/app_localizations.dart';
import '../providers/current_user_provider.dart';
import '../providers/firebase_providers.dart';
import '../widgets/coming_soon_screen.dart';
import 'route_names.dart';

/// Builds a placeholder route for a module that is schema-scaffolded but has
/// no UI yet. Swapped for the real screen as each module is implemented.
GoRoute _placeholder(String path, String Function(AppLocalizations) titleOf) {
  return GoRoute(
    path: path,
    builder: (BuildContext context, GoRouterState state) =>
        ComingSoonScreen(title: titleOf(AppLocalizations.of(context))),
  );
}

final Provider<GoRouter> appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePaths.splash,
    refreshListenable: _RouterRefreshNotifier(ref),
    redirect: (BuildContext context, GoRouterState state) {
      final bool firebaseReady = ref.read(firebaseReadyProvider);
      final bool setupComplete = AppMetaStore.instance().isSetupComplete;
      final String location = state.matchedLocation;

      if (!setupComplete) {
        return location == RoutePaths.setup ? null : RoutePaths.setup;
      }
      if (!firebaseReady) {
        return null;
      }
      final AsyncValue<AppUser?> userAsync = ref.read(currentUserProvider);
      final bool isLoggedIn = userAsync.valueOrNull != null;
      final bool isAuthResolved = !userAsync.isLoading;
      if (!isAuthResolved) return null;

      final bool onAuthScreens = location == RoutePaths.login || location == RoutePaths.splash;
      if (!isLoggedIn && !onAuthScreens) return RoutePaths.login;
      if (isLoggedIn && onAuthScreens) return RoutePaths.home;
      if (!isLoggedIn) return null;
      if (location == RoutePaths.splash) return RoutePaths.home;
      return null;
    },
    routes: <RouteBase>[
      GoRoute(path: RoutePaths.splash, builder: (context, state) => const SplashScreen()),
      GoRoute(path: RoutePaths.setup, builder: (context, state) => const SetupScreen()),
      GoRoute(path: RoutePaths.login, builder: (context, state) => const LoginScreen()),
      GoRoute(path: RoutePaths.home, builder: (context, state) => const HomeShellScreen()),

      GoRoute(path: RoutePaths.profile, builder: (context, state) => const ProfileScreen()),
      GoRoute(path: RoutePaths.settings, builder: (context, state) => const SettingsScreen()),
      GoRoute(
        path: RoutePaths.notifications,
        builder: (context, state) => const NotificationListScreen(),
      ),

      // Hierarchy management, flagship modules, reports, admin, and
      // scaffold-only modules are wired here as real screens replace these
      // placeholders in subsequent build steps.
      GoRoute(
        path: RoutePaths.districts,
        builder: (context, state) => const HierarchyLevelListScreen(level: HierarchyLevel.district),
      ),
      GoRoute(
        path: RoutePaths.subDivisions,
        builder: (context, state) =>
            const HierarchyLevelListScreen(level: HierarchyLevel.subDivision),
      ),
      GoRoute(
        path: RoutePaths.circles,
        builder: (context, state) => const HierarchyLevelListScreen(level: HierarchyLevel.circle),
      ),
      GoRoute(
        path: RoutePaths.clusters,
        builder: (context, state) => const HierarchyLevelListScreen(level: HierarchyLevel.cluster),
      ),
      GoRoute(path: RoutePaths.schoolForm, builder: (context, state) => const SchoolFormScreen()),
      _placeholder(RoutePaths.schoolDetail, (l) => l.common_school),

      GoRoute(
        path: RoutePaths.admission,
        builder: (context, state) => const AdmissionCampaignListScreen(),
      ),
      GoRoute(
        path: RoutePaths.admissionForm,
        builder: (context, state) => const AdmissionCampaignFormScreen(),
      ),
      GoRoute(path: RoutePaths.oosc, builder: (context, state) => const OoscListScreen()),
      GoRoute(path: RoutePaths.ooscForm, builder: (context, state) => const OoscFormScreen()),

      GoRoute(
        path: RoutePaths.monitoringForm,
        builder: (context, state) => const MonitoringReportFormScreen(),
      ),
      GoRoute(
        path: RoutePaths.monitoringScoringConfig,
        builder: (context, state) => const ScoringConfigAdminScreen(),
      ),

      GoRoute(
        path: RoutePaths.schoolProblems,
        builder: (context, state) => const SchoolProblemListScreen(),
      ),
      GoRoute(
        path: RoutePaths.schoolProblemForm,
        builder: (context, state) => const SchoolProblemFormScreen(),
      ),

      GoRoute(
        path: RoutePaths.emergency,
        builder: (context, state) => const EmergencyReportListScreen(),
      ),
      GoRoute(
        // Reached from the dashboard SOS quick action — opens the trimmed form.
        path: RoutePaths.emergencyForm,
        builder: (context, state) => const EmergencyReportFormScreen(quickMode: true),
      ),

      GoRoute(path: RoutePaths.ptc, builder: (context, state) => const PtcPriorityListScreen()),
      GoRoute(path: RoutePaths.ptcForm, builder: (context, state) => const PtcPriorityFormScreen()),

      GoRoute(path: RoutePaths.reports, builder: (context, state) => const ReportsCenterScreen()),

      _placeholder(RoutePaths.adminUsers, (l) => l.more_adminManagement),
      _placeholder(RoutePaths.adminUserForm, (l) => l.more_adminManagement),
      GoRoute(
        path: RoutePaths.officialUpdates,
        builder: (context, state) => const OfficialUpdatesScreen(),
      ),
      GoRoute(
        path: RoutePaths.officialUpdateForm,
        builder: (context, state) => const OfficialUpdateFormScreen(),
      ),
      GoRoute(path: RoutePaths.auditLog, builder: (context, state) => const AuditLogScreen()),

      GoRoute(
        path: RoutePaths.doorToDoor,
        builder: (context, state) => const DoorToDoorListScreen(),
      ),
      GoRoute(
        path: RoutePaths.community,
        builder: (context, state) => const CommunityActivityListScreen(),
      ),
      GoRoute(
        path: RoutePaths.parentContact,
        builder: (context, state) => const ParentContactListScreen(),
      ),
      GoRoute(
        path: RoutePaths.advertisement,
        builder: (context, state) => const AdvertisementListScreen(),
      ),
      GoRoute(
        path: RoutePaths.socialMedia,
        builder: (context, state) => const SocialMediaListScreen(),
      ),
      GoRoute(path: RoutePaths.textbooks, builder: (context, state) => const TextbookListScreen()),
      GoRoute(
        path: RoutePaths.clusterMeetings,
        builder: (context, state) => const ClusterMeetingListScreen(),
      ),
      GoRoute(
        path: RoutePaths.statements,
        builder: (context, state) => const StatementListScreen(),
      ),
      GoRoute(
        path: RoutePaths.schoolFunctionality,
        builder: (context, state) => const FunctionalityListScreen(),
      ),
      GoRoute(
        path: RoutePaths.schoolOpening,
        builder: (context, state) => const SchoolOpeningListScreen(),
      ),
      GoRoute(
        path: RoutePaths.cleanliness,
        builder: (context, state) => const CleanlinessListScreen(),
      ),
      GoRoute(
        path: RoutePaths.plantation,
        builder: (context, state) => const PlantationListScreen(),
      ),
      GoRoute(path: RoutePaths.ece, builder: (context, state) => const EceMonitoringListScreen()),
    ],
  );
});

/// Bridges Riverpod's [currentUserProvider] into a [Listenable] so GoRouter
/// re-evaluates `redirect` whenever auth state changes.
class _RouterRefreshNotifier extends ChangeNotifier {
  _RouterRefreshNotifier(this.ref) {
    ref.listen(currentUserProvider, (_, _) => notifyListeners());
    ref.listen(firebaseReadyProvider, (_, _) => notifyListeners());
  }

  final Ref ref;
}
