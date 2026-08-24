import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_functionality_model.freezed.dart';
part 'school_functionality_model.g.dart';

/// Spec §30 — سکول کی فعالیت (school functionality assessment).
enum FunctionalityStatus { functional, partiallyFunctional, needsAttention, nonFunctional }

@freezed
abstract class SchoolFunctionalityModel with _$SchoolFunctionalityModel {
  const factory SchoolFunctionalityModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime assessmentDate,
    @Default(true) bool schoolOpen,
    @Default(false) bool headTeacherPresent,
    @Default(0) int teachersPresent,
    @Default(0) int teachersTotal,
    @Default(0) int studentsPresent,
    @Default(0) int studentsTotal,
    @Default(false) bool classesConducted,
    @Default(false) bool teachingActivityObserved,
    @Default(false) bool cleanlinessSatisfactory,
    @Default(false) bool basicFacilitiesAvailable,
    @Default(false) bool timetableDisplayed,
    @Default(false) bool morningAssemblyHeld,
    @Default(false) bool learningEnvironmentSatisfactory,
    @Default(FunctionalityStatus.functional) FunctionalityStatus overallStatus,
    String? remarks,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _SchoolFunctionalityModel;

  const SchoolFunctionalityModel._();

  factory SchoolFunctionalityModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolFunctionalityModelFromJson(json);

  static const Set<String> dateFields = <String>{'assessmentDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'assessmentDate';

  double get teacherAttendanceRate => teachersTotal > 0 ? teachersPresent / teachersTotal : 0;

  double get studentAttendanceRate => studentsTotal > 0 ? studentsPresent / studentsTotal : 0;
}
