import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../../../core/firebase/scope_filter.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../domain/repositories/monitoring_report_repository.dart';
import 'models/monitoring_report_model.dart';

class MonitoringReportRepositoryImpl implements MonitoringReportRepository {
  MonitoringReportRepositoryImpl(this._firestore)
      : _writer = OfflineWriteHelper(
          firestore: _firestore,
          collectionName: FirestorePaths.monitoringReports,
          dateFields: MonitoringReportModel.dateFields,
        );

  final FirebaseFirestore _firestore;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.monitoringReports);

  @override
  Stream<List<MonitoringReportModel>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query =
        filter.apply(_collection).orderBy('visitDate', descending: true);
    return query.snapshots().map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => MonitoringReportModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  @override
  Future<MonitoringReportModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return MonitoringReportModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(MonitoringReportModel report) {
    return _writer.save(docId: report.id, json: report.toJson(), isCreate: true);
  }

  @override
  Future<void> update(MonitoringReportModel report) {
    return _writer.save(docId: report.id, json: report.toJson(), isCreate: false);
  }

  @override
  Future<void> delete(String id) => _writer.delete(id);

  @override
  Future<void> queueEvidencePhoto(String reportId, String localFilePath) {
    return _writer.queuePhotoUpload(
      docId: reportId,
      filePath: localFilePath,
      storageField: 'evidencePhotoUrls',
    );
  }
}
