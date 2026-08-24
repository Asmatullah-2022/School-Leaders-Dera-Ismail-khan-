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
import '../../data/models/community_activity_model.dart';
import '../widgets/community_activity_labels.dart';
import 'community_activity_detail_screen.dart';
import 'community_activity_form_screen.dart';

class CommunityActivityListScreen extends ConsumerWidget {
  const CommunityActivityListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<CommunityActivityModel>> async = ref.watch(scopedCommunityActivitiesProvider);

    return AppScaffold(
      title: l10n.more_community,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (_) => const CommunityActivityFormScreen()),
        ),
        icon: const Icon(Icons.add),
        label: Text(l10n.community_addActivity),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<CommunityActivityModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.community_noActivities, icon: Icons.diversity_3_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final CommunityActivityModel a = items[index];
              return Card(
                child: ListTile(
                  title: Text(communityActivityTypeLabel(l10n, a.activityType)),
                  subtitle: Text('${l10n.community_participants}: ${a.participantsCount}'),
                  trailing: Text(DateFormat.yMMMd().format(a.activityDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => CommunityActivityDetailScreen(activityId: a.id)),
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
