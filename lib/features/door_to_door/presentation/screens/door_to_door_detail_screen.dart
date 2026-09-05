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
import 'door_to_door_form_screen.dart';

class DoorToDoorDetailScreen extends ConsumerWidget {
  const DoorToDoorDetailScreen({super.key, required this.activityId});

  final String activityId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<DoorToDoorActivityModel?> async = ref.watch(
      doorToDoorByIdProvider(activityId),
    );

    return AppScaffold(
      title: l10n.doorToDoor_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (DoorToDoorActivityModel? a) => a == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => DoorToDoorFormScreen(existing: a)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (DoorToDoorActivityModel? a) {
          if (a == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(
                DateFormat.yMMMd().format(a.activityDate),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              if (a.area != null) _row(context, l10n.doorToDoor_area, a.area!),
              if (a.teamMembers.isNotEmpty)
                _row(context, l10n.doorToDoor_teamMembers, a.teamMembers.join(', ')),
              _row(context, l10n.doorToDoor_housesVisited, '${a.housesVisited}'),
              _row(context, l10n.doorToDoor_childrenIdentified, '${a.childrenIdentified}'),
              _row(context, l10n.doorToDoor_childrenEnrolled, '${a.childrenEnrolled}'),
              _row(context, l10n.doorToDoor_parentsContacted, '${a.parentsContacted}'),
              if (a.remarks != null) _row(context, l10n.common_remarks, a.remarks!),
              if (a.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in a.evidencePhotoUrls)
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
