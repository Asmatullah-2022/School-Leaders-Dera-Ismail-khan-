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
import '../../data/models/parent_contact_model.dart';
import '../widgets/parent_contact_labels.dart';
import 'parent_contact_detail_screen.dart';
import 'parent_contact_form_screen.dart';

class ParentContactListScreen extends ConsumerWidget {
  const ParentContactListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<ParentContactModel>> async = ref.watch(scopedParentContactsProvider);

    return AppScaffold(
      title: l10n.parentContact_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const ParentContactFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.parentContact_addContact),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<ParentContactModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.parentContact_noContacts, icon: Icons.people_outline);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final ParentContactModel c = items[index];
              return Card(
                child: ListTile(
                  title: Text(c.studentName),
                  subtitle: Text('${c.parentName} · ${contactMethodLabel(l10n, c.contactMethod)}'),
                  trailing: Text(DateFormat.yMMMd().format(c.contactDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => ParentContactDetailScreen(contactId: c.id),
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
