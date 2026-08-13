import 'package:hive_flutter/hive_flutter.dart';

import '../hive_boxes.dart';
import 'sync_queue_item.dart';

/// Typed wrapper over the raw `sync_queue` Hive box.
class SyncQueueBox {
  Box<dynamic> get _box => Hive.box(HiveBoxes.syncQueue);

  List<SyncQueueItem> getAll() {
    return _box.values
        .map((dynamic v) => SyncQueueItem.fromJson(Map<dynamic, dynamic>.from(v as Map)))
        .toList()
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
  }

  Future<void> enqueue(SyncQueueItem item) => _box.put(item.id, item.toJson());

  Future<void> remove(String id) => _box.delete(id);

  Future<void> update(SyncQueueItem item) => _box.put(item.id, item.toJson());

  int get pendingCount => _box.length;
}
