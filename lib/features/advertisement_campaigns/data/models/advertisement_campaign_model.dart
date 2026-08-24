import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_campaign_model.freezed.dart';
part 'advertisement_campaign_model.g.dart';

/// Spec §17 — تشہیری مہم (advertisement & banners).
enum AdvertisementType {
  banner,
  poster,
  pamphlet,
  schoolWallAwareness,
  communityAnnouncement,
  mosqueAnnouncement,
  other,
}

@freezed
abstract class AdvertisementCampaignModel with _$AdvertisementCampaignModel {
  const factory AdvertisementCampaignModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String campaignTitle,
    required AdvertisementType advertisementType,
    required DateTime activityDate,
    String? location,
    @Default(0) int quantity,
    String? description,
    String? descriptionUrdu,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _AdvertisementCampaignModel;

  const AdvertisementCampaignModel._();

  factory AdvertisementCampaignModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementCampaignModelFromJson(json);

  static const Set<String> dateFields = <String>{'activityDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'activityDate';
}
