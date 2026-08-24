import 'package:freezed_annotation/freezed_annotation.dart';

part 'audit_log_model.freezed.dart';
part 'audit_log_model.g.dart';

/// Spec §49 — audit trail. Clients only ever READ these: writes are blocked
/// by firestore.rules and performed by the `logAuditEvent` Cloud Function, so
/// a user cannot forge or erase their own trail.
enum AuditAction {
  login,
  logout,
  create,
  update,
  delete,
  submit,
  approve,
  reject,
  returned,
  roleChange,
  export,
}

@freezed
abstract class AuditLogModel with _$AuditLogModel {
  const factory AuditLogModel({
    required String id,
    required String actorUid,
    String? actorName,
    String? actorRole,
    required AuditAction action,
    required String collectionName,
    String? docId,
    String? districtId,
    String? subDivisionId,
    String? circleId,
    String? clusterId,
    String? schoolId,
    String? deviceInfo,
    Map<String, dynamic>? beforeData,
    Map<String, dynamic>? afterData,
    required DateTime timestamp,
  }) = _AuditLogModel;

  const AuditLogModel._();

  factory AuditLogModel.fromJson(Map<String, dynamic> json) => _$AuditLogModelFromJson(json);

  static const Set<String> dateFields = <String>{'timestamp'};
  static const String orderByField = 'timestamp';
}
