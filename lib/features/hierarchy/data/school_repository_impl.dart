import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../../../core/firebase/scope_filter.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../domain/repositories/school_repository.dart';
import 'models/school_model.dart';

class SchoolRepositoryImpl implements SchoolRepository {
  SchoolRepositoryImpl(this._firestore)
    : _writer = OfflineWriteHelper(
        firestore: _firestore,
        collectionName: FirestorePaths.schools,
        dateFields: SchoolModel.dateFields,
      );

  final FirebaseFirestore _firestore;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.schools);

  @override
  Stream<List<SchoolModel>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query = filter.apply(_collection);
    return query.snapshots().map(
      (QuerySnapshot<Map<String, dynamic>> snap) =>
          snap.docs.map((doc) => SchoolModel.fromJson(firestoreDataToJson(doc.data()))).toList()
            ..sort((a, b) => a.name.compareTo(b.name)),
    );
  }

  @override
  Future<SchoolModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return SchoolModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(SchoolModel school) {
    return _writer.save(docId: school.id, json: school.toJson(), isCreate: true);
  }

  @override
  Future<void> update(SchoolModel school) {
    return _writer.save(docId: school.id, json: school.toJson(), isCreate: false);
  }

  @override
  Future<void> setActive(String id, bool isActive) async {
    await _collection.doc(id).update(<String, dynamic>{
      'isActive': isActive,
      'updatedAt': Timestamp.now(),
    });
  }
}
