import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../../../core/firebase/scope_filter.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../domain/repositories/ptc_priority_repository.dart';
import 'models/ptc_priority_model.dart';

class PtcPriorityRepositoryImpl implements PtcPriorityRepository {
  PtcPriorityRepositoryImpl(this._firestore)
    : _writer = OfflineWriteHelper(
        firestore: _firestore,
        collectionName: FirestorePaths.ptcPriorities,
        dateFields: PtcPriorityModel.dateFields,
      );

  final FirebaseFirestore _firestore;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.ptcPriorities);

  @override
  Stream<List<PtcPriorityModel>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query = filter
        .apply(_collection)
        .orderBy('meetingDate', descending: true);
    return query.snapshots().map(
      (QuerySnapshot<Map<String, dynamic>> snap) =>
          snap.docs
              .map((doc) => PtcPriorityModel.fromJson(firestoreDataToJson(doc.data())))
              .toList()
            // Secondary sort by rank so a single meeting's priorities always
            // render in their agreed order.
            ..sort((a, b) {
              final int byDate = b.meetingDate.compareTo(a.meetingDate);
              return byDate != 0 ? byDate : a.rank.compareTo(b.rank);
            }),
    );
  }

  @override
  Future<PtcPriorityModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return PtcPriorityModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(PtcPriorityModel priority) {
    return _writer.save(docId: priority.id, json: priority.toJson(), isCreate: true);
  }

  @override
  Future<void> update(PtcPriorityModel priority) {
    return _writer.save(docId: priority.id, json: priority.toJson(), isCreate: false);
  }

  @override
  Future<void> updateRanks(List<PtcPriorityModel> priorities) async {
    if (priorities.isEmpty) return;
    try {
      final WriteBatch batch = _firestore.batch();
      for (final PtcPriorityModel p in priorities) {
        batch.update(_collection.doc(p.id), <String, dynamic>{
          'rank': p.rank,
          'updatedAt': Timestamp.fromDate(DateTime.now()),
        });
      }
      await batch.commit();
    } catch (_) {
      // Offline: fall back to individually queued writes so the reorder is
      // still replayed when connectivity returns.
      for (final PtcPriorityModel p in priorities) {
        await _writer.save(docId: p.id, json: p.toJson(), isCreate: false);
      }
    }
  }

  @override
  Future<void> delete(String id) => _writer.delete(id);

  @override
  Future<void> queueEvidencePhoto(String priorityId, String localFilePath) {
    return _writer.queuePhotoUpload(
      docId: priorityId,
      filePath: localFilePath,
      storageField: 'evidencePhotoUrls',
    );
  }
}
