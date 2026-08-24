import 'package:freezed_annotation/freezed_annotation.dart';

part 'plantation_model.freezed.dart';
part 'plantation_model.g.dart';

/// Spec §25 — شجر کاری مہم (tree plantation campaign).
@freezed
abstract class PlantationModel with _$PlantationModel {
  const factory PlantationModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime plantationDate,
    @Default(0) int treesPlanted,
    @Default(<String>[]) List<String> treeTypes,
    @Default(0) int studentsInvolved,
    @Default(0) int teachersInvolved,
    @Default(0) int communityMembersInvolved,
    String? location,

    /// Recorded on a later follow-up visit, so it stays nullable until known.
    double? survivalRatePercent,
    String? remarks,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _PlantationModel;

  const PlantationModel._();

  factory PlantationModel.fromJson(Map<String, dynamic> json) => _$PlantationModelFromJson(json);

  static const Set<String> dateFields = <String>{'plantationDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'plantationDate';
}
