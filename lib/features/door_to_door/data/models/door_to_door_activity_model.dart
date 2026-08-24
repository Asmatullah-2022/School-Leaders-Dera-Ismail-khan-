import 'package:freezed_annotation/freezed_annotation.dart';

part 'door_to_door_activity_model.freezed.dart';
part 'door_to_door_activity_model.g.dart';

/// Spec §14 — گھر گھر داخلہ مہم (door-to-door enrollment campaign).
@freezed
abstract class DoorToDoorActivityModel with _$DoorToDoorActivityModel {
  const factory DoorToDoorActivityModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime activityDate,
    String? area,
    @Default(<String>[]) List<String> teamMembers,
    @Default(0) int housesVisited,
    @Default(0) int childrenIdentified,
    @Default(0) int childrenEnrolled,
    @Default(0) int parentsContacted,
    String? remarks,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _DoorToDoorActivityModel;

  const DoorToDoorActivityModel._();

  factory DoorToDoorActivityModel.fromJson(Map<String, dynamic> json) =>
      _$DoorToDoorActivityModelFromJson(json);

  static const Set<String> dateFields = <String>{'activityDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'activityDate';
}
