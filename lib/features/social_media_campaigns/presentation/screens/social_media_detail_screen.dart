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
import 'social_media_form_screen.dart';

class SocialMediaDetailScreen extends ConsumerWidget {
  const SocialMediaDetailScreen({super.key, required this.campaignId});

  final String campaignId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<SocialMediaCampaignModel?> async = ref.watch(
      socialMediaByIdProvider(campaignId),
    );

    return AppScaffold(
      title: l10n.socialMedia_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (SocialMediaCampaignModel? a) => a == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => SocialMediaFormScreen(existing: a)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (SocialMediaCampaignModel? a) {
          if (a == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(a.campaignTitle, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 16),
              _row(context, l10n.socialMedia_platform, socialPlatformLabel(l10n, a.platform)),
              _row(context, l10n.common_date, DateFormat.yMMMd().format(a.postDate)),
              if (a.postUrl != null) _row(context, l10n.socialMedia_postUrl, a.postUrl!),
              if (a.reach != null) _row(context, l10n.socialMedia_reach, '${a.reach}'),
              if (a.engagement != null)
                _row(context, l10n.socialMedia_engagement, '${a.engagement}'),
              if (a.description != null) _row(context, l10n.update_description, a.description!),
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
