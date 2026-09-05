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
import '../../data/models/cleanliness_model.dart';
import 'cleanliness_form_screen.dart';

class CleanlinessDetailScreen extends ConsumerWidget {
  const CleanlinessDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<CleanlinessModel?> async = ref.watch(cleanlinessByIdProvider(recordId));

    return AppScaffold(
      title: l10n.more_cleanliness,
      actions: <Widget>[
        async.maybeWhen(
          data: (CleanlinessModel? c) => c == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => CleanlinessFormScreen(existing: c)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (CleanlinessModel? c) {
          if (c == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      DateFormat.yMMMd().format(c.inspectionDate),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Text(
                    '${(c.score * 100).round()}%',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _checkRow(context, l10n.cleanliness_classroomsClean, c.classroomsClean),
              _checkRow(context, l10n.cleanliness_courtyardClean, c.courtyardClean),
              _checkRow(context, l10n.cleanliness_toiletsClean, c.toiletsClean),
              _checkRow(context, l10n.cleanliness_drinkingWaterAreaClean, c.drinkingWaterAreaClean),
              _checkRow(context, l10n.cleanliness_wasteManagedProperly, c.wasteManagedProperly),
              _checkRow(context, l10n.cleanliness_furnitureClean, c.furnitureClean),
              _checkRow(context, l10n.cleanliness_schoolWallsClean, c.schoolWallsClean),
              _checkRow(context, l10n.cleanliness_boundaryClean, c.boundaryClean),
              _checkRow(context, l10n.cleanliness_dailyCleaningDone, c.dailyCleaningDone),
              _checkRow(context, l10n.cleanliness_weeklyCleaningDone, c.weeklyCleaningDone),
              if (c.remarks != null) ...<Widget>[
                const SizedBox(height: 8),
                _row(context, l10n.common_remarks, c.remarks!),
              ],
              if (c.beforePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.cleanliness_beforePhotos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                _photoWrap(c.beforePhotoUrls),
              ],
              if (c.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.cleanliness_afterPhotos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                _photoWrap(c.evidencePhotoUrls),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _photoWrap(List<String> urls) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        for (final String url in urls)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
          ),
      ],
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

  Widget _checkRow(BuildContext context, String label, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: <Widget>[
          Icon(
            value ? Icons.check_circle : Icons.cancel,
            color: value ? Colors.green : Colors.red,
            size: 18,
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(label, style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
