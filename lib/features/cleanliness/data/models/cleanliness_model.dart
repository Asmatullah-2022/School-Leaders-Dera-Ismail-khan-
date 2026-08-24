import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleanliness_model.freezed.dart';
part 'cleanliness_model.g.dart';

/// Spec §24 — صفائی ستھرائی (school cleanliness inspection), including the
/// before/after photo evidence the spec calls for.
@freezed
abstract class CleanlinessModel with _$CleanlinessModel {
  const factory CleanlinessModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime inspectionDate,
    @Default(false) bool classroomsClean,
    @Default(false) bool courtyardClean,
    @Default(false) bool toiletsClean,
    @Default(false) bool drinkingWaterAreaClean,
    @Default(false) bool wasteManagedProperly,
    @Default(false) bool furnitureClean,
    @Default(false) bool schoolWallsClean,
    @Default(false) bool boundaryClean,
    @Default(false) bool dailyCleaningDone,
    @Default(false) bool weeklyCleaningDone,
    String? remarks,
    @Default(<String>[]) List<String> beforePhotoUrls,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _CleanlinessModel;

  const CleanlinessModel._();

  factory CleanlinessModel.fromJson(Map<String, dynamic> json) => _$CleanlinessModelFromJson(json);

  static const Set<String> dateFields = <String>{'inspectionDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'inspectionDate';

  /// Share of the 10 checklist items that passed, for at-a-glance reporting.
  double get score {
    final List<bool> checks = <bool>[
      classroomsClean,
      courtyardClean,
      toiletsClean,
      drinkingWaterAreaClean,
      wasteManagedProperly,
      furnitureClean,
      schoolWallsClean,
      boundaryClean,
      dailyCleaningDone,
      weeklyCleaningDone,
    ];
    return checks.where((bool c) => c).length / checks.length;
  }
}
