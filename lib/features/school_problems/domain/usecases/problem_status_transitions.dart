import '../../../../core/constants/app_constants.dart';
import '../../data/models/school_problem_model.dart';

/// Roles permitted to move a problem through its workflow. Mirrors the
/// `school_problems` update rule in firebase/firestore.rules — a
/// school_leader may edit their own report's content but not resolve it, so
/// the UI and the security rules never disagree about who can do what.
const List<AppRole> statusManagerRoles = <AppRole>[
  AppRole.monitoringOfficer,
  AppRole.circleAdmin,
  AppRole.subDivisionAdmin,
  AppRole.districtAdmin,
  AppRole.superAdmin,
];

bool canManageProblemStatus(AppRole? role) => role != null && statusManagerRoles.contains(role);

/// The transitions that are legal from a given state. Deliberately excludes
/// Open → Closed so a problem cannot be closed without first being resolved,
/// and allows Resolved → In Progress so a premature resolution can be reopened.
List<ProblemStatus> nextProblemStatuses(ProblemStatus current) => switch (current) {
      ProblemStatus.open => const <ProblemStatus>[ProblemStatus.inProgress, ProblemStatus.resolved],
      ProblemStatus.inProgress => const <ProblemStatus>[ProblemStatus.resolved],
      ProblemStatus.resolved => const <ProblemStatus>[ProblemStatus.closed, ProblemStatus.inProgress],
      ProblemStatus.closed => const <ProblemStatus>[],
    };

bool isValidProblemTransition(ProblemStatus from, ProblemStatus to) =>
    nextProblemStatuses(from).contains(to);
