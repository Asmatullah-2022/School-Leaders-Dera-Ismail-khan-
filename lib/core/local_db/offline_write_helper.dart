import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

import '../firebase/firestore_converters.dart';
import 'sync_queue/sync_queue_box.dart';
import 'sync_queue/sync_queue_item.dart';

const Uuid _uuid = Uuid();

/// Shared offline-first write path used by every flagship (and eventually
/// scaffold) repository: write optimistically to the Hive cache, attempt the
/// Firestore write, and fall back to the sync queue on failure. Every
/// document id used here is a client-generated UUID (`localId`), making the
/// Firestore `set()` idempotent so a retried queue replay never duplicates.
class OfflineWriteHelper {
  OfflineWriteHelper({
    required this.firestore,
    required this.collectionName,
    required this.dateFields,
  });

  final FirebaseFirestore firestore;
  final String collectionName;
  final Set<String> dateFields;

  final SyncQueueBox _queue = SyncQueueBox();

  static String newId() => _uuid.v4();

  Future<void> save({
    required String docId,
    required Map<String, dynamic> json,
    required bool isCreate,
  }) async {
    _cachePut(docId, json, isSynced: false);
    try {
      final Map<String, dynamic> data = jsonToFirestoreData(json, dateFields: dateFields);
      await firestore.collection(collectionName).doc(docId).set(data, SetOptions(merge: true));
      _cachePut(docId, json, isSynced: true);
    } catch (_) {
      await _queue.enqueue(
        SyncQueueItem(
          id: _uuid.v4(),
          collectionName: collectionName,
          docId: docId,
          operation: isCreate ? SyncOperation.create : SyncOperation.update,
          payloadJson: json,
          dateFields: dateFields.toList(),
          createdAt: DateTime.now(),
        ),
      );
    }
  }

  Future<void> delete(String docId) async {
    _cacheDelete(docId);
    try {
      await firestore.collection(collectionName).doc(docId).delete();
    } catch (_) {
      await _queue.enqueue(
        SyncQueueItem(
          id: _uuid.v4(),
          collectionName: collectionName,
          docId: docId,
          operation: SyncOperation.delete,
          payloadJson: const <String, dynamic>{},
          dateFields: const <String>[],
          createdAt: DateTime.now(),
        ),
      );
    }
  }

  /// Queues an evidence photo file for upload; used when the picked image
  /// cannot be uploaded immediately (offline). [storageField] is the array
  /// field on the target document that the resulting URL gets appended to.
  Future<void> queuePhotoUpload({
    required String docId,
    required String filePath,
    required String storageField,
  }) async {
    await _queue.enqueue(
      SyncQueueItem(
        id: _uuid.v4(),
        collectionName: collectionName,
        docId: docId,
        operation: SyncOperation.uploadPhoto,
        payloadJson: const <String, dynamic>{},
        dateFields: const <String>[],
        createdAt: DateTime.now(),
        filePath: filePath,
        storageField: storageField,
      ),
    );
  }

  void _cachePut(String docId, Map<String, dynamic> json, {required bool isSynced}) {
    if (!Hive.isBoxOpen(collectionName)) return;
    final Map<String, dynamic> cached = Map<String, dynamic>.from(json)..['isSynced'] = isSynced;
    Hive.box(collectionName).put(docId, cached);
  }

  void _cacheDelete(String docId) {
    if (!Hive.isBoxOpen(collectionName)) return;
    Hive.box(collectionName).delete(docId);
  }
}
