// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cleanliness_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CleanlinessModel _$CleanlinessModelFromJson(Map<String, dynamic> json) =>
    _CleanlinessModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      classroomsClean: json['classroomsClean'] as bool? ?? false,
      courtyardClean: json['courtyardClean'] as bool? ?? false,
      toiletsClean: json['toiletsClean'] as bool? ?? false,
      drinkingWaterAreaClean: json['drinkingWaterAreaClean'] as bool? ?? false,
      wasteManagedProperly: json['wasteManagedProperly'] as bool? ?? false,
      furnitureClean: json['furnitureClean'] as bool? ?? false,
      schoolWallsClean: json['schoolWallsClean'] as bool? ?? false,
      boundaryClean: json['boundaryClean'] as bool? ?? false,
      dailyCleaningDone: json['dailyCleaningDone'] as bool? ?? false,
      weeklyCleaningDone: json['weeklyCleaningDone'] as bool? ?? false,
      remarks: json['remarks'] as String?,
      beforePhotoUrls:
          (json['beforePhotoUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
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

Map<String, dynamic> _$CleanlinessModelToJson(_CleanlinessModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'inspectionDate': instance.inspectionDate.toIso8601String(),
      'classroomsClean': instance.classroomsClean,
      'courtyardClean': instance.courtyardClean,
      'toiletsClean': instance.toiletsClean,
      'drinkingWaterAreaClean': instance.drinkingWaterAreaClean,
      'wasteManagedProperly': instance.wasteManagedProperly,
      'furnitureClean': instance.furnitureClean,
      'schoolWallsClean': instance.schoolWallsClean,
      'boundaryClean': instance.boundaryClean,
      'dailyCleaningDone': instance.dailyCleaningDone,
      'weeklyCleaningDone': instance.weeklyCleaningDone,
      'remarks': instance.remarks,
      'beforePhotoUrls': instance.beforePhotoUrls,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };
