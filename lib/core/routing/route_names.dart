/// Every route path in the app. Kept flat and explicit so the full screen
/// inventory (including not-yet-built scaffold modules) is visible in one
/// place — new modules add a line here + a placeholder in `app_router.dart`.
class RoutePaths {
  RoutePaths._();

  static const String splash = '/splash';
  static const String setup = '/setup';
  static const String login = '/login';

  static const String home = '/home';
  static const String schools = '/schools';
  static const String monitoring = '/monitoring';
  static const String reports = '/reports';
  static const String more = '/more';

  // Hierarchy management
  static const String districts = '/districts';
  static const String subDivisions = '/sub-divisions';
  static const String circles = '/circles';
  static const String clusters = '/clusters';
  static const String schoolForm = '/schools/form';
  static const String schoolDetail = '/schools/detail';

  // Flagship 1
  static const String admission = '/admission';
  static const String admissionForm = '/admission/form';
  static const String admissionDetail = '/admission/detail';
  static const String oosc = '/oosc';
  static const String ooscForm = '/oosc/form';
  static const String ooscDetail = '/oosc/detail';

  // Flagship 2
  static const String monitoringForm = '/monitoring/form';
  static const String monitoringDetail = '/monitoring/detail';
  static const String monitoringScoringConfig = '/monitoring/scoring-config';

  // Flagship 3
  static const String schoolProblems = '/school-problems';
  static const String schoolProblemForm = '/school-problems/form';
  static const String schoolProblemDetail = '/school-problems/detail';

  // Flagship 4
  static const String emergency = '/emergency';
  static const String emergencyForm = '/emergency/form';
  static const String emergencyDetail = '/emergency/detail';

  // Flagship 5
  static const String ptc = '/ptc';
  static const String ptcForm = '/ptc/form';
  static const String ptcDetail = '/ptc/detail';

  // Reports Center
  static const String reportsFilter = '/reports/filter';
  static const String reportPreview = '/reports/preview';

  // Admin / official / notifications / audit
  static const String adminUsers = '/admin/users';
  static const String adminUserForm = '/admin/users/form';
  static const String officialUpdates = '/official-updates';
  static const String officialUpdateForm = '/official-updates/form';
  static const String notifications = '/notifications';
  static const String auditLog = '/audit-log';

  // Profile / settings
  static const String profile = '/profile';
  static const String settings = '/settings';

  // Scaffold-only modules (placeholder "coming soon" screens)
  static const String doorToDoor = '/door-to-door';
  static const String community = '/community';
  static const String parentContact = '/parent-contact';
  static const String advertisement = '/advertisement';
  static const String socialMedia = '/social-media';
  static const String textbooks = '/textbooks';
  static const String clusterMeetings = '/cluster-meetings';
  static const String statements = '/statements';
  static const String schoolFunctionality = '/school-functionality';
  static const String schoolOpening = '/school-opening';
  static const String cleanliness = '/cleanliness';
  static const String plantation = '/plantation';
  static const String ece = '/ece';
}
