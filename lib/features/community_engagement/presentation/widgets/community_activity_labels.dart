import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/community_activity_model.dart';

String communityActivityTypeLabel(AppLocalizations l10n, CommunityActivityType t) => switch (t) {
      CommunityActivityType.parentMeeting => l10n.community_type_parentMeeting,
      CommunityActivityType.communityMeeting => l10n.community_type_communityMeeting,
      CommunityActivityType.localCommunityEngagement => l10n.community_type_localEngagement,
      CommunityActivityType.awarenessSession => l10n.community_type_awarenessSession,
      CommunityActivityType.enrollmentCounseling => l10n.community_type_enrollmentCounseling,
      CommunityActivityType.ooscIdentification => l10n.community_type_ooscIdentification,
      CommunityActivityType.reEnrollmentActivity => l10n.community_type_reEnrollmentActivity,
      CommunityActivityType.communitySupport => l10n.community_type_communitySupport,
      CommunityActivityType.femaleParentEngagement => l10n.community_type_femaleParentEngagement,
    };
