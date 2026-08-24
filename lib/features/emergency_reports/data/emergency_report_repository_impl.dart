import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../../../core/firebase/scope_filter.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../../notifications/data/models/notification_model.dart';
import '../../notifications/domain/repositories/notification_repository.dart';
import '../domain/repositories/emergency_report_repository.dart';
import 'models/emergency_report_model.dart';

class EmergencyReportRepositoryImpl implements EmergencyReportRepository {
  EmergencyReportRepositoryImpl(this._firestore, this._notifications)
    : _writer = OfflineWriteHelper(
        firestore: _firestore,
        collectionName: FirestorePaths.emergencyReports,
        dateFields: EmergencyReportModel.dateFields,
      );

  final FirebaseFirestore _firestore;
  final NotificationRepository _notifications;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.emergencyReports);

  @override
  Stream<List<EmergencyReportModel>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query = filter
        .apply(_collection)
        .orderBy('occurredAt', descending: true);
    return query.snapshots().map(
      (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
          .map((doc) => EmergencyReportModel.fromJson(firestoreDataToJson(doc.data())))
          .toList(),
    );
  }

  @override
  Future<EmergencyReportModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return EmergencyReportModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(EmergencyReportModel report) async {
    await _writer.save(docId: report.id, json: report.toJson(), isCreate: true);
    await _raiseNotification(report);
  }

  /// Best-effort: a failed notification (e.g. offline) must never lose the
  /// emergency report itself, which is already safely queued by the writer.
  Future<void> _raiseNotification(EmergencyReportModel report) async {
    try {
      await _notifications.create(
        NotificationModel(
          id: OfflineWriteHelper.newId(),
          recipientRole: 'circle_admin',
          districtId: report.districtId,
          subDivisionId: report.subDivisionId,
          circleId: report.circleId,
          clusterId: report.clusterId,
          schoolId: report.schoolId,
          title: 'Emergency reported: ${report.emergencyType.name}',
          titleUrdu: 'ہنگامی اطلاع درج ہوئی',
          body: report.description,
          bodyUrdu: report.descriptionUrdu,
          type: AppNotificationType.emergency,
          relatedCollection: FirestorePaths.emergencyReports,
          relatedDocId: report.id,
          createdAt: DateTime.now(),
          createdBy: report.reportedByUid,
        ),
      );
    } catch (_) {
      // Swallowed deliberately — see doc comment above.
    }
  }

  @override
  Future<void> update(EmergencyReportModel report) {
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
