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
import '../../data/models/advertisement_campaign_model.dart';
import '../widgets/advertisement_labels.dart';
import 'advertisement_detail_screen.dart';
import 'advertisement_form_screen.dart';

class AdvertisementListScreen extends ConsumerWidget {
  const AdvertisementListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<AdvertisementCampaignModel>> async = ref.watch(
      scopedAdvertisementsProvider,
    );

    return AppScaffold(
      title: l10n.advertisement_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const AdvertisementFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.advertisement_addCampaign),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<AdvertisementCampaignModel> items) {
          if (items.isEmpty) {
            return EmptyState(
              message: l10n.advertisement_noCampaigns,
              icon: Icons.campaign_outlined,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final AdvertisementCampaignModel a = items[index];
              return Card(
                child: ListTile(
                  title: Text(a.campaignTitle),
                  subtitle: Text(advertisementTypeLabel(l10n, a.advertisementType)),
                  trailing: Text(DateFormat.yMMMd().format(a.activityDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => AdvertisementDetailScreen(campaignId: a.id),
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
