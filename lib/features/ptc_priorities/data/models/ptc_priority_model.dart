import 'package:freezed_annotation/freezed_annotation.dart';

part 'ptc_priority_model.freezed.dart';
part 'ptc_priority_model.g.dart';

enum PtcCategory {
  furniture,
  buildingRepair,
  water,
  toilets,
  boundaryWall,
  electricity,
  classroom,
  ece,
  cleanliness,
  plantation,
  learningMaterials,
  other,
}

enum PtcPriorityLevel { low, medium, high, critical }

enum PtcStatus { proposed, approved, inProgress, completed }

@freezed
abstract class PtcPriorityModel with _$PtcPriorityModel {
  const factory PtcPriorityModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime meetingDate,
    required String priorityTitle,
    String? priorityTitleUrdu,
    /// 1-based ordering within a school's meeting; maintained by the
    /// drag-to-reorder list (see `reassignRanks`).
    @Default(1) int rank,
    required PtcCategory category,
    @Default(PtcPriorityLevel.medium) PtcPriorityLevel priorityLevel,
    String? proposedAction,
    @Default(0) double estimatedCost,
    @Default(0) double availableFunds,
    String? decision,
    String? responsiblePersonName,
    DateTime? targetDate,
    @Default(PtcStatus.proposed) PtcStatus status,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _PtcPriorityModel;

  const PtcPriorityModel._();

  factory PtcPriorityModel.fromJson(Map<String, dynamic> json) => _$PtcPriorityModelFromJson(json);

  static const Set<String> dateFields = <String>{
    'meetingDate',
    'targetDate',
    'createdAt',
    'updatedAt',
  };

  /// Shortfall between what the priority costs and what the PTC has on hand.
  double get requiredFunds {
    final double gap = estimatedCost - availableFunds;
    return gap > 0 ? gap : 0;
  }
}
