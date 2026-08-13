import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../domain/repositories/monitoring_config_repository.dart';
import 'models/monitoring_config_model.dart';

/// Singleton config doc at `config/monitoring_weights`. Seeded with
/// [MonitoringConfigModel.defaults] on first read if it doesn't exist yet,
/// so a fresh Firebase project works out of the box before any admin has
/// touched the scoring config screen.
class MonitoringConfigRepositoryImpl implements MonitoringConfigRepository {
  MonitoringConfigRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  DocumentReference<Map<String, dynamic>> get _doc => _firestore
      .collection(FirestorePaths.config)
      .doc(FirestorePaths.configMonitoringWeightsDoc);

  @override
  Stream<MonitoringConfigModel> watch() {
    return _doc.snapshots().map((DocumentSnapshot<Map<String, dynamic>> snap) {
      if (!snap.exists || snap.data() == null) return MonitoringConfigModel.defaults();
      return MonitoringConfigModel.fromJson(firestoreDataToJson(snap.data()!));
    });
  }

  @override
  Future<MonitoringConfigModel> get() async {
    final DocumentSnapshot<Map<String, dynamic>> snap = await _doc.get();
    if (!snap.exists || snap.data() == null) return MonitoringConfigModel.defaults();
    return MonitoringConfigModel.fromJson(firestoreDataToJson(snap.data()!));
  }

  @override
  Future<void> save(MonitoringConfigModel config, {required String updatedByUid}) async {
    final MonitoringConfigModel toSave = config.copyWith(
      updatedBy: updatedByUid,
      updatedAt: DateTime.now(),
    );
    final Map<String, dynamic> data = jsonToFirestoreData(
      toSave.toJson(),
      dateFields: MonitoringConfigModel.dateFields,
    );
    await _doc.set(data, SetOptions(merge: true));
  }
}
