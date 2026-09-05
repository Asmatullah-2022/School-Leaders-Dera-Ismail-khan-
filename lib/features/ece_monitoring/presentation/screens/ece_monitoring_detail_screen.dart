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
import '../../data/models/ece_monitoring_model.dart';
import '../widgets/ece_status_labels.dart';
import 'ece_monitoring_form_screen.dart';

class EceMonitoringDetailScreen extends ConsumerWidget {
  const EceMonitoringDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<EceMonitoringModel?> async = ref.watch(eceMonitoringByIdProvider(recordId));

    return AppScaffold(
      title: l10n.more_ece,
      actions: <Widget>[
        async.maybeWhen(
          data: (EceMonitoringModel? e) => e == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => EceMonitoringFormScreen(existing: e)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (EceMonitoringModel? e) {
          if (e == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      DateFormat.yMMMd().format(e.visitDate),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Chip(
                    label: Text(eceStatusLabel(l10n, e.status)),
                    backgroundColor: eceStatusColor(e.status).withValues(alpha: 0.15),
                    labelStyle: TextStyle(color: eceStatusColor(e.status)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _row(
                context,
                l10n.ece_childrenPresent,
                '${e.childrenPresent} / ${e.childrenEnrolled}  (${(e.attendanceRate * 100).toStringAsFixed(0)}%)',
              ),
              const SizedBox(height: 12),
              _checkRow(context, l10n.ece_eceRoomAvailable, e.eceRoomAvailable),
              _checkRow(context, l10n.ece_functional, e.functional),
              _checkRow(context, l10n.ece_teacherAvailable, e.teacherAvailable),
              _checkRow(context, l10n.ece_furnitureAdequate, e.furnitureAdequate),
              _checkRow(context, l10n.ece_learningMaterialsAvailable, e.learningMaterialsAvailable),
              _checkRow(context, l10n.ece_toysAvailable, e.toysAvailable),
              _checkRow(context, l10n.ece_learningCornersSetUp, e.learningCornersSetUp),
              _checkRow(context, l10n.ece_decorationAdequate, e.decorationAdequate),
              _checkRow(context, l10n.ece_cleanlinessSatisfactory, e.cleanlinessSatisfactory),
              _checkRow(context, l10n.ece_safetySatisfactory, e.safetySatisfactory),
              if (e.remarks != null) ...<Widget>[
                const SizedBox(height: 8),
                _row(context, l10n.common_remarks, e.remarks!),
              ],
              if (e.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in e.evidencePhotoUrls)
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
