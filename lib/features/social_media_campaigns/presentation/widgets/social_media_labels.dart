import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/social_media_campaign_model.dart';

String socialPlatformLabel(AppLocalizations l10n, SocialPlatform p) => switch (p) {
      SocialPlatform.facebook => l10n.socialMedia_platform_facebook,
      SocialPlatform.whatsapp => l10n.socialMedia_platform_whatsapp,
      SocialPlatform.tiktok => l10n.socialMedia_platform_tiktok,
      SocialPlatform.instagram => l10n.socialMedia_platform_instagram,
      SocialPlatform.youtube => l10n.socialMedia_platform_youtube,
      SocialPlatform.other => l10n.socialMedia_platform_other,
    };
