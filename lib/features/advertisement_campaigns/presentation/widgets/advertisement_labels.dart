import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/advertisement_campaign_model.dart';

String advertisementTypeLabel(AppLocalizations l10n, AdvertisementType t) => switch (t) {
      AdvertisementType.banner => l10n.advertisement_type_banner,
      AdvertisementType.poster => l10n.advertisement_type_poster,
      AdvertisementType.pamphlet => l10n.advertisement_type_pamphlet,
      AdvertisementType.schoolWallAwareness => l10n.advertisement_type_schoolWallAwareness,
      AdvertisementType.communityAnnouncement => l10n.advertisement_type_communityAnnouncement,
      AdvertisementType.mosqueAnnouncement => l10n.advertisement_type_mosqueAnnouncement,
      AdvertisementType.other => l10n.advertisement_type_other,
    };
