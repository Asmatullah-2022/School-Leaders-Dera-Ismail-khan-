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
import 'textbook_form_screen.dart';

class TextbookDetailScreen extends ConsumerWidget {
  const TextbookDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<TextbookDistributionModel?> async = ref.watch(textbookByIdProvider(recordId));

    return AppScaffold(
      title: l10n.textbook_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (TextbookDistributionModel? t) => t == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => TextbookFormScreen(existing: t)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (TextbookDistributionModel? t) {
          if (t == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(t.academicYear, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              _row(context, l10n.common_date, DateFormat.yMMMd().format(t.distributionDate)),
              if (t.classGrade != null) _row(context, l10n.textbook_classGrade, t.classGrade!),
              if (t.subject != null) _row(context, l10n.textbook_subject, t.subject!),
              _row(context, l10n.textbook_booksRequired, '${t.booksRequired}'),
              _row(context, l10n.textbook_booksAvailable, '${t.booksAvailable}'),
              _row(context, l10n.textbook_booksDistributed, '${t.booksDistributed}'),
              _row(context, l10n.textbook_studentsReceiving, '${t.studentsReceiving}'),
              if (t.shortage > 0) _row(context, l10n.textbook_shortage, '${t.shortage}'),
              if (t.otherMaterials != null) _row(context, l10n.textbook_otherMaterials, t.otherMaterials!),
              if (t.supportRequired != null) _row(context, l10n.textbook_supportRequired, t.supportRequired!),
              if (t.remarks != null) _row(context, l10n.common_remarks, t.remarks!),
              if (t.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in t.evidencePhotoUrls)
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
