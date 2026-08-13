// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdmissionCampaignModel _$AdmissionCampaignModelFromJson(
  Map<String, dynamic> json,
) => _AdmissionCampaignModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  academicYear: json['academicYear'] as String,
  targetEnrollment: (json['targetEnrollment'] as num).toInt(),
  previousEnrollment: (json['previousEnrollment'] as num?)?.toInt() ?? 0,
  currentEnrollment: (json['currentEnrollment'] as num?)?.toInt() ?? 0,
  newAdmissionsBoys: (json['newAdmissionsBoys'] as num?)?.toInt() ?? 0,
  newAdmissionsGirls: (json['newAdmissionsGirls'] as num?)?.toInt() ?? 0,
  ooscIdentified: (json['ooscIdentified'] as num?)?.toInt() ?? 0,
  ooscReenrolled: (json['ooscReenrolled'] as num?)?.toInt() ?? 0,
  doorToDoorVisits: (json['doorToDoorVisits'] as num?)?.toInt() ?? 0,
  parentMeetings: (json['parentMeetings'] as num?)?.toInt() ?? 0,
  communityMeetings: (json['communityMeetings'] as num?)?.toInt() ?? 0,
  banners: (json['banners'] as num?)?.toInt() ?? 0,
  posters: (json['posters'] as num?)?.toInt() ?? 0,
  socialMediaActivities: (json['socialMediaActivities'] as num?)?.toInt() ?? 0,
  freeTextbooksDistributed:
      (json['freeTextbooksDistributed'] as num?)?.toInt() ?? 0,
  otherSupport: json['otherSupport'] as String?,
  remarks: json['remarks'] as String?,
  remarksUrdu: json['remarksUrdu'] as String?,
  date: DateTime.parse(json['date'] as String),
  status:
      $enumDecodeNullable(_$CampaignStatusEnumMap, json['status']) ??
      CampaignStatus.active,
  achievementPercentage:
      (json['achievementPercentage'] as num?)?.toDouble() ?? 0.0,
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

Map<String, dynamic> _$AdmissionCampaignModelToJson(
  _AdmissionCampaignModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'academicYear': instance.academicYear,
  'targetEnrollment': instance.targetEnrollment,
  'previousEnrollment': instance.previousEnrollment,
  'currentEnrollment': instance.currentEnrollment,
  'newAdmissionsBoys': instance.newAdmissionsBoys,
  'newAdmissionsGirls': instance.newAdmissionsGirls,
  'ooscIdentified': instance.ooscIdentified,
  'ooscReenrolled': instance.ooscReenrolled,
  'doorToDoorVisits': instance.doorToDoorVisits,
  'parentMeetings': instance.parentMeetings,
  'communityMeetings': instance.communityMeetings,
  'banners': instance.banners,
  'posters': instance.posters,
  'socialMediaActivities': instance.socialMediaActivities,
  'freeTextbooksDistributed': instance.freeTextbooksDistributed,
  'otherSupport': instance.otherSupport,
  'remarks': instance.remarks,
  'remarksUrdu': instance.remarksUrdu,
  'date': instance.date.toIso8601String(),
  'status': _$CampaignStatusEnumMap[instance.status]!,
  'achievementPercentage': instance.achievementPercentage,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$CampaignStatusEnumMap = {
  CampaignStatus.planned: 'planned',
  CampaignStatus.active: 'active',
  CampaignStatus.completed: 'completed',
};
