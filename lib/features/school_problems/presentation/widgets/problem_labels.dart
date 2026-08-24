import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/school_problem_model.dart';

/// Single source of truth for problem-category display strings, shared by the
/// form dropdown, list subtitle, and detail screen.
String problemCategoryLabel(AppLocalizations l10n, ProblemCategory category) => switch (category) {
      ProblemCategory.infrastructure => l10n.problem_category_infrastructure,
      ProblemCategory.furniture => l10n.problem_category_furniture,
      ProblemCategory.water => l10n.problem_category_water,
      ProblemCategory.toilets => l10n.problem_category_toilets,
      ProblemCategory.boundaryWall => l10n.problem_category_boundaryWall,
      ProblemCategory.electricity => l10n.problem_category_electricity,
      ProblemCategory.classroom => l10n.problem_category_classroom,
      ProblemCategory.ece => l10n.problem_category_ece,
      ProblemCategory.cleanliness => l10n.problem_category_cleanliness,
      ProblemCategory.staffing => l10n.problem_category_staffing,
      ProblemCategory.safety => l10n.problem_category_safety,
      ProblemCategory.academic => l10n.problem_category_academic,
      ProblemCategory.other => l10n.problem_category_other,
    };
