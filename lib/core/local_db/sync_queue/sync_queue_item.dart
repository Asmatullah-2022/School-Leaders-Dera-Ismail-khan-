enum SyncOperation { create, update, delete, uploadPhoto }

/// One pending offline write. Stored as a plain JSON-safe map in the
/// `sync_queue` Hive box (see `sync_queue_box.dart`) — deliberately not a
/// generated Hive object, to avoid the hive_generator/analyzer version
/// conflict with riverpod/freezed tooling (see README ADR notes).
class SyncQueueItem {
  const SyncQueueItem({
    required this.id,
    required this.collectionName,
    required this.docId,
    required this.operation,
    required this.payloadJson,
    required this.dateFields,
    required this.createdAt,
    this.filePath,
    this.storageField,
    this.retryCount = 0,
    this.lastError,
  });

  /// Queue entry id (== uuid), distinct from [docId] which is the target
  /// document's own id.
  final String id;
  final String collectionName;
  final String docId;
  final SyncOperation operation;

  /// The model's `toJson()` output (ISO8601 date strings, JSON-safe).
  final Map<String, dynamic> payloadJson;

  /// Which keys in [payloadJson] must be converted to Firestore Timestamps
  /// before the write is replayed.
  final List<String> dateFields;

  final DateTime createdAt;

  /// For [SyncOperation.uploadPhoto]: local file path to upload.
  final String? filePath;

  /// For [SyncOperation.uploadPhoto]: the array field on [docId] to append
  /// the resulting download URL to (e.g. `evidencePhotoUrls`).
  final String? storageField;

  final int retryCount;
  final String? lastError;

  SyncQueueItem copyWith({int? retryCount, String? lastError}) {
    return SyncQueueItem(
      id: id,
      collectionName: collectionName,
      docId: docId,
      operation: operation,
      payloadJson: payloadJson,
      dateFields: dateFields,
      createdAt: createdAt,
      filePath: filePath,
      storageField: storageField,
      retryCount: retryCount ?? this.retryCount,
      lastError: lastError ?? this.lastError,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'collectionName': collectionName,
    'docId': docId,
    'operation': operation.name,
    'payloadJson': payloadJson,
    'dateFields': dateFields,
    'createdAt': createdAt.toIso8601String(),
    'filePath': filePath,
    'storageField': storageField,
    'retryCount': retryCount,
    'lastError': lastError,
  };

  static SyncQueueItem fromJson(Map<dynamic, dynamic> json) {
    return SyncQueueItem(
      id: json['id'] as String,
      collectionName: json['collectionName'] as String,
      docId: json['docId'] as String,
      operation: SyncOperation.values.firstWhere((o) => o.name == json['operation']),
      payloadJson: Map<String, dynamic>.from(json['payloadJson'] as Map),
      dateFields: List<String>.from(json['dateFields'] as List? ?? const <String>[]),
      createdAt: DateTime.parse(json['createdAt'] as String),
      filePath: json['filePath'] as String?,
      storageField: json['storageField'] as String?,
      retryCount: (json['retryCount'] as int?) ?? 0,
      lastError: json['lastError'] as String?,
    );
  }
}
