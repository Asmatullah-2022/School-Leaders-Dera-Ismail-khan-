// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'official_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfficialUpdateModel _$OfficialUpdateModelFromJson(
  Map<String, dynamic> json,
) => _OfficialUpdateModel(
  id: json['id'] as String,
  title: json['title'] as String,
  titleUrdu: json['titleUrdu'] as String?,
  description: json['description'] as String,
  descriptionUrdu: json['descriptionUrdu'] as String?,
  category: $enumDecode(_$UpdateCategoryEnumMap, json['category']),
  priority: $enumDecodeNullable(_$UpdatePriorityEnumMap, json['priority']) ?? UpdatePriority.normal,
  targetAudience:
      $enumDecodeNullable(_$UpdateAudienceEnumMap, json['targetAudience']) ?? UpdateAudience.all,
  publishDate: DateTime.parse(json['publishDate'] as String),
  eventDate: json['eventDate'] == null ? null : DateTime.parse(json['eventDate'] as String),
  districtId: json['districtId'] as String?,
  subDivisionId: json['subDivisionId'] as String?,
  circleId: json['circleId'] as String?,
  clusterId: json['clusterId'] as String?,
  schoolId: json['schoolId'] as String?,
  imageUrl: json['imageUrl'] as String?,
  attachmentUrls:
      (json['attachmentUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isPublished: json['isPublished'] as bool? ?? false,
  publishedByUid: json['publishedByUid'] as String,
  publishedByName: json['publishedByName'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$OfficialUpdateModelToJson(_OfficialUpdateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'titleUrdu': instance.titleUrdu,
      'description': instance.description,
      'descriptionUrdu': instance.descriptionUrdu,
      'category': _$UpdateCategoryEnumMap[instance.category]!,
      'priority': _$UpdatePriorityEnumMap[instance.priority]!,
      'targetAudience': _$UpdateAudienceEnumMap[instance.targetAudience]!,
      'publishDate': instance.publishDate.toIso8601String(),
      'eventDate': instance.eventDate?.toIso8601String(),
      'districtId': instance.districtId,
      'subDivisionId': instance.subDivisionId,
      'circleId': instance.circleId,
      'clusterId': instance.clusterId,
      'schoolId': instance.schoolId,
      'imageUrl': instance.imageUrl,
      'attachmentUrls': instance.attachmentUrls,
      'isPublished': instance.isPublished,
      'publishedByUid': instance.publishedByUid,
      'publishedByName': instance.publishedByName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };

const _$UpdateCategoryEnumMap = {
  UpdateCategory.announcement: 'announcement',
  UpdateCategory.circular: 'circular',
  UpdateCategory.notification: 'notification',
  UpdateCategory.campaign: 'campaign',
  UpdateCategory.training: 'training',
  UpdateCategory.meeting: 'meeting',
  UpdateCategory.importantDate: 'importantDate',
  UpdateCategory.educationInitiative: 'educationInitiative',
};

const _$UpdatePriorityEnumMap = {
  UpdatePriority.normal: 'normal',
  UpdatePriority.important: 'important',
  UpdatePriority.urgent: 'urgent',
};

const _$UpdateAudienceEnumMap = {
  UpdateAudience.all: 'all',
  UpdateAudience.schoolLeaders: 'schoolLeaders',
  UpdateAudience.monitoringOfficers: 'monitoringOfficers',
  UpdateAudience.admins: 'admins',
};
