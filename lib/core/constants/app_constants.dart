/// App-wide constant values that are not user-facing strings (those live in ARB files).
class AppConstants {
  AppConstants._();

  static const String appName = 'School Leader DI Khan';
  static const String appNameFull = 'School Leader District Dera Ismail Khan';
  static const String appNameUrdu = 'سکول لیڈر — ضلع ڈیرہ اسماعیل خان';

  static const String prefsBoxName = 'app_meta';
  static const String prefsKeyThemeMode = 'theme_mode';
  static const String prefsKeyLocale = 'locale';
  static const String prefsKeySetupComplete = 'setup_complete';

  static const int minOoscAge = 4;
  static const int maxOoscAge = 16;
  static const int maxEvidencePhotoSizeBytes = 5 * 1024 * 1024;
  static const int evidenceImageCompressQuality = 70;
}

/// User roles, ordered from broadest to narrowest scope.
enum AppRole {
  superAdmin,
  districtAdmin,
  subDivisionAdmin,
  circleAdmin,
  schoolLeader,
  monitoringOfficer;

  String get firestoreValue => switch (this) {
    AppRole.superAdmin => 'super_admin',
    AppRole.districtAdmin => 'district_admin',
    AppRole.subDivisionAdmin => 'sub_division_admin',
    AppRole.circleAdmin => 'circle_admin',
    AppRole.schoolLeader => 'school_leader',
    AppRole.monitoringOfficer => 'monitoring_officer',
  };

  static AppRole fromFirestoreValue(String value) {
    return AppRole.values.firstWhere(
      (r) => r.firestoreValue == value,
      orElse: () => AppRole.schoolLeader,
    );
  }

  bool get isAdmin => this != AppRole.schoolLeader && this != AppRole.monitoringOfficer;

  bool get canManageHierarchy => switch (this) {
    AppRole.superAdmin ||
    AppRole.districtAdmin ||
    AppRole.subDivisionAdmin ||
    AppRole.circleAdmin => true,
    AppRole.schoolLeader || AppRole.monitoringOfficer => false,
  };
}

enum SyncStatus { offline, savedLocally, syncing, synced, syncFailed }
