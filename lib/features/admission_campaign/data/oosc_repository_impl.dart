import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../../../core/firebase/scope_filter.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../domain/repositories/oosc_repository.dart';
import 'models/oosc_record_model.dart';

class OoscRepositoryImpl implements OoscRepository {
  OoscRepositoryImpl(this._firestore)
      : _writer = OfflineWriteHelper(
          firestore: _firestore,
          collectionName: FirestorePaths.ooscRecords,
          dateFields: OoscRecordModel.dateFields,
        );

  final FirebaseFirestore _firestore;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.ooscRecords);

  @override
  Stream<List<OoscRecordModel>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query =
        filter.apply(_collection).orderBy('createdAt', descending: true);
    return query.snapshots().map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => OoscRecordModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  @override
  Stream<List<OoscRecordModel>> watchByCampaign(String campaignId) {
    return _collection.where('campaignId', isEqualTo: campaignId).snapshots().map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => OoscRecordModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  @override
  Future<OoscRecordModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return OoscRecordModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(OoscRecordModel record) {
    return _writer.save(docId: record.id, json: record.toJson(), isCreate: true);
  }

  @override
  Future<void> update(OoscRecordModel record) {
    return _writer.save(docId: record.id, json: record.toJson(), isCreate: false);
  }

  @override
  Future<void> delete(String id) => _writer.delete(id);

  @override
  Future<void> queueEvidencePhoto(String recordId, String localFilePath) {
    return _writer.queuePhotoUpload(
      docId: recordId,
      filePath: localFilePath,
      storageField: 'evidencePhotoUrls',
    );
  }
}
