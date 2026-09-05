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
import 'ece_monitoring_detail_screen.dart';
import 'ece_monitoring_form_screen.dart';

class EceMonitoringListScreen extends ConsumerWidget {
  const EceMonitoringListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<EceMonitoringModel>> async = ref.watch(scopedEceMonitoringProvider);

    return AppScaffold(
      title: l10n.more_ece,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const EceMonitoringFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.ece_addVisit),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<EceMonitoringModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.ece_noVisits, icon: Icons.child_care_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final EceMonitoringModel e = items[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: eceStatusColor(e.status).withValues(alpha: 0.15),
                    child: Icon(Icons.child_care_outlined, color: eceStatusColor(e.status)),
                  ),
                  title: Text(eceStatusLabel(l10n, e.status)),
                  subtitle: Text('${e.childrenPresent} / ${e.childrenEnrolled}'),
                  trailing: Text(DateFormat.yMMMd().format(e.visitDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => EceMonitoringDetailScreen(recordId: e.id),
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
