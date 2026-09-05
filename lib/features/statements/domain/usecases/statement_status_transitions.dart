import '../../../../core/constants/app_constants.dart';
import '../../data/models/statement_model.dart';

/// Roles permitted to review/approve/return a submitted statement. A
/// school_leader may only draft and submit their own statement — moving it
/// through review is a supervisory action.
const List<AppRole> statementReviewerRoles = <AppRole>[
  AppRole.circleAdmin,
  AppRole.subDivisionAdmin,
  AppRole.districtAdmin,
  AppRole.superAdmin,
];

bool canReviewStatement(AppRole? role) => role != null && statementReviewerRoles.contains(role);

/// The transitions a *reviewer* may make from a given state.
List<StatementStatus> nextReviewerStatuses(StatementStatus current) => switch (current) {
  StatementStatus.submitted => const <StatementStatus>[StatementStatus.underReview],
  StatementStatus.underReview => const <StatementStatus>[
    StatementStatus.approved,
    StatementStatus.returned,
  ],
  StatementStatus.draft || StatementStatus.approved || StatementStatus.returned => const <StatementStatus>[],
};
