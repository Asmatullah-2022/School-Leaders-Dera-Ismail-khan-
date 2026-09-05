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
import 'plantation_detail_screen.dart';
import 'plantation_form_screen.dart';

class PlantationListScreen extends ConsumerWidget {
  const PlantationListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<PlantationModel>> async = ref.watch(scopedPlantationProvider);

    return AppScaffold(
      title: l10n.more_plantation,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const PlantationFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.plantation_addActivity),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<PlantationModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.plantation_noActivities, icon: Icons.park_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final PlantationModel p = items[index];
              return Card(
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.park_outlined)),
                  title: Text('${l10n.plantation_treesPlanted}: ${p.treesPlanted}'),
                  subtitle: Text(p.location ?? DateFormat.yMMMd().format(p.plantationDate)),
                  trailing: Text(DateFormat.yMMMd().format(p.plantationDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => PlantationDetailScreen(recordId: p.id)),
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
