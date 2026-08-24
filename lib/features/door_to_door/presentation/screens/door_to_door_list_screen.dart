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
import '../../data/models/door_to_door_activity_model.dart';
import 'door_to_door_detail_screen.dart';
import 'door_to_door_form_screen.dart';

class DoorToDoorListScreen extends ConsumerWidget {
  const DoorToDoorListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<DoorToDoorActivityModel>> async = ref.watch(scopedDoorToDoorProvider);

    return AppScaffold(
      title: l10n.doorToDoor_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const DoorToDoorFormScreen()),
        ),
        icon: const Icon(Icons.add),
        label: Text(l10n.doorToDoor_addActivity),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<DoorToDoorActivityModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.doorToDoor_noActivities, icon: Icons.door_front_door_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final DoorToDoorActivityModel a = items[index];
              return Card(
                child: ListTile(
                  title: Text(a.area ?? DateFormat.yMMMd().format(a.activityDate)),
                  subtitle: Text(
                    '${l10n.doorToDoor_housesVisited}: ${a.housesVisited} · '
                    '${l10n.doorToDoor_childrenEnrolled}: ${a.childrenEnrolled}',
                  ),
                  trailing: Text(DateFormat.yMMMd().format(a.activityDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => DoorToDoorDetailScreen(activityId: a.id)),
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
