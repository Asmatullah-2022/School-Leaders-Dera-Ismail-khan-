import 'package:cloud_firestore/cloud_firestore.dart';

import '../firebase/firestore_converters.dart';
import '../firebase/scope_filter.dart';
import '../local_db/offline_write_helper.dart';

/// Generic offline-first repository for any collection that follows the
/// app's standard document shape: a client-generated `id`, the denormalized
/// hierarchy fields, `createdAt`/`updatedAt`/`createdBy`, and an
/// `evidencePhotoUrls` array.
///
/// The five flagship modules keep hand-written repositories because each has
/// module-specific behaviour (notification-on-create, batched rank updates,
/// campaign linkage). Every other module is a straight CRUD collection, so
/// they share this one implementation instead of 13 copy-pasted files —
/// see docs/MODULE_PATTERN.md.
class ScopedFirestoreRepository<T> {
  ScopedFirestoreRepository({
    required this.firestore,
    required this.collectionName,
    required this.dateFields,
    required this.fromJson,
    required this.toJson,
    required this.idOf,
    required this.orderByField,
    this.photoField = 'evidencePhotoUrls',
  }) : _writer = OfflineWriteHelper(
         firestore: firestore,
         collectionName: collectionName,
         dateFields: dateFields,
       );

  final FirebaseFirestore firestore;
  final String collectionName;
  final Set<String> dateFields;
  final T Function(Map<String, dynamic> json) fromJson;
  final Map<String, dynamic> Function(T entity) toJson;
  final String Function(T entity) idOf;

  /// Date field the list stream sorts by, newest first.
  final String orderByField;
  final String photoField;

  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection => firestore.collection(collectionName);

  Stream<List<T>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query = filter
        .apply(_collection)
        .orderBy(orderByField, descending: true);
    return query.snapshots().map(
      (QuerySnapshot<Map<String, dynamic>> snap) =>
          snap.docs.map((doc) => fromJson(firestoreDataToJson(doc.data()))).toList(),
    );
  }

  Future<T?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return fromJson(firestoreDataToJson(doc.data()!));
  }

  Future<void> create(T entity) =>
      _writer.save(docId: idOf(entity), json: toJson(entity), isCreate: true);

  Future<void> update(T entity) =>
      _writer.save(docId: idOf(entity), json: toJson(entity), isCreate: false);

  Future<void> delete(String id) => _writer.delete(id);

  Future<void> queueEvidencePhoto(String docId, String localFilePath, {String? storageField}) =>
      _writer.queuePhotoUpload(
        docId: docId,
        filePath: localFilePath,
        storageField: storageField ?? photoField,
      );
}
