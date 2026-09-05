// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParentContactModel _$ParentContactModelFromJson(Map<String, dynamic> json) => _ParentContactModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  parentName: json['parentName'] as String,
  studentName: json['studentName'] as String,
  contactNumber: json['contactNumber'] as String?,
  contactDate: DateTime.parse(json['contactDate'] as String),
  contactMethod: $enumDecode(_$ContactMethodEnumMap, json['contactMethod']),
  purpose: json['purpose'] as String?,
  discussion: json['discussion'] as String?,
  followUpRequired: json['followUpRequired'] as bool? ?? false,
  followUpDate: json['followUpDate'] == null
      ? null
      : DateTime.parse(json['followUpDate'] as String),
  result: json['result'] as String?,
  evidencePhotoUrls:
      (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isSynced: json['isSynced'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$ParentContactModelToJson(_ParentContactModel instance) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'parentName': instance.parentName,
  'studentName': instance.studentName,
  'contactNumber': instance.contactNumber,
  'contactDate': instance.contactDate.toIso8601String(),
  'contactMethod': _$ContactMethodEnumMap[instance.contactMethod]!,
  'purpose': instance.purpose,
  'discussion': instance.discussion,
  'followUpRequired': instance.followUpRequired,
  'followUpDate': instance.followUpDate?.toIso8601String(),
  'result': instance.result,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$ContactMethodEnumMap = {
  ContactMethod.schoolVisit: 'schoolVisit',
  ContactMethod.homeVisit: 'homeVisit',
  ContactMethod.phoneCall: 'phoneCall',
  ContactMethod.sms: 'sms',
  ContactMethod.whatsapp: 'whatsapp',
  ContactMethod.meeting: 'meeting',
  ContactMethod.other: 'other',
};
