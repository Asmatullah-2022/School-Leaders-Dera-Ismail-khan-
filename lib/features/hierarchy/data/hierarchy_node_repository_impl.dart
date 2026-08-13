import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../domain/hierarchy_level.dart';
import '../domain/repositories/hierarchy_node_repository.dart';
import 'models/hierarchy_node_model.dart';

class HierarchyNodeRepositoryImpl implements HierarchyNodeRepository {
  HierarchyNodeRepositoryImpl(this._firestore, this.level)
      : _writer = OfflineWriteHelper(
          firestore: _firestore,
          collectionName: level.collectionName,
          dateFields: HierarchyNodeModel.dateFields,
        );

  final FirebaseFirestore _firestore;
  final HierarchyLevel level;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(level.collectionName);

  @override
  Stream<List<HierarchyNodeModel>> watchAll() {
    return _collection.orderBy('name').snapshots().map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => HierarchyNodeModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  @override
  Stream<List<HierarchyNodeModel>> watchChildrenOf(String? parentId) {
    Query<Map<String, dynamic>> query = _collection.where('isActive', isEqualTo: true);
    query = parentId == null
        ? query.where('parentId', isNull: true)
        : query.where('parentId', isEqualTo: parentId);
    return query.snapshots().map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => HierarchyNodeModel.fromJson(firestoreDataToJson(doc.data())))
              .toList()
            ..sort((a, b) => a.name.compareTo(b.name)),
        );
  }

  @override
  Future<HierarchyNodeModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return HierarchyNodeModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(HierarchyNodeModel node) {
    return _writer.save(docId: node.id, json: node.toJson(), isCreate: true);
  }

  @override
  Future<void> update(HierarchyNodeModel node) {
    return _writer.save(docId: node.id, json: node.toJson(), isCreate: false);
  }

  @override
  Future<void> setActive(String id, bool isActive) async {
    await _collection.doc(id).update(<String, dynamic>{
      'isActive': isActive,
      'updatedAt': Timestamp.now(),
    });
  }
}
