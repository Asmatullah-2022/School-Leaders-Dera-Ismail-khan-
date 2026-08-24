// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement_campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvertisementCampaignModel _$AdvertisementCampaignModelFromJson(
  Map<String, dynamic> json,
) => _AdvertisementCampaignModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  campaignTitle: json['campaignTitle'] as String,
  advertisementType: $enumDecode(
    _$AdvertisementTypeEnumMap,
    json['advertisementType'],
  ),
  activityDate: DateTime.parse(json['activityDate'] as String),
  location: json['location'] as String?,
  quantity: (json['quantity'] as num?)?.toInt() ?? 0,
  description: json['description'] as String?,
  descriptionUrdu: json['descriptionUrdu'] as String?,
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

Map<String, dynamic> _$AdvertisementCampaignModelToJson(
  _AdvertisementCampaignModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'campaignTitle': instance.campaignTitle,
  'advertisementType': _$AdvertisementTypeEnumMap[instance.advertisementType]!,
  'activityDate': instance.activityDate.toIso8601String(),
  'location': instance.location,
  'quantity': instance.quantity,
  'description': instance.description,
  'descriptionUrdu': instance.descriptionUrdu,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$AdvertisementTypeEnumMap = {
  AdvertisementType.banner: 'banner',
  AdvertisementType.poster: 'poster',
  AdvertisementType.pamphlet: 'pamphlet',
  AdvertisementType.schoolWallAwareness: 'schoolWallAwareness',
  AdvertisementType.communityAnnouncement: 'communityAnnouncement',
  AdvertisementType.mosqueAnnouncement: 'mosqueAnnouncement',
  AdvertisementType.other: 'other',
};
