import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media_campaign_model.freezed.dart';
part 'social_media_campaign_model.g.dart';

/// Spec §18 — social media campaign tracking.
enum SocialPlatform { facebook, whatsapp, tiktok, instagram, youtube, other }

@freezed
abstract class SocialMediaCampaignModel with _$SocialMediaCampaignModel {
  const factory SocialMediaCampaignModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String campaignTitle,
    required SocialPlatform platform,
    required DateTime postDate,
    String? description,
    String? descriptionUrdu,
    String? postUrl,
    /// Reach/engagement are optional — platforms don't always expose them.
    int? reach,
    int? engagement,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _SocialMediaCampaignModel;

  const SocialMediaCampaignModel._();

  factory SocialMediaCampaignModel.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaCampaignModelFromJson(json);

  static const Set<String> dateFields = <String>{'postDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'postDate';
}
