/// Single source of truth for every Firestore collection path and the
/// denormalized hierarchy field names used across security rules,
/// repositories, and the Reports Center. Never hard-code a collection name
/// string anywhere else in the codebase.
class FirestorePaths {
  FirestorePaths._();

  // Identity & hierarchy
  static const String users = 'users';
  static const String districts = 'districts';
  static const String subDivisions = 'sub_divisions';
  static const String circles = 'circles';
  static const String clusters = 'clusters';
  static const String schools = 'schools';

  // Flagship modules
  static const String admissionCampaigns = 'admission_campaigns';
  static const String ooscRecords = 'oosc_records';
  static const String monitoringReports = 'monitoring_reports';
  static const String schoolProblems = 'school_problems';
  static const String emergencyReports = 'emergency_reports';
  static const String ptcPriorities = 'ptc_priorities';

  // Scaffold-only modules
  static const String doorToDoorActivities = 'door_to_door_activities';
  static const String communityActivities = 'community_activities';
  static const String parentContacts = 'parent_contacts';
  static const String advertisementCampaigns = 'advertisement_campaigns';
  static const String socialMediaCampaigns = 'social_media_campaigns';
  static const String textbookDistribution = 'textbook_distribution';
  static const String clusterMeetings = 'cluster_meetings';
  static const String meetingActionsSubcollection = 'meeting_actions';
  static const String statements = 'statements';
  static const String schoolFunctionality = 'school_functionality';
  static const String schoolOpening = 'school_opening';
  static const String cleanliness = 'cleanliness';
  static const String plantation = 'plantation';
  static const String eceMonitoring = 'ece_monitoring';

  // Supporting collections
  static const String notifications = 'notifications';
  static const String officialUpdates = 'official_updates';
  static const String reports = 'reports';
  static const String auditLogs = 'audit_logs';
  static const String config = 'config';

  // Singleton config docs (under `config`)
  static const String configMonitoringWeightsDoc = 'monitoring_weights';
  static const String configAppSettingsDoc = 'app_settings';

  // Denormalized hierarchy field names, present on every leaf document.
  static const String fieldDistrictId = 'districtId';
  static const String fieldSubDivisionId = 'subDivisionId';
  static const String fieldCircleId = 'circleId';
  static const String fieldClusterId = 'clusterId';
  static const String fieldSchoolId = 'schoolId';

  static const String fieldCreatedAt = 'createdAt';
  static const String fieldUpdatedAt = 'updatedAt';
  static const String fieldCreatedBy = 'createdBy';
}
