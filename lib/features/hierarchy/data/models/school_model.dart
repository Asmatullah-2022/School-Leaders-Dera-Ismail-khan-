import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

enum SchoolLevel { primary, elementary, middle, high, higherSecondary }

enum SchoolGender { boys, girls, mixed }

enum BuildingCondition { good, needsRepair, critical }

@freezed
abstract class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    required String id,
    required String name,
    String? nameUrdu,
    required String emisCode,
    required String districtId,
    required String subDivisionId,
    required String circleId,
    required String clusterId,
    String? village,
    @Default(SchoolLevel.primary) SchoolLevel level,
    @Default(SchoolGender.mixed) SchoolGender gender,
    String? headTeacherName,
    String? headTeacherUid,
    String? contactPhone,
    @Default(0) int teachersCount,
    @Default(0) int boysCount,
    @Default(0) int girlsCount,
    @Default(0) int totalEnrollment,
    @Default(0) int classrooms,
    @Default(0) int toilets,
    @Default(false) bool drinkingWater,
    @Default(false) bool electricity,
    @Default(false) bool boundaryWall,
    @Default(false) bool eceRoom,
    @Default(false) bool playground,
    @Default(false) bool furniture,
    @Default(false) bool library,
    @Default(false) bool itFacilities,
    @Default(BuildingCondition.good) BuildingCondition buildingCondition,
    double? latitude,
    double? longitude,
    String? photoUrl,
    @Default(true) bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _SchoolModel;

  const SchoolModel._();

  factory SchoolModel.fromJson(Map<String, dynamic> json) => _$SchoolModelFromJson(json);

  static const Set<String> dateFields = <String>{'createdAt', 'updatedAt'};

  int get computedTotal => boysCount + girlsCount;
}
