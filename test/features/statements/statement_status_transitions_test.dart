import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/core/constants/app_constants.dart';
import 'package:school_leaders_di_khan/features/statements/data/models/statement_model.dart';
import 'package:school_leaders_di_khan/features/statements/domain/usecases/statement_status_transitions.dart';

void main() {
  group('canReviewStatement', () {
    test('school leaders cannot review statements', () {
      expect(canReviewStatement(AppRole.schoolLeader), isFalse);
    });

    test('a null role cannot review', () {
      expect(canReviewStatement(null), isFalse);
    });

    test('circle admin and above can review', () {
      for (final AppRole role in <AppRole>[
        AppRole.circleAdmin,
        AppRole.subDivisionAdmin,
        AppRole.districtAdmin,
        AppRole.superAdmin,
      ]) {
        expect(canReviewStatement(role), isTrue, reason: '$role should be able to review');
      }
    });

    test('monitoring officers cannot review statements', () {
      expect(canReviewStatement(AppRole.monitoringOfficer), isFalse);
    });
  });

  group('nextReviewerStatuses', () {
    test('a submitted statement can move to under review', () {
      expect(nextReviewerStatuses(StatementStatus.submitted), <StatementStatus>[
        StatementStatus.underReview,
      ]);
    });

    test('a statement under review can be approved or returned', () {
      expect(
        nextReviewerStatuses(StatementStatus.underReview),
        containsAll(<StatementStatus>[StatementStatus.approved, StatementStatus.returned]),
      );
    });

    test('a draft has no reviewer transitions', () {
      expect(nextReviewerStatuses(StatementStatus.draft), isEmpty);
    });

    test('an approved statement has no further reviewer transitions', () {
      expect(nextReviewerStatuses(StatementStatus.approved), isEmpty);
    });

    test('a returned statement has no reviewer transitions (author must resubmit)', () {
      expect(nextReviewerStatuses(StatementStatus.returned), isEmpty);
    });
  });

  group('StatementModel.isEditable', () {
    StatementModel build(StatementStatus status) => StatementModel(
      id: 'x',
      schoolId: 's',
      clusterId: 'c',
      circleId: 'ci',
      subDivisionId: 'sd',
      districtId: 'd',
      statementType: 'enrolment',
      period: '2026-01',
      periodStart: DateTime(2026, 1),
      status: status,
      createdAt: DateTime(2026, 1),
      updatedAt: DateTime(2026, 1),
      createdBy: 'u',
    );

    test('draft and returned are editable', () {
      expect(build(StatementStatus.draft).isEditable, isTrue);
      expect(build(StatementStatus.returned).isEditable, isTrue);
    });

    test('submitted, under review and approved are not editable', () {
      expect(build(StatementStatus.submitted).isEditable, isFalse);
      expect(build(StatementStatus.underReview).isEditable, isFalse);
      expect(build(StatementStatus.approved).isEditable, isFalse);
    });
  });
}
