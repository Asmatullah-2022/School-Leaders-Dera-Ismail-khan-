import 'package:freezed_annotation/freezed_annotation.dart';

part 'textbook_distribution_model.freezed.dart';
part 'textbook_distribution_model.g.dart';

/// Spec §19 — free textbooks & learning support.
@freezed
abstract class TextbookDistributionModel with _$TextbookDistributionModel {
  const factory TextbookDistributionModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String academicYear,
    required DateTime distributionDate,
    String? classGrade,
    String? subject,
    @Default(0) int booksRequired,
    @Default(0) int booksAvailable,
    @Default(0) int booksDistributed,
    @Default(0) int studentsReceiving,
    String? otherMaterials,
    String? supportRequired,
    String? remarks,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _TextbookDistributionModel;

  const TextbookDistributionModel._();

  factory TextbookDistributionModel.fromJson(Map<String, dynamic> json) =>
      _$TextbookDistributionModelFromJson(json);

  static const Set<String> dateFields = <String>{'distributionDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'distributionDate';

  /// Outstanding books still needed after what has been distributed.
  int get shortage {
    final int gap = booksRequired - booksDistributed;
    return gap > 0 ? gap : 0;
  }
}
