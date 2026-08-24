import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_report_model.freezed.dart';
part 'emergency_report_model.g.dart';

enum EmergencyType {
  fire,
  flood,
  buildingDamage,
  security,
  naturalDisaster,
  health,
  electricalHazard,
  waterProblem,
  boundaryWall,
  other,
}

enum EmergencySeverity { low, medium, high, critical }

enum EmergencyStatus { open, responding, resolved }

@freezed
abstract class EmergencyReportModel with _$EmergencyReportModel {
  const factory EmergencyReportModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required EmergencyType emergencyType,
    required EmergencySeverity severity,
    required String description,
    String? descriptionUrdu,
    required DateTime occurredAt,
    String? immediateAction,
    String? requiredSupport,
    String? contactPersonName,
    String? contactPhone,
    int? casualties,
    @Default(EmergencyStatus.open) EmergencyStatus status,
    String? resolutionNotes,
    DateTime? resolvedAt,
    double? latitude,
    double? longitude,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    required String reportedByUid,
    required String reportedByName,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _EmergencyReportModel;

  const EmergencyReportModel._();

  factory EmergencyReportModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyReportModelFromJson(json);

  static const Set<String> dateFields = <String>{
    'occurredAt',
    'resolvedAt',
    'createdAt',
    'updatedAt',
  };

  /// Critical, still-unresolved emergencies are what the admin dashboard
  /// highlights (spec §27).
  bool get isActiveCritical =>
      severity == EmergencySeverity.critical && status != EmergencyStatus.resolved;
}
