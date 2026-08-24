import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_opening_model.freezed.dart';
part 'school_opening_model.g.dart';

/// Spec §31 — سکولوں کو کھلا رکھنا (keeping schools open). Repeated closures
/// for the same school are what drives the admin alert described in the spec;
/// [isOpen] + [checkDate] are the fields that query feeds off.
@freezed
abstract class SchoolOpeningModel with _$SchoolOpeningModel {
  const factory SchoolOpeningModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime checkDate,
    @Default(true) bool isOpen,
    String? openingTime,
    String? closingTime,
    @Default(false) bool headTeacherPresent,
    @Default(0) int teachersPresent,
    @Default(0) int studentsPresent,
    String? reasonIfClosed,
    String? actionRequired,
    String? verifiedByUid,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _SchoolOpeningModel;

  const SchoolOpeningModel._();

  factory SchoolOpeningModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolOpeningModelFromJson(json);

  static const Set<String> dateFields = <String>{'checkDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'checkDate';
}
