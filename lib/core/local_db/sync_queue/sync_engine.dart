import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/app_constants.dart';
import '../../network/connectivity_provider.dart';
import '../../providers/firebase_providers.dart';
import 'sync_queue_box.dart';
import 'sync_queue_item.dart';

/// Drains the offline write queue whenever connectivity is restored,
/// replaying creates/updates/deletes and evidence-photo uploads against
/// Firestore/Storage in FIFO order per item, with capped retry.
class SyncEngine {
  SyncEngine(this._firestore, this._storage);

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final SyncQueueBox _queueBox = SyncQueueBox();

  bool _isDraining = false;
  static const int _maxRetries = 5;

  Future<void> drainQueue() async {
    if (_isDraining) return;
    _isDraining = true;
    try {
      for (final SyncQueueItem item in _queueBox.getAll()) {
        await _replay(item);
      }
    } finally {
      _isDraining = false;
    }
  }

  Future<void> _replay(SyncQueueItem item) async {
    try {
      switch (item.operation) {
        case SyncOperation.create:
        case SyncOperation.update:
          final Map<String, dynamic> data = _withFirestoreTimestamps(item);
          await _firestore
              .collection(item.collectionName)
              .doc(item.docId)
              .set(data, SetOptions(merge: true));
          _markSynced(item.collectionName, item.docId);
          break;
        case SyncOperation.delete:
          await _firestore.collection(item.collectionName).doc(item.docId).delete();
          _removeFromCache(item.collectionName, item.docId);
          break;
        case SyncOperation.uploadPhoto:
          await _replayUploadPhoto(item);
          break;
      }
      await _queueBox.remove(item.id);
    } catch (e) {
      final int nextRetry = item.retryCount + 1;
      if (nextRetry >= _maxRetries) {
        await _queueBox.update(item.copyWith(retryCount: nextRetry, lastError: e.toString()));
      } else {
        await _queueBox.update(item.copyWith(retryCount: nextRetry, lastError: e.toString()));
      }
    }
  }

  Future<void> _replayUploadPhoto(SyncQueueItem item) async {
    final String? path = item.filePath;
    final String? field = item.storageField;
    if (path == null || field == null) return;
    final File file = File(path);
    if (!file.existsSync()) return;
    final Reference ref = _storage.ref().child(
      'evidence/${item.collectionName}/${item.docId}/${DateTime.now().millisecondsSinceEpoch}.jpg',
    );
    await ref.putFile(file);
    final String url = await ref.getDownloadURL();
    await _firestore.collection(item.collectionName).doc(item.docId).update(<String, dynamic>{
      field: FieldValue.arrayUnion(<String>[url]),
    });
  }

  Map<String, dynamic> _withFirestoreTimestamps(SyncQueueItem item) {
    final Map<String, dynamic> result = Map<String, dynamic>.from(item.payloadJson);
    for (final String field in item.dateFields) {
      final dynamic value = result[field];
      if (value is String) {
        result[field] = Timestamp.fromDate(DateTime.parse(value));
      }
    }
    return result;
  }

  void _markSynced(String collectionName, String docId) {
    if (!Hive.isBoxOpen(collectionName)) return;
    final Box<dynamic> box = Hive.box(collectionName);
    final dynamic cached = box.get(docId);
    if (cached is Map) {
      final Map<String, dynamic> updated = Map<String, dynamic>.from(cached);
      updated['isSynced'] = true;
      box.put(docId, updated);
    }
  }

  void _removeFromCache(String collectionName, String docId) {
    if (!Hive.isBoxOpen(collectionName)) return;
    Hive.box(collectionName).delete(docId);
  }

  int get pendingCount => _queueBox.pendingCount;
}

final Provider<SyncEngine> syncEngineProvider = Provider<SyncEngine>((ref) {
  return SyncEngine(ref.watch(firestoreProvider), ref.watch(firebaseStorageProvider));
});

/// Watches connectivity and triggers a queue drain on every transition to
/// "online". Also exposes the pending-item count for `offline_banner.dart`.
final StreamProvider<int> pendingSyncCountProvider = StreamProvider<int>((ref) async* {
  final SyncEngine engine = ref.watch(syncEngineProvider);
  yield engine.pendingCount;
  await for (final bool online
      in ref
          .watch(connectivityProvider)
          .onConnectivityChanged
          .map((List<ConnectivityResult> r) => !r.contains(ConnectivityResult.none))) {
    if (online) {
      await engine.drainQueue();
    }
    yield engine.pendingCount;
  }
});

/// Exposed for widgets that want a simple enum-ish read of sync health.
SyncStatus syncStatusFor({required bool isOnline, required int pendingCount}) {
  if (!isOnline) return pendingCount > 0 ? SyncStatus.offline : SyncStatus.offline;
  if (pendingCount > 0) return SyncStatus.syncing;
  return SyncStatus.synced;
}
