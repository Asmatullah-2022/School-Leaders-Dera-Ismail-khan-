// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_opening_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolOpeningModel _$SchoolOpeningModelFromJson(Map<String, dynamic> json) =>
    _SchoolOpeningModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      checkDate: DateTime.parse(json['checkDate'] as String),
      isOpen: json['isOpen'] as bool? ?? true,
      openingTime: json['openingTime'] as String?,
      closingTime: json['closingTime'] as String?,
      headTeacherPresent: json['headTeacherPresent'] as bool? ?? false,
      teachersPresent: (json['teachersPresent'] as num?)?.toInt() ?? 0,
      studentsPresent: (json['studentsPresent'] as num?)?.toInt() ?? 0,
      reasonIfClosed: json['reasonIfClosed'] as String?,
      actionRequired: json['actionRequired'] as String?,
      verifiedByUid: json['verifiedByUid'] as String?,
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

Map<String, dynamic> _$SchoolOpeningModelToJson(_SchoolOpeningModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'checkDate': instance.checkDate.toIso8601String(),
      'isOpen': instance.isOpen,
      'openingTime': instance.openingTime,
      'closingTime': instance.closingTime,
      'headTeacherPresent': instance.headTeacherPresent,
      'teachersPresent': instance.teachersPresent,
      'studentsPresent': instance.studentsPresent,
      'reasonIfClosed': instance.reasonIfClosed,
      'actionRequired': instance.actionRequired,
      'verifiedByUid': instance.verifiedByUid,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };
