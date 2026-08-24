import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/ptc_priority_model.dart';
import '../providers/ptc_providers.dart';
import '../widgets/ptc_labels.dart';
import 'ptc_priority_form_screen.dart';

class PtcPriorityDetailScreen extends ConsumerWidget {
  const PtcPriorityDetailScreen({super.key, required this.priorityId});

  final String priorityId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<PtcPriorityModel?> async = ref.watch(ptcPriorityByIdProvider(priorityId));

    return AppScaffold(
      title: l10n.more_ptc,
      actions: <Widget>[
        async.maybeWhen(
          data: (PtcPriorityModel? p) => p == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => PtcPriorityFormScreen(existing: p)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (PtcPriorityModel? p) {
          if (p == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: ptcStatusColor(p.status),
                    child: Text(
                      '${p.rank}',
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(p.priorityTitle, style: Theme.of(context).textTheme.headlineSmall),
                  ),
                ],
              ),
              if (p.priorityTitleUrdu != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(p.priorityTitleUrdu!, style: Theme.of(context).textTheme.titleMedium),
                ),
              const Divider(height: 32),
              _row(context, l10n.ptc_meetingDate, DateFormat.yMMMd().format(p.meetingDate)),
              _row(context, l10n.ptc_category, ptcCategoryLabel(l10n, p.category)),
              _row(context, l10n.ptc_priorityLevel, ptcPriorityLevelLabel(l10n, p.priorityLevel)),
              _row(context, l10n.common_status, ptcStatusLabel(l10n, p.status)),
              const Divider(height: 32),
              _row(context, l10n.ptc_estimatedCost, p.estimatedCost.toStringAsFixed(0)),
              _row(context, l10n.ptc_availableFunds, p.availableFunds.toStringAsFixed(0)),
              _row(context, l10n.ptc_requiredFunds, p.requiredFunds.toStringAsFixed(0)),
              if (p.proposedAction != null) ...<Widget>[
                const Divider(height: 32),
                _row(context, l10n.ptc_proposedAction, p.proposedAction!),
              ],
              if (p.decision != null) _row(context, l10n.ptc_decision, p.decision!),
              if (p.responsiblePersonName != null)
                _row(context, l10n.ptc_responsiblePerson, p.responsiblePersonName!),
              if (p.targetDate != null)
                _row(context, l10n.ptc_targetDate, DateFormat.yMMMd().format(p.targetDate!)),
              if (p.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const Divider(height: 32),
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
