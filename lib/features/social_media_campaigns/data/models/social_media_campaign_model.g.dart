// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialMediaCampaignModel _$SocialMediaCampaignModelFromJson(
  Map<String, dynamic> json,
) => _SocialMediaCampaignModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  campaignTitle: json['campaignTitle'] as String,
  platform: $enumDecode(_$SocialPlatformEnumMap, json['platform']),
  postDate: DateTime.parse(json['postDate'] as String),
  description: json['description'] as String?,
  descriptionUrdu: json['descriptionUrdu'] as String?,
  postUrl: json['postUrl'] as String?,
  reach: (json['reach'] as num?)?.toInt(),
  engagement: (json['engagement'] as num?)?.toInt(),
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$SocialMediaCampaignModelToJson(
  _SocialMediaCampaignModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'campaignTitle': instance.campaignTitle,
  'platform': _$SocialPlatformEnumMap[instance.platform]!,
  'postDate': instance.postDate.toIso8601String(),
  'description': instance.description,
  'descriptionUrdu': instance.descriptionUrdu,
  'postUrl': instance.postUrl,
  'reach': instance.reach,
  'engagement': instance.engagement,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$SocialPlatformEnumMap = {
  SocialPlatform.facebook: 'facebook',
  SocialPlatform.whatsapp: 'whatsapp',
  SocialPlatform.tiktok: 'tiktok',
  SocialPlatform.instagram: 'instagram',
  SocialPlatform.youtube: 'youtube',
  SocialPlatform.other: 'other',
};
