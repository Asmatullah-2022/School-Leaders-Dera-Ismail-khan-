// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_meeting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClusterMeetingModel _$ClusterMeetingModelFromJson(Map<String, dynamic> json) =>
    _ClusterMeetingModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String?,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      meetingDate: DateTime.parse(json['meetingDate'] as String),
      meetingTime: json['meetingTime'] as String?,
      venue: json['venue'] as String?,
      chairperson: json['chairperson'] as String?,
      participantsCount: (json['participantsCount'] as num?)?.toInt() ?? 0,
      participatingSchoolIds:
          (json['participatingSchoolIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      agenda: json['agenda'] as String?,
      agendaUrdu: json['agendaUrdu'] as String?,
      decisions: json['decisions'] as String?,
      minutes: json['minutes'] as String?,
      status:
          $enumDecodeNullable(_$MeetingStatusEnumMap, json['status']) ??
          MeetingStatus.pending,
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

Map<String, dynamic> _$ClusterMeetingModelToJson(
  _ClusterMeetingModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'meetingDate': instance.meetingDate.toIso8601String(),
  'meetingTime': instance.meetingTime,
  'venue': instance.venue,
  'chairperson': instance.chairperson,
  'participantsCount': instance.participantsCount,
  'participatingSchoolIds': instance.participatingSchoolIds,
  'agenda': instance.agenda,
  'agendaUrdu': instance.agendaUrdu,
  'decisions': instance.decisions,
  'minutes': instance.minutes,
  'status': _$MeetingStatusEnumMap[instance.status]!,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$MeetingStatusEnumMap = {
  MeetingStatus.pending: 'pending',
  MeetingStatus.inProgress: 'inProgress',
  MeetingStatus.completed: 'completed',
};

_MeetingActionModel _$MeetingActionModelFromJson(Map<String, dynamic> json) =>
    _MeetingActionModel(
      id: json['id'] as String,
      meetingId: json['meetingId'] as String,
      actionText: json['actionText'] as String,
      actionTextUrdu: json['actionTextUrdu'] as String?,
      responsiblePersonName: json['responsiblePersonName'] as String?,
      assignedToUid: json['assignedToUid'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      status:
          $enumDecodeNullable(_$MeetingStatusEnumMap, json['status']) ??
          MeetingStatus.pending,
      completionNotes: json['completionNotes'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$MeetingActionModelToJson(_MeetingActionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meetingId': instance.meetingId,
      'actionText': instance.actionText,
      'actionTextUrdu': instance.actionTextUrdu,
      'responsiblePersonName': instance.responsiblePersonName,
      'assignedToUid': instance.assignedToUid,
      'deadline': instance.deadline?.toIso8601String(),
      'status': _$MeetingStatusEnumMap[instance.status]!,
      'completionNotes': instance.completionNotes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };
