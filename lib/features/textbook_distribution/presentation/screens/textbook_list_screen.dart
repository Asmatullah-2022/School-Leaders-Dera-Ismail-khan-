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
import '../../data/models/textbook_distribution_model.dart';
import 'textbook_detail_screen.dart';
import 'textbook_form_screen.dart';

class TextbookListScreen extends ConsumerWidget {
  const TextbookListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<TextbookDistributionModel>> async = ref.watch(scopedTextbooksProvider);

    return AppScaffold(
      title: l10n.textbook_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const TextbookFormScreen()),
        ),
        icon: const Icon(Icons.add),
        label: Text(l10n.textbook_addRecord),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<TextbookDistributionModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.textbook_noRecords, icon: Icons.menu_book_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final TextbookDistributionModel t = items[index];
              return Card(
                child: ListTile(
                  title: Text('${t.academicYear} · ${t.classGrade ?? '-'}'),
                  subtitle: Text(
                    '${l10n.textbook_booksDistributed}: ${t.booksDistributed} / ${t.booksRequired}'
                    '${t.shortage > 0 ? '  ·  ${l10n.textbook_shortage}: ${t.shortage}' : ''}',
                  ),
                  trailing: Text(DateFormat.yMMMd().format(t.distributionDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => TextbookDetailScreen(recordId: t.id)),
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
