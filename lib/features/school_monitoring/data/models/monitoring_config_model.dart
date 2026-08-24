import 'package:freezed_annotation/freezed_annotation.dart';

import 'scoring_criterion_model.dart';

part 'monitoring_config_model.freezed.dart';
part 'monitoring_config_model.g.dart';

@freezed
abstract class MonitoringConfigModel with _$MonitoringConfigModel {
  const factory MonitoringConfigModel({
    required List<ScoringCriterionModel> criteria,
    required List<GradeBandModel> gradeBands,
    String? updatedBy,
    DateTime? updatedAt,
  }) = _MonitoringConfigModel;

  const MonitoringConfigModel._();

  factory MonitoringConfigModel.fromJson(Map<String, dynamic> json) =>
      _$MonitoringConfigModelFromJson(json);

  static const Set<String> dateFields = <String>{'updatedAt'};

  /// Weights per spec §32: Enrollment 15, Attendance 15, Teaching & Learning
  /// 20, Cleanliness 10, Infrastructure 10, ECE 10, PTC 10, School
  /// Management 10 — total 100, configurable by District Admin+.
  static MonitoringConfigModel defaults() {
    return const MonitoringConfigModel(
      criteria: <ScoringCriterionModel>[
        ScoringCriterionModel(
          id: 'enrollment',
          label: 'Enrollment',
          labelUrdu: 'انرولمنٹ',
          weight: 15,
        ),
        ScoringCriterionModel(
          id: 'attendance',
          label: 'Attendance',
          labelUrdu: 'حاضری',
          weight: 15,
        ),
        ScoringCriterionModel(
          id: 'teachingLearning',
          label: 'Teaching & Learning',
          labelUrdu: 'تدریس و تعلم',
          weight: 20,
        ),
        ScoringCriterionModel(
          id: 'cleanliness',
          label: 'Cleanliness',
          labelUrdu: 'صفائی ستھرائی',
          weight: 10,
        ),
        ScoringCriterionModel(
          id: 'infrastructure',
          label: 'Infrastructure',
          labelUrdu: 'بنیادی ڈھانچہ',
          weight: 10,
        ),
        ScoringCriterionModel(id: 'ece', label: 'ECE', labelUrdu: 'ای سی ای', weight: 10),
        ScoringCriterionModel(id: 'ptc', label: 'PTC', labelUrdu: 'PTC', weight: 10),
        ScoringCriterionModel(
          id: 'schoolManagement',
          label: 'School Management',
          labelUrdu: 'سکول مینجمنٹ',
          weight: 10,
        ),
      ],
      gradeBands: <GradeBandModel>[
        GradeBandModel(grade: 'excellent', minScore: 90, maxScore: 100),
        GradeBandModel(grade: 'veryGood', minScore: 80, maxScore: 89.99),
        GradeBandModel(grade: 'good', minScore: 65, maxScore: 79.99),
        GradeBandModel(grade: 'needsImprovement', minScore: 50, maxScore: 64.99),
        GradeBandModel(grade: 'critical', minScore: 0, maxScore: 49.99),
      ],
    );
  }
}
