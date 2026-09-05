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
import '../../data/models/plantation_model.dart';
import 'plantation_form_screen.dart';

class PlantationDetailScreen extends ConsumerWidget {
  const PlantationDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<PlantationModel?> async = ref.watch(plantationByIdProvider(recordId));

    return AppScaffold(
      title: l10n.more_plantation,
      actions: <Widget>[
        async.maybeWhen(
          data: (PlantationModel? p) => p == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => PlantationFormScreen(existing: p)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (PlantationModel? p) {
          if (p == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(
                '${l10n.plantation_treesPlanted}: ${p.treesPlanted}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              _row(context, l10n.common_date, DateFormat.yMMMd().format(p.plantationDate)),
              if (p.treeTypes.isNotEmpty)
                _row(context, l10n.plantation_treeTypes, p.treeTypes.join(', ')),
              if (p.location != null) _row(context, l10n.advertisement_location, p.location!),
              _row(context, l10n.plantation_studentsInvolved, '${p.studentsInvolved}'),
              _row(context, l10n.plantation_teachersInvolved, '${p.teachersInvolved}'),
              _row(
                context,
                l10n.plantation_communityMembersInvolved,
                '${p.communityMembersInvolved}',
              ),
              if (p.survivalRatePercent != null)
                _row(context, l10n.plantation_survivalRate, '${p.survivalRatePercent}%'),
              if (p.remarks != null) _row(context, l10n.common_remarks, p.remarks!),
              if (p.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in p.evidencePhotoUrls)
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
