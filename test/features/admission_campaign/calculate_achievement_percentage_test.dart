import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/features/admission_campaign/domain/usecases/calculate_achievement_percentage.dart';

void main() {
  group('calculateAchievementPercentage', () {
    test('returns 0 when target is 0 (avoids division by zero)', () {
      expect(calculateAchievementPercentage(targetEnrollment: 0, currentEnrollment: 50), 0);
    });

    test('returns 0 when target is negative', () {
      expect(calculateAchievementPercentage(targetEnrollment: -10, currentEnrollment: 50), 0);
    });

    test('computes exact percentage', () {
      expect(calculateAchievementPercentage(targetEnrollment: 200, currentEnrollment: 100), 50.0);
    });

    test('rounds to 1 decimal place', () {
      expect(calculateAchievementPercentage(targetEnrollment: 300, currentEnrollment: 100), 33.3);
    });

    test('allows exceeding 100% when actual enrollment beats target', () {
      expect(calculateAchievementPercentage(targetEnrollment: 100, currentEnrollment: 150), 150.0);
    });

    test('clamps extreme values to the display cap', () {
      expect(calculateAchievementPercentage(targetEnrollment: 1, currentEnrollment: 100000), 999.0);
    });

    test('returns 0 for zero current enrollment', () {
      expect(calculateAchievementPercentage(targetEnrollment: 100, currentEnrollment: 0), 0.0);
    });
  });
}
