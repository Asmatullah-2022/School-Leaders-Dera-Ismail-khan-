// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) => _SchoolModel(
  id: json['id'] as String,
  name: json['name'] as String,
  nameUrdu: json['nameUrdu'] as String?,
  emisCode: json['emisCode'] as String,
  districtId: json['districtId'] as String,
  subDivisionId: json['subDivisionId'] as String,
  circleId: json['circleId'] as String,
  clusterId: json['clusterId'] as String,
  village: json['village'] as String?,
  level:
      $enumDecodeNullable(_$SchoolLevelEnumMap, json['level']) ??
      SchoolLevel.primary,
  gender:
      $enumDecodeNullable(_$SchoolGenderEnumMap, json['gender']) ??
      SchoolGender.mixed,
  headTeacherName: json['headTeacherName'] as String?,
  headTeacherUid: json['headTeacherUid'] as String?,
  contactPhone: json['contactPhone'] as String?,
  teachersCount: (json['teachersCount'] as num?)?.toInt() ?? 0,
  boysCount: (json['boysCount'] as num?)?.toInt() ?? 0,
  girlsCount: (json['girlsCount'] as num?)?.toInt() ?? 0,
  totalEnrollment: (json['totalEnrollment'] as num?)?.toInt() ?? 0,
  classrooms: (json['classrooms'] as num?)?.toInt() ?? 0,
  toilets: (json['toilets'] as num?)?.toInt() ?? 0,
  drinkingWater: json['drinkingWater'] as bool? ?? false,
  electricity: json['electricity'] as bool? ?? false,
  boundaryWall: json['boundaryWall'] as bool? ?? false,
  eceRoom: json['eceRoom'] as bool? ?? false,
  playground: json['playground'] as bool? ?? false,
  furniture: json['furniture'] as bool? ?? false,
  library: json['library'] as bool? ?? false,
  itFacilities: json['itFacilities'] as bool? ?? false,
  buildingCondition:
      $enumDecodeNullable(
        _$BuildingConditionEnumMap,
        json['buildingCondition'],
      ) ??
      BuildingCondition.good,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  photoUrl: json['photoUrl'] as String?,
  isActive: json['isActive'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$SchoolModelToJson(
  _SchoolModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nameUrdu': instance.nameUrdu,
  'emisCode': instance.emisCode,
  'districtId': instance.districtId,
  'subDivisionId': instance.subDivisionId,
  'circleId': instance.circleId,
  'clusterId': instance.clusterId,
  'village': instance.village,
  'level': _$SchoolLevelEnumMap[instance.level]!,
  'gender': _$SchoolGenderEnumMap[instance.gender]!,
  'headTeacherName': instance.headTeacherName,
  'headTeacherUid': instance.headTeacherUid,
  'contactPhone': instance.contactPhone,
  'teachersCount': instance.teachersCount,
  'boysCount': instance.boysCount,
  'girlsCount': instance.girlsCount,
  'totalEnrollment': instance.totalEnrollment,
  'classrooms': instance.classrooms,
  'toilets': instance.toilets,
  'drinkingWater': instance.drinkingWater,
  'electricity': instance.electricity,
  'boundaryWall': instance.boundaryWall,
  'eceRoom': instance.eceRoom,
  'playground': instance.playground,
  'furniture': instance.furniture,
  'library': instance.library,
  'itFacilities': instance.itFacilities,
  'buildingCondition': _$BuildingConditionEnumMap[instance.buildingCondition]!,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'photoUrl': instance.photoUrl,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};

const _$SchoolLevelEnumMap = {
  SchoolLevel.primary: 'primary',
  SchoolLevel.elementary: 'elementary',
  SchoolLevel.middle: 'middle',
  SchoolLevel.high: 'high',
  SchoolLevel.higherSecondary: 'higherSecondary',
};

const _$SchoolGenderEnumMap = {
  SchoolGender.boys: 'boys',
  SchoolGender.girls: 'girls',
  SchoolGender.mixed: 'mixed',
};

const _$BuildingConditionEnumMap = {
  BuildingCondition.good: 'good',
  BuildingCondition.needsRepair: 'needsRepair',
  BuildingCondition.critical: 'critical',
};
