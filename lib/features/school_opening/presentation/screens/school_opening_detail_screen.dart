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
import '../../data/models/school_opening_model.dart';
import 'school_opening_form_screen.dart';

class SchoolOpeningDetailScreen extends ConsumerWidget {
  const SchoolOpeningDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<SchoolOpeningModel?> async = ref.watch(schoolOpeningByIdProvider(recordId));

    return AppScaffold(
      title: l10n.schoolOpening_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (SchoolOpeningModel? o) => o == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => SchoolOpeningFormScreen(existing: o)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (SchoolOpeningModel? o) {
          if (o == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    o.isOpen ? Icons.check_circle : Icons.cancel,
                    color: o.isOpen ? Colors.green : Colors.red,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    o.isOpen ? l10n.schoolOpening_open : l10n.schoolOpening_closed,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _row(context, l10n.common_date, DateFormat.yMMMd().format(o.checkDate)),
              if (o.openingTime != null) _row(context, l10n.schoolOpening_openingTime, o.openingTime!),
              if (o.closingTime != null) _row(context, l10n.schoolOpening_closingTime, o.closingTime!),
              _row(
                context,
                l10n.functionality_headTeacherPresent,
                o.headTeacherPresent ? l10n.common_yes : l10n.common_no,
              ),
              _row(context, l10n.functionality_teachersPresent, '${o.teachersPresent}'),
              _row(context, l10n.functionality_studentsPresent, '${o.studentsPresent}'),
              if (o.reasonIfClosed != null) _row(context, l10n.schoolOpening_reasonIfClosed, o.reasonIfClosed!),
              if (o.actionRequired != null) _row(context, l10n.schoolOpening_actionRequired, o.actionRequired!),
              if (o.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in o.evidencePhotoUrls)
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
