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
import 'parent_contact_form_screen.dart';

class ParentContactDetailScreen extends ConsumerWidget {
  const ParentContactDetailScreen({super.key, required this.contactId});

  final String contactId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<ParentContactModel?> async = ref.watch(parentContactByIdProvider(contactId));

    return AppScaffold(
      title: l10n.parentContact_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (ParentContactModel? c) => c == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => ParentContactFormScreen(existing: c)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (ParentContactModel? c) {
          if (c == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(c.studentName, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              _row(context, l10n.parentContact_parentName, c.parentName),
              if (c.contactNumber != null)
                _row(context, l10n.parentContact_contactNumber, c.contactNumber!),
              _row(
                context,
                l10n.parentContact_contactMethod,
                contactMethodLabel(l10n, c.contactMethod),
              ),
              _row(context, l10n.common_date, DateFormat.yMMMd().format(c.contactDate)),
              if (c.purpose != null) _row(context, l10n.parentContact_purpose, c.purpose!),
              if (c.discussion != null) _row(context, l10n.parentContact_discussion, c.discussion!),
              if (c.result != null) _row(context, l10n.parentContact_result, c.result!),
              _row(
                context,
                l10n.parentContact_followUpRequired,
                c.followUpRequired ? l10n.common_yes : l10n.common_no,
              ),
              if (c.followUpRequired && c.followUpDate != null)
                _row(
                  context,
                  l10n.parentContact_followUpDate,
                  DateFormat.yMMMd().format(c.followUpDate!),
                ),
              if (c.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in c.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _row(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 150, child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
          Expanded(child: Text(value, style: Theme.of(context).textTheme.bodyLarge)),
        ],
      ),
    );
  }
}
