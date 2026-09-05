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
import '../../data/models/social_media_campaign_model.dart';
import '../widgets/social_media_labels.dart';
import 'social_media_detail_screen.dart';
import 'social_media_form_screen.dart';

class SocialMediaListScreen extends ConsumerWidget {
  const SocialMediaListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<SocialMediaCampaignModel>> async = ref.watch(scopedSocialMediaProvider);

    return AppScaffold(
      title: l10n.socialMedia_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const SocialMediaFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.socialMedia_addCampaign),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<SocialMediaCampaignModel> items) {
          if (items.isEmpty) {
            return EmptyState(message: l10n.socialMedia_noCampaigns, icon: Icons.share_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final SocialMediaCampaignModel a = items[index];
              return Card(
                child: ListTile(
                  title: Text(a.campaignTitle),
                  subtitle: Text(socialPlatformLabel(l10n, a.platform)),
                  trailing: Text(DateFormat.yMMMd().format(a.postDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => SocialMediaDetailScreen(campaignId: a.id),
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
