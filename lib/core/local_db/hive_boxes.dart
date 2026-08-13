import 'package:hive_flutter/hive_flutter.dart';

import '../firebase/firestore_paths.dart';

/// Hive box name registry. Every box stores plain `Map<String, dynamic>`
/// documents keyed by the model's `localId` — no generated TypeAdapters are
/// used (see ADR note in README): models already have `toJson`/`fromJson`
/// via json_serializable, and Hive natively supports Map/List/String/num/
/// bool/DateTime, so the JSON map is exactly what gets stored.
class HiveBoxes {
  HiveBoxes._();

  static const String appMeta = 'app_meta';
  static const String syncQueue = 'sync_queue';

  static const String users = FirestorePaths.users;
  static const String districts = FirestorePaths.districts;
  static const String subDivisions = FirestorePaths.subDivisions;
  static const String circles = FirestorePaths.circles;
  static const String clusters = FirestorePaths.clusters;
  static const String schools = FirestorePaths.schools;

  static const String admissionCampaigns = FirestorePaths.admissionCampaigns;
  static const String ooscRecords = FirestorePaths.ooscRecords;
  static const String monitoringReports = FirestorePaths.monitoringReports;
  static const String schoolProblems = FirestorePaths.schoolProblems;
  static const String emergencyReports = FirestorePaths.emergencyReports;
  static const String ptcPriorities = FirestorePaths.ptcPriorities;

  /// Boxes opened eagerly at app startup (see `hive_init.dart`). Scaffold
  /// modules that gain UI later should add their box name here.
  static const List<String> eagerBoxes = <String>[
    appMeta,
    syncQueue,
    users,
    districts,
    subDivisions,
    circles,
    clusters,
    schools,
    admissionCampaigns,
    ooscRecords,
    monitoringReports,
    schoolProblems,
    emergencyReports,
    ptcPriorities,
  ];
}

/// Typed accessor for a document cache box.
Box<dynamic> cacheBox(String name) => Hive.box(name);
