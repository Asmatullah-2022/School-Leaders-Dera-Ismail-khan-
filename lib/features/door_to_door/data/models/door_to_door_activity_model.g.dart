// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'door_to_door_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoorToDoorActivityModel _$DoorToDoorActivityModelFromJson(Map<String, dynamic> json) =>
    _DoorToDoorActivityModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      activityDate: DateTime.parse(json['activityDate'] as String),
      area: json['area'] as String?,
      teamMembers:
          (json['teamMembers'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      housesVisited: (json['housesVisited'] as num?)?.toInt() ?? 0,
      childrenIdentified: (json['childrenIdentified'] as num?)?.toInt() ?? 0,
      childrenEnrolled: (json['childrenEnrolled'] as num?)?.toInt() ?? 0,
      parentsContacted: (json['parentsContacted'] as num?)?.toInt() ?? 0,
      remarks: json['remarks'] as String?,
      evidencePhotoUrls:
          (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      isSynced: json['isSynced'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$DoorToDoorActivityModelToJson(_DoorToDoorActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'activityDate': instance.activityDate.toIso8601String(),
      'area': instance.area,
      'teamMembers': instance.teamMembers,
      'housesVisited': instance.housesVisited,
      'childrenIdentified': instance.childrenIdentified,
      'childrenEnrolled': instance.childrenEnrolled,
      'parentsContacted': instance.parentsContacted,
      'remarks': instance.remarks,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };
