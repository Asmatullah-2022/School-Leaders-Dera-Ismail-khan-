import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/core/constants/app_constants.dart';
import 'package:school_leaders_di_khan/features/school_problems/data/models/school_problem_model.dart';
import 'package:school_leaders_di_khan/features/school_problems/domain/usecases/problem_status_transitions.dart';

void main() {
  group('canManageProblemStatus', () {
    test('school leaders cannot change problem status', () {
      expect(canManageProblemStatus(AppRole.schoolLeader), isFalse);
    });

    test('a null role (signed out / still loading) cannot change status', () {
      expect(canManageProblemStatus(null), isFalse);
    });

    test('monitoring officers and every admin tier can change status', () {
      for (final AppRole role in <AppRole>[
        AppRole.monitoringOfficer,
        AppRole.circleAdmin,
        AppRole.subDivisionAdmin,
        AppRole.districtAdmin,
        AppRole.superAdmin,
      ]) {
        expect(canManageProblemStatus(role), isTrue, reason: '$role should be able to manage status');
      }
    });
  });

  group('nextProblemStatuses', () {
    test('an open problem can start progress or be resolved directly', () {
      expect(
        nextProblemStatuses(ProblemStatus.open),
        containsAll(<ProblemStatus>[ProblemStatus.inProgress, ProblemStatus.resolved]),
      );
    });

    test('an open problem cannot be closed without being resolved first', () {
      expect(nextProblemStatuses(ProblemStatus.open), isNot(contains(ProblemStatus.closed)));
      expect(isValidProblemTransition(ProblemStatus.open, ProblemStatus.closed), isFalse);
    });

    test('an in-progress problem can only move to resolved', () {
      expect(nextProblemStatuses(ProblemStatus.inProgress), <ProblemStatus>[ProblemStatus.resolved]);
    });

    test('a resolved problem can be closed or reopened to in-progress', () {
      expect(
        nextProblemStatuses(ProblemStatus.resolved),
        containsAll(<ProblemStatus>[ProblemStatus.closed, ProblemStatus.inProgress]),
      );
    });

    test('a closed problem is terminal', () {
      expect(nextProblemStatuses(ProblemStatus.closed), isEmpty);
      for (final ProblemStatus target in ProblemStatus.values) {
        expect(isValidProblemTransition(ProblemStatus.closed, target), isFalse);
      }
    });

    test('no state lists itself as a valid next state', () {
      for (final ProblemStatus s in ProblemStatus.values) {
        expect(nextProblemStatuses(s), isNot(contains(s)), reason: '$s should not transition to itself');
      }
    });
  });
}
