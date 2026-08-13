// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oosc_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OoscRecordModel _$OoscRecordModelFromJson(Map<String, dynamic> json) =>
    _OoscRecordModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      childName: json['childName'] as String,
      childNameUrdu: json['childNameUrdu'] as String?,
      gender: $enumDecode(_$OoscGenderEnumMap, json['gender']),
      age: (json['age'] as num).toInt(),
      village: json['village'] as String?,
      parentGuardianName: json['parentGuardianName'] as String?,
      contactPhone: json['contactPhone'] as String?,
      reason: $enumDecode(_$OoscReasonEnumMap, json['reason']),
      reasonDetail: json['reasonDetail'] as String?,
      previousSchool: json['previousSchool'] as String?,
      status:
          $enumDecodeNullable(_$OoscStatusEnumMap, json['status']) ??
          OoscStatus.identified,
      followUpDate: json['followUpDate'] == null
          ? null
          : DateTime.parse(json['followUpDate'] as String),
      remarks: json['remarks'] as String?,
      campaignId: json['campaignId'] as String?,
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

Map<String, dynamic> _$OoscRecordModelToJson(_OoscRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'childName': instance.childName,
      'childNameUrdu': instance.childNameUrdu,
      'gender': _$OoscGenderEnumMap[instance.gender]!,
      'age': instance.age,
      'village': instance.village,
      'parentGuardianName': instance.parentGuardianName,
      'contactPhone': instance.contactPhone,
      'reason': _$OoscReasonEnumMap[instance.reason]!,
      'reasonDetail': instance.reasonDetail,
      'previousSchool': instance.previousSchool,
      'status': _$OoscStatusEnumMap[instance.status]!,
      'followUpDate': instance.followUpDate?.toIso8601String(),
      'remarks': instance.remarks,
      'campaignId': instance.campaignId,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };

const _$OoscGenderEnumMap = {
  OoscGender.male: 'male',
  OoscGender.female: 'female',
};

const _$OoscReasonEnumMap = {
  OoscReason.labor: 'labor',
  OoscReason.migration: 'migration',
  OoscReason.disability: 'disability',
  OoscReason.financial: 'financial',
  OoscReason.distance: 'distance',
  OoscReason.earlyMarriage: 'earlyMarriage',
  OoscReason.other: 'other',
};

const _$OoscStatusEnumMap = {
  OoscStatus.identified: 'identified',
  OoscStatus.contacted: 'contacted',
  OoscStatus.counseled: 'counseled',
  OoscStatus.reenrolled: 'reenrolled',
  OoscStatus.notReenrolled: 'notReenrolled',
  OoscStatus.followUpRequired: 'followUpRequired',
};
