import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/statement_model.dart';
import '../widgets/statement_status_labels.dart';
import 'statement_detail_screen.dart';
import 'statement_form_screen.dart';

class StatementListScreen extends ConsumerWidget {
  const StatementListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<StatementModel>> async = ref.watch(scopedStatementsProvider);

    return AppScaffold(
      title: l10n.statement_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const StatementFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.statement_addStatement),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<StatementModel> items) {
          if (items.isEmpty) {
            return EmptyState(
              message: l10n.statement_noStatements,
              icon: Icons.description_outlined,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final StatementModel s = items[index];
              return Card(
                child: ListTile(
                  title: Text('${s.statementType} · ${s.period}'),
                  subtitle: Text(DateFormat.yMMMd().format(s.periodStart)),
                  trailing: Chip(
                    label: Text(statementStatusLabel(l10n, s.status)),
                    backgroundColor: statementStatusColor(s.status).withValues(alpha: 0.15),
                    labelStyle: TextStyle(color: statementStatusColor(s.status)),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => StatementDetailScreen(statementId: s.id),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
