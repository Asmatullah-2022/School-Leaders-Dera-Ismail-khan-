import 'package:freezed_annotation/freezed_annotation.dart';

part 'ece_monitoring_model.freezed.dart';
part 'ece_monitoring_model.g.dart';

/// Spec §26 — ECE روم (early childhood education room monitoring).
enum EceStatus { good, needsImprovement, critical }

@freezed
abstract class EceMonitoringModel with _$EceMonitoringModel {
  const factory EceMonitoringModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime visitDate,
    @Default(false) bool eceRoomAvailable,
    @Default(false) bool functional,
    @Default(false) bool teacherAvailable,
    @Default(false) bool furnitureAdequate,
    @Default(false) bool learningMaterialsAvailable,
    @Default(false) bool toysAvailable,
    @Default(false) bool learningCornersSetUp,
    @Default(false) bool decorationAdequate,
    @Default(false) bool cleanlinessSatisfactory,
    @Default(false) bool safetySatisfactory,
    @Default(0) int childrenEnrolled,
    @Default(0) int childrenPresent,
    @Default(EceStatus.needsImprovement) EceStatus status,
    String? remarks,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _EceMonitoringModel;

  const EceMonitoringModel._();

  factory EceMonitoringModel.fromJson(Map<String, dynamic> json) =>
      _$EceMonitoringModelFromJson(json);

  static const Set<String> dateFields = <String>{'visitDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'visitDate';

  double get attendanceRate => childrenEnrolled > 0 ? childrenPresent / childrenEnrolled : 0;
}
