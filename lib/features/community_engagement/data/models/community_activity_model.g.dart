// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommunityActivityModel _$CommunityActivityModelFromJson(Map<String, dynamic> json) =>
    _CommunityActivityModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      activityType: $enumDecode(_$CommunityActivityTypeEnumMap, json['activityType']),
      activityDate: DateTime.parse(json['activityDate'] as String),
      participantsCount: (json['participantsCount'] as num?)?.toInt() ?? 0,
      femaleParticipantsCount: (json['femaleParticipantsCount'] as num?)?.toInt() ?? 0,
      venue: json['venue'] as String?,
      description: json['description'] as String?,
      descriptionUrdu: json['descriptionUrdu'] as String?,
      remarks: json['remarks'] as String?,
      evidencePhotoUrls:
          (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      isSynced: json['isSynced'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$CommunityActivityModelToJson(_CommunityActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'activityType': _$CommunityActivityTypeEnumMap[instance.activityType]!,
      'activityDate': instance.activityDate.toIso8601String(),
      'participantsCount': instance.participantsCount,
      'femaleParticipantsCount': instance.femaleParticipantsCount,
      'venue': instance.venue,
      'description': instance.description,
      'descriptionUrdu': instance.descriptionUrdu,
      'remarks': instance.remarks,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };

const _$CommunityActivityTypeEnumMap = {
  CommunityActivityType.parentMeeting: 'parentMeeting',
  CommunityActivityType.communityMeeting: 'communityMeeting',
  CommunityActivityType.localCommunityEngagement: 'localCommunityEngagement',
  CommunityActivityType.awarenessSession: 'awarenessSession',
  CommunityActivityType.enrollmentCounseling: 'enrollmentCounseling',
  CommunityActivityType.ooscIdentification: 'ooscIdentification',
  CommunityActivityType.reEnrollmentActivity: 'reEnrollmentActivity',
  CommunityActivityType.communitySupport: 'communitySupport',
  CommunityActivityType.femaleParentEngagement: 'femaleParentEngagement',
};
