// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_functionality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolFunctionalityModel _$SchoolFunctionalityModelFromJson(
  Map<String, dynamic> json,
) => _SchoolFunctionalityModel(
  id: json['id'] as String,
  schoolId: json['schoolId'] as String,
  clusterId: json['clusterId'] as String,
  circleId: json['circleId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  districtId: json['districtId'] as String,
  assessmentDate: DateTime.parse(json['assessmentDate'] as String),
  schoolOpen: json['schoolOpen'] as bool? ?? true,
  headTeacherPresent: json['headTeacherPresent'] as bool? ?? false,
  teachersPresent: (json['teachersPresent'] as num?)?.toInt() ?? 0,
  teachersTotal: (json['teachersTotal'] as num?)?.toInt() ?? 0,
  studentsPresent: (json['studentsPresent'] as num?)?.toInt() ?? 0,
  studentsTotal: (json['studentsTotal'] as num?)?.toInt() ?? 0,
  classesConducted: json['classesConducted'] as bool? ?? false,
  teachingActivityObserved: json['teachingActivityObserved'] as bool? ?? false,
  cleanlinessSatisfactory: json['cleanlinessSatisfactory'] as bool? ?? false,
  basicFacilitiesAvailable: json['basicFacilitiesAvailable'] as bool? ?? false,
  timetableDisplayed: json['timetableDisplayed'] as bool? ?? false,
  morningAssemblyHeld: json['morningAssemblyHeld'] as bool? ?? false,
  learningEnvironmentSatisfactory:
      json['learningEnvironmentSatisfactory'] as bool? ?? false,
  overallStatus:
      $enumDecodeNullable(
        _$FunctionalityStatusEnumMap,
        json['overallStatus'],
      ) ??
      FunctionalityStatus.functional,
  remarks: json['remarks'] as String?,
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

Map<String, dynamic> _$SchoolFunctionalityModelToJson(
  _SchoolFunctionalityModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'schoolId': instance.schoolId,
  'clusterId': instance.clusterId,
  'circleId': instance.circleId,
  'subDivisionId': instance.subDivisionId,
  'districtId': instance.districtId,
  'assessmentDate': instance.assessmentDate.toIso8601String(),
  'schoolOpen': instance.schoolOpen,
  'headTeacherPresent': instance.headTeacherPresent,
  'teachersPresent': instance.teachersPresent,
  'teachersTotal': instance.teachersTotal,
  'studentsPresent': instance.studentsPresent,
  'studentsTotal': instance.studentsTotal,
  'classesConducted': instance.classesConducted,
  'teachingActivityObserved': instance.teachingActivityObserved,
  'cleanlinessSatisfactory': instance.cleanlinessSatisfactory,
  'basicFacilitiesAvailable': instance.basicFacilitiesAvailable,
  'timetableDisplayed': instance.timetableDisplayed,
  'morningAssemblyHeld': instance.morningAssemblyHeld,
  'learningEnvironmentSatisfactory': instance.learningEnvironmentSatisfactory,
  'overallStatus': _$FunctionalityStatusEnumMap[instance.overallStatus]!,
  'remarks': instance.remarks,
  'evidencePhotoUrls': instance.evidencePhotoUrls,
  'isSynced': instance.isSynced,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$FunctionalityStatusEnumMap = {
  FunctionalityStatus.functional: 'functional',
  FunctionalityStatus.partiallyFunctional: 'partiallyFunctional',
  FunctionalityStatus.needsAttention: 'needsAttention',
  FunctionalityStatus.nonFunctional: 'nonFunctional',
};
