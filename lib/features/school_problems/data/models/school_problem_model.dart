import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_problem_model.freezed.dart';
part 'school_problem_model.g.dart';

enum ProblemCategory {
  infrastructure,
  furniture,
  water,
  toilets,
  boundaryWall,
  electricity,
  classroom,
  ece,
  cleanliness,
  staffing,
  safety,
  academic,
  other,
}

enum ProblemPriority { low, medium, high, critical }

enum ProblemStatus { open, inProgress, resolved, closed }

@freezed
abstract class SchoolProblemModel with _$SchoolProblemModel {
  const factory SchoolProblemModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String title,
    String? titleUrdu,
    required ProblemCategory category,
    required String description,
    String? descriptionUrdu,
    @Default(ProblemPriority.medium) ProblemPriority priority,
    required DateTime dateReported,
    String? requiredSupport,
    String? assignedToUid,
    String? assignedToName,
    DateTime? expectedResolutionDate,
    @Default(ProblemStatus.open) ProblemStatus status,
    String? resolutionNotes,
    DateTime? resolvedAt,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(<String>[]) List<String> resolutionEvidenceUrls,
    required String reportedByUid,
    required String reportedByName,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _SchoolProblemModel;

  const SchoolProblemModel._();

  factory SchoolProblemModel.fromJson(Map<String, dynamic> json) => _$SchoolProblemModelFromJson(json);

  static const Set<String> dateFields = <String>{
    'dateReported',
    'expectedResolutionDate',
    'resolvedAt',
    'createdAt',
    'updatedAt',
  };

  bool get isCritical => priority == ProblemPriority.critical;
}
