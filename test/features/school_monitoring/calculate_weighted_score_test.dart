import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/features/school_monitoring/data/models/monitoring_config_model.dart';
import 'package:school_leaders_di_khan/features/school_monitoring/data/models/scoring_criterion_model.dart';
import 'package:school_leaders_di_khan/features/school_monitoring/domain/usecases/calculate_weighted_score.dart';

CriterionScoreModel _c({
  required double weight,
  required double maxScore,
  required double achieved,
}) {
  return CriterionScoreModel(
    criterionId: 'x',
    label: 'X',
    weight: weight,
    maxScore: maxScore,
    achievedScore: achieved,
  );
}

void main() {
  group('calculateWeightedScore', () {
    test('returns 0 for an empty criteria list', () {
      expect(calculateWeightedScore(const <CriterionScoreModel>[]), 0);
    });

    test('returns 0 when all weights are zero (avoids division by zero)', () {
      final List<CriterionScoreModel> scores = <CriterionScoreModel>[
        _c(weight: 0, maxScore: 100, achieved: 100),
        _c(weight: 0, maxScore: 100, achieved: 50),
      ];
      expect(calculateWeightedScore(scores), 0);
    });

    test('perfect scores across equal weights yields 100', () {
      final List<CriterionScoreModel> scores = <CriterionScoreModel>[
        _c(weight: 15, maxScore: 100, achieved: 100),
        _c(weight: 15, maxScore: 100, achieved: 100),
        _c(weight: 20, maxScore: 100, achieved: 100),
        _c(weight: 10, maxScore: 100, achieved: 100),
        _c(weight: 10, maxScore: 100, achieved: 100),
        _c(weight: 10, maxScore: 100, achieved: 100),
        _c(weight: 10, maxScore: 100, achieved: 100),
        _c(weight: 10, maxScore: 100, achieved: 100),
      ];
      expect(calculateWeightedScore(scores), 100.0);
    });

    test('partial scores compute a proportional weighted result', () {
      final List<CriterionScoreModel> scores = <CriterionScoreModel>[
        _c(weight: 50, maxScore: 100, achieved: 100),
        _c(weight: 50, maxScore: 100, achieved: 0),
      ];
      expect(calculateWeightedScore(scores), 50.0);
    });

    test('handles a zero maxScore criterion by treating it as 0 rather than throwing', () {
      final List<CriterionScoreModel> scores = <CriterionScoreModel>[
        _c(weight: 50, maxScore: 0, achieved: 0),
        _c(weight: 50, maxScore: 100, achieved: 100),
      ];
      expect(calculateWeightedScore(scores), 50.0);
    });

    test('weights need not sum to 100 — result is still normalized', () {
      final List<CriterionScoreModel> scores = <CriterionScoreModel>[
        _c(weight: 2, maxScore: 10, achieved: 10),
        _c(weight: 1, maxScore: 10, achieved: 0),
      ];
      // (1.0*2 + 0.0*1) / 3 * 100 = 66.7
      expect(calculateWeightedScore(scores), 66.7);
    });

    test(
      'clamps an achieved score above maxScore instead of exceeding 100% for that criterion',
      () {
        final List<CriterionScoreModel> scores = <CriterionScoreModel>[
          _c(weight: 100, maxScore: 100, achieved: 150),
        ];
        expect(calculateWeightedScore(scores), 100.0);
      },
    );
  });

  group('resolveGrade', () {
    final List<GradeBandModel> bands = MonitoringConfigModel.defaults().gradeBands;

    test('93 resolves to excellent', () {
      expect(resolveGrade(93, bands), 'excellent');
    });

    test('82 resolves to veryGood', () {
      expect(resolveGrade(82, bands), 'veryGood');
    });

    test('70 resolves to good', () {
      expect(resolveGrade(70, bands), 'good');
    });

    test('55 resolves to needsImprovement', () {
      expect(resolveGrade(55, bands), 'needsImprovement');
    });

    test('10 resolves to critical', () {
      expect(resolveGrade(10, bands), 'critical');
    });

    test('empty bands falls back to critical rather than throwing', () {
      expect(resolveGrade(90, const <GradeBandModel>[]), 'critical');
    });

    test('boundary value 90 is excellent, 89.99 is veryGood', () {
      expect(resolveGrade(90, bands), 'excellent');
      expect(resolveGrade(89.99, bands), 'veryGood');
    });
  });
}
