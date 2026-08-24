import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/admission_campaign/presentation/screens/admission_campaign_form_screen.dart';
import '../../features/admission_campaign/presentation/screens/admission_campaign_list_screen.dart';
import '../../features/auth/domain/entities/app_user.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/dashboard/presentation/screens/home_shell_screen.dart';
import '../../features/emergency_reports/presentation/screens/emergency_report_form_screen.dart';
import '../../features/emergency_reports/presentation/screens/emergency_report_list_screen.dart';
import '../../features/hierarchy/domain/hierarchy_level.dart';
import '../../features/hierarchy/presentation/screens/hierarchy_level_list_screen.dart';
import '../../features/hierarchy/presentation/screens/school_form_screen.dart';
import '../../features/notifications/presentation/screens/notification_list_screen.dart';
import '../../features/onboarding/presentation/screens/setup_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/school_monitoring/presentation/screens/monitoring_report_form_screen.dart';
import '../../features/school_monitoring/presentation/screens/scoring_config_admin_screen.dart';
import '../../features/school_problems/presentation/screens/school_problem_form_screen.dart';
import '../../features/school_problems/presentation/screens/school_problem_list_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
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
      GoRoute(path: RoutePaths.notifications, builder: (context, state) => const NotificationListScreen()),

      // Hierarchy management, flagship modules, reports, admin, and
      // scaffold-only modules are wired here as real screens replace these
      // placeholders in subsequent build steps.
      GoRoute(
        path: RoutePaths.districts,
        builder: (context, state) => const HierarchyLevelListScreen(level: HierarchyLevel.district),
      ),
      GoRoute(
        path: RoutePaths.subDivisions,
        builder: (context, state) => const HierarchyLevelListScreen(level: HierarchyLevel.subDivision),
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

      GoRoute(path: RoutePaths.admission, builder: (context, state) => const AdmissionCampaignListScreen()),
      GoRoute(path: RoutePaths.admissionForm, builder: (context, state) => const AdmissionCampaignFormScreen()),
      _placeholder(RoutePaths.oosc, (l) => l.dashboard_oosc),
      _placeholder(RoutePaths.ooscForm, (l) => l.dashboard_oosc),
      _placeholder(RoutePaths.ooscDetail, (l) => l.dashboard_oosc),

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

      _placeholder(RoutePaths.ptc, (l) => l.more_ptc),
      _placeholder(RoutePaths.ptcForm, (l) => l.dashboard_qa_ptc),
      _placeholder(RoutePaths.ptcDetail, (l) => l.more_ptc),

      _placeholder(RoutePaths.reportsFilter, (l) => l.nav_reports),
      _placeholder(RoutePaths.reportPreview, (l) => l.nav_reports),

      _placeholder(RoutePaths.adminUsers, (l) => l.more_adminManagement),
      _placeholder(RoutePaths.adminUserForm, (l) => l.more_adminManagement),
      _placeholder(RoutePaths.officialUpdates, (l) => l.more_officialUpdates),
      _placeholder(RoutePaths.officialUpdateForm, (l) => l.more_officialUpdates),
      _placeholder(RoutePaths.auditLog, (l) => l.more_auditLog),

      _placeholder(RoutePaths.doorToDoor, (l) => l.more_admission),
      _placeholder(RoutePaths.community, (l) => l.more_community),
      _placeholder(RoutePaths.parentContact, (l) => l.more_community),
      _placeholder(RoutePaths.advertisement, (l) => l.more_admission),
      _placeholder(RoutePaths.socialMedia, (l) => l.more_admission),
      _placeholder(RoutePaths.textbooks, (l) => l.more_admission),
      _placeholder(RoutePaths.clusterMeetings, (l) => l.more_clusterMeetings),
      _placeholder(RoutePaths.statements, (l) => l.nav_reports),
      _placeholder(RoutePaths.schoolFunctionality, (l) => l.nav_monitoring),
      _placeholder(RoutePaths.schoolOpening, (l) => l.nav_monitoring),
      _placeholder(RoutePaths.cleanliness, (l) => l.more_cleanliness),
      _placeholder(RoutePaths.plantation, (l) => l.more_plantation),
      _placeholder(RoutePaths.ece, (l) => l.more_ece),
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
