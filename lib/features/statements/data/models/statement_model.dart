import 'package:freezed_annotation/freezed_annotation.dart';

part 'statement_model.freezed.dart';
part 'statement_model.g.dart';

/// Spec §23 — گوشوارہ جات (statements / returns) with an approval workflow.
enum StatementStatus { draft, submitted, underReview, approved, returned }

@freezed
abstract class StatementModel with _$StatementModel {
  const factory StatementModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String statementType,
    /// Reporting period label, e.g. "2026-01" or "2025-26 Q3".
    required String period,
    required DateTime periodStart,
    DateTime? periodEnd,
    /// Statement formats vary by return type, so the payload is stored as a
    /// flexible key/value map rather than a fixed set of columns.
    @Default(<String, dynamic>{}) Map<String, dynamic> data,
    @Default(StatementStatus.draft) StatementStatus status,
    String? submittedByUid,
    DateTime? submittedAt,
    String? reviewedByUid,
    DateTime? reviewedAt,
    String? reviewNotes,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _StatementModel;

  const StatementModel._();

  factory StatementModel.fromJson(Map<String, dynamic> json) => _$StatementModelFromJson(json);

  static const Set<String> dateFields = <String>{
    'periodStart',
    'periodEnd',
    'submittedAt',
    'reviewedAt',
    'createdAt',
    'updatedAt',
  };
  static const String orderByField = 'periodStart';

  /// Only a draft or a returned statement is editable by its author.
  bool get isEditable => status == StatementStatus.draft || status == StatementStatus.returned;
}
