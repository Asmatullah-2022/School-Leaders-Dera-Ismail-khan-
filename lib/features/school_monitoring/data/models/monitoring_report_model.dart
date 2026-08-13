import 'package:freezed_annotation/freezed_annotation.dart';

import 'scoring_criterion_model.dart';

part 'monitoring_report_model.freezed.dart';
part 'monitoring_report_model.g.dart';

enum MonitoringReportStatus { draft, submitted }

@freezed
abstract class MonitoringReportModel with _$MonitoringReportModel {
  const factory MonitoringReportModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime visitDate,
    required String monitoredByUid,
    required String monitoredByName,
    required List<CriterionScoreModel> criteriaScores,
    @Default(0.0) double totalWeightedScore,
    @Default('critical') String grade,
    String? remarks,
    String? remarksUrdu,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(MonitoringReportStatus.draft) MonitoringReportStatus status,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _MonitoringReportModel;

  const MonitoringReportModel._();

  factory MonitoringReportModel.fromJson(Map<String, dynamic> json) =>
      _$MonitoringReportModelFromJson(json);

  static const Set<String> dateFields = <String>{'visitDate', 'createdAt', 'updatedAt'};
}
