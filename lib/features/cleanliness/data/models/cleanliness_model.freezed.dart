// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleanliness_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CleanlinessModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get inspectionDate; bool get classroomsClean; bool get courtyardClean; bool get toiletsClean; bool get drinkingWaterAreaClean; bool get wasteManagedProperly; bool get furnitureClean; bool get schoolWallsClean; bool get boundaryClean; bool get dailyCleaningDone; bool get weeklyCleaningDone; String? get remarks; List<String> get beforePhotoUrls; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of CleanlinessModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CleanlinessModelCopyWith<CleanlinessModel> get copyWith => _$CleanlinessModelCopyWithImpl<CleanlinessModel>(this as CleanlinessModel, _$identity);

  /// Serializes this CleanlinessModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CleanlinessModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.classroomsClean, classroomsClean) || other.classroomsClean == classroomsClean)&&(identical(other.courtyardClean, courtyardClean) || other.courtyardClean == courtyardClean)&&(identical(other.toiletsClean, toiletsClean) || other.toiletsClean == toiletsClean)&&(identical(other.drinkingWaterAreaClean, drinkingWaterAreaClean) || other.drinkingWaterAreaClean == drinkingWaterAreaClean)&&(identical(other.wasteManagedProperly, wasteManagedProperly) || other.wasteManagedProperly == wasteManagedProperly)&&(identical(other.furnitureClean, furnitureClean) || other.furnitureClean == furnitureClean)&&(identical(other.schoolWallsClean, schoolWallsClean) || other.schoolWallsClean == schoolWallsClean)&&(identical(other.boundaryClean, boundaryClean) || other.boundaryClean == boundaryClean)&&(identical(other.dailyCleaningDone, dailyCleaningDone) || other.dailyCleaningDone == dailyCleaningDone)&&(identical(other.weeklyCleaningDone, weeklyCleaningDone) || other.weeklyCleaningDone == weeklyCleaningDone)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.beforePhotoUrls, beforePhotoUrls)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,inspectionDate,classroomsClean,courtyardClean,toiletsClean,drinkingWaterAreaClean,wasteManagedProperly,furnitureClean,schoolWallsClean,boundaryClean,dailyCleaningDone,weeklyCleaningDone,remarks,const DeepCollectionEquality().hash(beforePhotoUrls),const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'CleanlinessModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, inspectionDate: $inspectionDate, classroomsClean: $classroomsClean, courtyardClean: $courtyardClean, toiletsClean: $toiletsClean, drinkingWaterAreaClean: $drinkingWaterAreaClean, wasteManagedProperly: $wasteManagedProperly, furnitureClean: $furnitureClean, schoolWallsClean: $schoolWallsClean, boundaryClean: $boundaryClean, dailyCleaningDone: $dailyCleaningDone, weeklyCleaningDone: $weeklyCleaningDone, remarks: $remarks, beforePhotoUrls: $beforePhotoUrls, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $CleanlinessModelCopyWith<$Res>  {
  factory $CleanlinessModelCopyWith(CleanlinessModel value, $Res Function(CleanlinessModel) _then) = _$CleanlinessModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime inspectionDate, bool classroomsClean, bool courtyardClean, bool toiletsClean, bool drinkingWaterAreaClean, bool wasteManagedProperly, bool furnitureClean, bool schoolWallsClean, bool boundaryClean, bool dailyCleaningDone, bool weeklyCleaningDone, String? remarks, List<String> beforePhotoUrls, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$CleanlinessModelCopyWithImpl<$Res>
    implements $CleanlinessModelCopyWith<$Res> {
  _$CleanlinessModelCopyWithImpl(this._self, this._then);

  final CleanlinessModel _self;
  final $Res Function(CleanlinessModel) _then;

/// Create a copy of CleanlinessModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? inspectionDate = null,Object? classroomsClean = null,Object? courtyardClean = null,Object? toiletsClean = null,Object? drinkingWaterAreaClean = null,Object? wasteManagedProperly = null,Object? furnitureClean = null,Object? schoolWallsClean = null,Object? boundaryClean = null,Object? dailyCleaningDone = null,Object? weeklyCleaningDone = null,Object? remarks = freezed,Object? beforePhotoUrls = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(CleanlinessModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,classroomsClean: null == classroomsClean ? _self.classroomsClean : classroomsClean // ignore: cast_nullable_to_non_nullable
as bool,courtyardClean: null == courtyardClean ? _self.courtyardClean : courtyardClean // ignore: cast_nullable_to_non_nullable
as bool,toiletsClean: null == toiletsClean ? _self.toiletsClean : toiletsClean // ignore: cast_nullable_to_non_nullable
as bool,drinkingWaterAreaClean: null == drinkingWaterAreaClean ? _self.drinkingWaterAreaClean : drinkingWaterAreaClean // ignore: cast_nullable_to_non_nullable
as bool,wasteManagedProperly: null == wasteManagedProperly ? _self.wasteManagedProperly : wasteManagedProperly // ignore: cast_nullable_to_non_nullable
as bool,furnitureClean: null == furnitureClean ? _self.furnitureClean : furnitureClean // ignore: cast_nullable_to_non_nullable
as bool,schoolWallsClean: null == schoolWallsClean ? _self.schoolWallsClean : schoolWallsClean // ignore: cast_nullable_to_non_nullable
as bool,boundaryClean: null == boundaryClean ? _self.boundaryClean : boundaryClean // ignore: cast_nullable_to_non_nullable
as bool,dailyCleaningDone: null == dailyCleaningDone ? _self.dailyCleaningDone : dailyCleaningDone // ignore: cast_nullable_to_non_nullable
as bool,weeklyCleaningDone: null == weeklyCleaningDone ? _self.weeklyCleaningDone : weeklyCleaningDone // ignore: cast_nullable_to_non_nullable
as bool,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,beforePhotoUrls: null == beforePhotoUrls ? _self.beforePhotoUrls : beforePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CleanlinessModel].
extension CleanlinessModelPatterns on CleanlinessModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CleanlinessModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleanlinessModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CleanlinessModel value)  $default,){
final _that = this;
switch (_that) {
case _CleanlinessModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CleanlinessModel value)?  $default,){
final _that = this;
switch (_that) {
case _CleanlinessModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime inspectionDate,  bool classroomsClean,  bool courtyardClean,  bool toiletsClean,  bool drinkingWaterAreaClean,  bool wasteManagedProperly,  bool furnitureClean,  bool schoolWallsClean,  bool boundaryClean,  bool dailyCleaningDone,  bool weeklyCleaningDone,  String? remarks,  List<String> beforePhotoUrls,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleanlinessModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.inspectionDate,_that.classroomsClean,_that.courtyardClean,_that.toiletsClean,_that.drinkingWaterAreaClean,_that.wasteManagedProperly,_that.furnitureClean,_that.schoolWallsClean,_that.boundaryClean,_that.dailyCleaningDone,_that.weeklyCleaningDone,_that.remarks,_that.beforePhotoUrls,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime inspectionDate,  bool classroomsClean,  bool courtyardClean,  bool toiletsClean,  bool drinkingWaterAreaClean,  bool wasteManagedProperly,  bool furnitureClean,  bool schoolWallsClean,  bool boundaryClean,  bool dailyCleaningDone,  bool weeklyCleaningDone,  String? remarks,  List<String> beforePhotoUrls,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _CleanlinessModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.inspectionDate,_that.classroomsClean,_that.courtyardClean,_that.toiletsClean,_that.drinkingWaterAreaClean,_that.wasteManagedProperly,_that.furnitureClean,_that.schoolWallsClean,_that.boundaryClean,_that.dailyCleaningDone,_that.weeklyCleaningDone,_that.remarks,_that.beforePhotoUrls,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime inspectionDate,  bool classroomsClean,  bool courtyardClean,  bool toiletsClean,  bool drinkingWaterAreaClean,  bool wasteManagedProperly,  bool furnitureClean,  bool schoolWallsClean,  bool boundaryClean,  bool dailyCleaningDone,  bool weeklyCleaningDone,  String? remarks,  List<String> beforePhotoUrls,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _CleanlinessModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.inspectionDate,_that.classroomsClean,_that.courtyardClean,_that.toiletsClean,_that.drinkingWaterAreaClean,_that.wasteManagedProperly,_that.furnitureClean,_that.schoolWallsClean,_that.boundaryClean,_that.dailyCleaningDone,_that.weeklyCleaningDone,_that.remarks,_that.beforePhotoUrls,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CleanlinessModel extends CleanlinessModel {
  const _CleanlinessModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.inspectionDate, this.classroomsClean = false, this.courtyardClean = false, this.toiletsClean = false, this.drinkingWaterAreaClean = false, this.wasteManagedProperly = false, this.furnitureClean = false, this.schoolWallsClean = false, this.boundaryClean = false, this.dailyCleaningDone = false, this.weeklyCleaningDone = false, this.remarks,  List<String> beforePhotoUrls = const <String>[],  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _beforePhotoUrls = beforePhotoUrls,_evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _CleanlinessModel.fromJson(Map<String, dynamic> json) => _$CleanlinessModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime inspectionDate;
@override@JsonKey() final  bool classroomsClean;
@override@JsonKey() final  bool courtyardClean;
@override@JsonKey() final  bool toiletsClean;
@override@JsonKey() final  bool drinkingWaterAreaClean;
@override@JsonKey() final  bool wasteManagedProperly;
@override@JsonKey() final  bool furnitureClean;
@override@JsonKey() final  bool schoolWallsClean;
@override@JsonKey() final  bool boundaryClean;
@override@JsonKey() final  bool dailyCleaningDone;
@override@JsonKey() final  bool weeklyCleaningDone;
@override final  String? remarks;
 final  List<String> _beforePhotoUrls;
@override@JsonKey() List<String> get beforePhotoUrls {
  if (_beforePhotoUrls is EqualUnmodifiableListView) return _beforePhotoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_beforePhotoUrls);
}

 final  List<String> _evidencePhotoUrls;
@override@JsonKey() List<String> get evidencePhotoUrls {
  if (_evidencePhotoUrls is EqualUnmodifiableListView) return _evidencePhotoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidencePhotoUrls);
}

@override@JsonKey() final  bool isSynced;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of CleanlinessModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CleanlinessModelCopyWith<_CleanlinessModel> get copyWith => __$CleanlinessModelCopyWithImpl<_CleanlinessModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CleanlinessModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleanlinessModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.inspectionDate, inspectionDate) || other.inspectionDate == inspectionDate)&&(identical(other.classroomsClean, classroomsClean) || other.classroomsClean == classroomsClean)&&(identical(other.courtyardClean, courtyardClean) || other.courtyardClean == courtyardClean)&&(identical(other.toiletsClean, toiletsClean) || other.toiletsClean == toiletsClean)&&(identical(other.drinkingWaterAreaClean, drinkingWaterAreaClean) || other.drinkingWaterAreaClean == drinkingWaterAreaClean)&&(identical(other.wasteManagedProperly, wasteManagedProperly) || other.wasteManagedProperly == wasteManagedProperly)&&(identical(other.furnitureClean, furnitureClean) || other.furnitureClean == furnitureClean)&&(identical(other.schoolWallsClean, schoolWallsClean) || other.schoolWallsClean == schoolWallsClean)&&(identical(other.boundaryClean, boundaryClean) || other.boundaryClean == boundaryClean)&&(identical(other.dailyCleaningDone, dailyCleaningDone) || other.dailyCleaningDone == dailyCleaningDone)&&(identical(other.weeklyCleaningDone, weeklyCleaningDone) || other.weeklyCleaningDone == weeklyCleaningDone)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._beforePhotoUrls, _beforePhotoUrls)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,inspectionDate,classroomsClean,courtyardClean,toiletsClean,drinkingWaterAreaClean,wasteManagedProperly,furnitureClean,schoolWallsClean,boundaryClean,dailyCleaningDone,weeklyCleaningDone,remarks,const DeepCollectionEquality().hash(_beforePhotoUrls),const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'CleanlinessModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, inspectionDate: $inspectionDate, classroomsClean: $classroomsClean, courtyardClean: $courtyardClean, toiletsClean: $toiletsClean, drinkingWaterAreaClean: $drinkingWaterAreaClean, wasteManagedProperly: $wasteManagedProperly, furnitureClean: $furnitureClean, schoolWallsClean: $schoolWallsClean, boundaryClean: $boundaryClean, dailyCleaningDone: $dailyCleaningDone, weeklyCleaningDone: $weeklyCleaningDone, remarks: $remarks, beforePhotoUrls: $beforePhotoUrls, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$CleanlinessModelCopyWith<$Res> implements $CleanlinessModelCopyWith<$Res> {
  factory _$CleanlinessModelCopyWith(_CleanlinessModel value, $Res Function(_CleanlinessModel) _then) = __$CleanlinessModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime inspectionDate, bool classroomsClean, bool courtyardClean, bool toiletsClean, bool drinkingWaterAreaClean, bool wasteManagedProperly, bool furnitureClean, bool schoolWallsClean, bool boundaryClean, bool dailyCleaningDone, bool weeklyCleaningDone, String? remarks, List<String> beforePhotoUrls, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$CleanlinessModelCopyWithImpl<$Res>
    implements _$CleanlinessModelCopyWith<$Res> {
  __$CleanlinessModelCopyWithImpl(this._self, this._then);

  final _CleanlinessModel _self;
  final $Res Function(_CleanlinessModel) _then;

/// Create a copy of CleanlinessModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? inspectionDate = null,Object? classroomsClean = null,Object? courtyardClean = null,Object? toiletsClean = null,Object? drinkingWaterAreaClean = null,Object? wasteManagedProperly = null,Object? furnitureClean = null,Object? schoolWallsClean = null,Object? boundaryClean = null,Object? dailyCleaningDone = null,Object? weeklyCleaningDone = null,Object? remarks = freezed,Object? beforePhotoUrls = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_CleanlinessModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,inspectionDate: null == inspectionDate ? _self.inspectionDate : inspectionDate // ignore: cast_nullable_to_non_nullable
as DateTime,classroomsClean: null == classroomsClean ? _self.classroomsClean : classroomsClean // ignore: cast_nullable_to_non_nullable
as bool,courtyardClean: null == courtyardClean ? _self.courtyardClean : courtyardClean // ignore: cast_nullable_to_non_nullable
as bool,toiletsClean: null == toiletsClean ? _self.toiletsClean : toiletsClean // ignore: cast_nullable_to_non_nullable
as bool,drinkingWaterAreaClean: null == drinkingWaterAreaClean ? _self.drinkingWaterAreaClean : drinkingWaterAreaClean // ignore: cast_nullable_to_non_nullable
as bool,wasteManagedProperly: null == wasteManagedProperly ? _self.wasteManagedProperly : wasteManagedProperly // ignore: cast_nullable_to_non_nullable
as bool,furnitureClean: null == furnitureClean ? _self.furnitureClean : furnitureClean // ignore: cast_nullable_to_non_nullable
as bool,schoolWallsClean: null == schoolWallsClean ? _self.schoolWallsClean : schoolWallsClean // ignore: cast_nullable_to_non_nullable
as bool,boundaryClean: null == boundaryClean ? _self.boundaryClean : boundaryClean // ignore: cast_nullable_to_non_nullable
as bool,dailyCleaningDone: null == dailyCleaningDone ? _self.dailyCleaningDone : dailyCleaningDone // ignore: cast_nullable_to_non_nullable
as bool,weeklyCleaningDone: null == weeklyCleaningDone ? _self.weeklyCleaningDone : weeklyCleaningDone // ignore: cast_nullable_to_non_nullable
as bool,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,beforePhotoUrls: null == beforePhotoUrls ? _self._beforePhotoUrls : beforePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
