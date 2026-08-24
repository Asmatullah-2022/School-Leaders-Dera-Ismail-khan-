import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/school_problem_model.dart';
import '../providers/school_problem_providers.dart';
import '../widgets/priority_chip.dart';
import '../widgets/problem_labels.dart';
import '../widgets/problem_status_badge.dart';
import 'school_problem_detail_screen.dart';
import 'school_problem_form_screen.dart';

class SchoolProblemListScreen extends ConsumerStatefulWidget {
  const SchoolProblemListScreen({super.key});

  @override
  ConsumerState<SchoolProblemListScreen> createState() => _SchoolProblemListScreenState();
}

class _SchoolProblemListScreenState extends ConsumerState<SchoolProblemListScreen> {
  ProblemStatus? _statusFilter;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<SchoolProblemModel>> problemsAsync = ref.watch(
      scopedSchoolProblemsProvider,
    );

    return AppScaffold(
      title: l10n.more_schoolProblems,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const SchoolProblemFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.problem_addProblem),
      ),
      body: problemsAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<SchoolProblemModel> problems) {
          final List<SchoolProblemModel> filtered = _statusFilter == null
              ? problems
              : problems.where((p) => p.status == _statusFilter).toList();

          return Column(
            children: <Widget>[
              _SummaryRow(problems: problems),
              SizedBox(
                height: 48,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  children: <Widget>[
                    _filterChip(null, l10n.common_viewAll),
                    for (final ProblemStatus s in ProblemStatus.values)
                      _filterChip(s, ProblemStatusBadge.label(l10n, s)),
                  ],
                ),
              ),
              Expanded(
                child: filtered.isEmpty
                    ? EmptyState(
                        message: l10n.problem_noProblems,
                        icon: Icons.report_problem_outlined,
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(12),
                        itemCount: filtered.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 8),
                        itemBuilder: (BuildContext context, int index) {
                          final SchoolProblemModel p = filtered[index];
                          return Card(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute<void>(
                                  builder: (_) => SchoolProblemDetailScreen(problemId: p.id),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Text(
                                            p.title,
                                            style: Theme.of(context).textTheme.titleMedium,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        ProblemStatusBadge(status: p.status),
                                      ],
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: <Widget>[
                                        PriorityChip(priority: p.priority),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            problemCategoryLabel(l10n, p.category),
                                            style: Theme.of(context).textTheme.bodySmall,
                                          ),
                                        ),
                                        Text(
                                          DateFormat.yMMMd().format(p.dateReported),
                                          style: Theme.of(context).textTheme.bodySmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _filterChip(ProblemStatus? status, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: _statusFilter == status,
        onSelected: (_) => setState(() => _statusFilter = status),
      ),
    );
  }
}

/// Spec §29 dashboard strip: Total Open / In Progress / Resolved / Critical.
class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.problems});

  final List<SchoolProblemModel> problems;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final int open = problems.where((p) => p.status == ProblemStatus.open).length;
    final int inProgress = problems.where((p) => p.status == ProblemStatus.inProgress).length;
    final int resolved = problems.where((p) => p.status == ProblemStatus.resolved).length;
    final int critical = problems
        .where((p) => p.isCritical && p.status != ProblemStatus.closed)
        .length;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Row(
        children: <Widget>[
          _tile(context, l10n.problem_summaryOpen, open, AppColors.criticalRed),
          _tile(context, l10n.problem_summaryInProgress, inProgress, AppColors.warningAmber),
          _tile(context, l10n.problem_summaryResolved, resolved, AppColors.success),
          _tile(context, l10n.problem_summaryCritical, critical, AppColors.criticalRed),
        ],
      ),
    );
  }

  Widget _tile(BuildContext context, String label, int value, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: <Widget>[
            Text(
              '$value',
              style: Theme.of(context).textTheme.titleLarge
                  ?.copyWith(color: color, fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
