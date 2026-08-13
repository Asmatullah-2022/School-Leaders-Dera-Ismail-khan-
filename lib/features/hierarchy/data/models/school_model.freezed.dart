// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolModel {

 String get id; String get name; String? get nameUrdu; String get emisCode; String get districtId; String get subDivisionId; String get circleId; String get clusterId; String? get village; SchoolLevel get level; SchoolGender get gender; String? get headTeacherName; String? get headTeacherUid; String? get contactPhone; int get teachersCount; int get boysCount; int get girlsCount; int get totalEnrollment; int get classrooms; int get toilets; bool get drinkingWater; bool get electricity; bool get boundaryWall; bool get eceRoom; bool get playground; bool get furniture; bool get library; bool get itFacilities; BuildingCondition get buildingCondition; double? get latitude; double? get longitude; String? get photoUrl; bool get isActive; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolModelCopyWith<SchoolModel> get copyWith => _$SchoolModelCopyWithImpl<SchoolModel>(this as SchoolModel, _$identity);

  /// Serializes this SchoolModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameUrdu, nameUrdu) || other.nameUrdu == nameUrdu)&&(identical(other.emisCode, emisCode) || other.emisCode == emisCode)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.village, village) || other.village == village)&&(identical(other.level, level) || other.level == level)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.headTeacherName, headTeacherName) || other.headTeacherName == headTeacherName)&&(identical(other.headTeacherUid, headTeacherUid) || other.headTeacherUid == headTeacherUid)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.teachersCount, teachersCount) || other.teachersCount == teachersCount)&&(identical(other.boysCount, boysCount) || other.boysCount == boysCount)&&(identical(other.girlsCount, girlsCount) || other.girlsCount == girlsCount)&&(identical(other.totalEnrollment, totalEnrollment) || other.totalEnrollment == totalEnrollment)&&(identical(other.classrooms, classrooms) || other.classrooms == classrooms)&&(identical(other.toilets, toilets) || other.toilets == toilets)&&(identical(other.drinkingWater, drinkingWater) || other.drinkingWater == drinkingWater)&&(identical(other.electricity, electricity) || other.electricity == electricity)&&(identical(other.boundaryWall, boundaryWall) || other.boundaryWall == boundaryWall)&&(identical(other.eceRoom, eceRoom) || other.eceRoom == eceRoom)&&(identical(other.playground, playground) || other.playground == playground)&&(identical(other.furniture, furniture) || other.furniture == furniture)&&(identical(other.library, library) || other.library == library)&&(identical(other.itFacilities, itFacilities) || other.itFacilities == itFacilities)&&(identical(other.buildingCondition, buildingCondition) || other.buildingCondition == buildingCondition)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,nameUrdu,emisCode,districtId,subDivisionId,circleId,clusterId,village,level,gender,headTeacherName,headTeacherUid,contactPhone,teachersCount,boysCount,girlsCount,totalEnrollment,classrooms,toilets,drinkingWater,electricity,boundaryWall,eceRoom,playground,furniture,library,itFacilities,buildingCondition,latitude,longitude,photoUrl,isActive,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolModel(id: $id, name: $name, nameUrdu: $nameUrdu, emisCode: $emisCode, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, village: $village, level: $level, gender: $gender, headTeacherName: $headTeacherName, headTeacherUid: $headTeacherUid, contactPhone: $contactPhone, teachersCount: $teachersCount, boysCount: $boysCount, girlsCount: $girlsCount, totalEnrollment: $totalEnrollment, classrooms: $classrooms, toilets: $toilets, drinkingWater: $drinkingWater, electricity: $electricity, boundaryWall: $boundaryWall, eceRoom: $eceRoom, playground: $playground, furniture: $furniture, library: $library, itFacilities: $itFacilities, buildingCondition: $buildingCondition, latitude: $latitude, longitude: $longitude, photoUrl: $photoUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $SchoolModelCopyWith<$Res>  {
  factory $SchoolModelCopyWith(SchoolModel value, $Res Function(SchoolModel) _then) = _$SchoolModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? nameUrdu, String emisCode, String districtId, String subDivisionId, String circleId, String clusterId, String? village, SchoolLevel level, SchoolGender gender, String? headTeacherName, String? headTeacherUid, String? contactPhone, int teachersCount, int boysCount, int girlsCount, int totalEnrollment, int classrooms, int toilets, bool drinkingWater, bool electricity, bool boundaryWall, bool eceRoom, bool playground, bool furniture, bool library, bool itFacilities, BuildingCondition buildingCondition, double? latitude, double? longitude, String? photoUrl, bool isActive, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$SchoolModelCopyWithImpl<$Res>
    implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._self, this._then);

  final SchoolModel _self;
  final $Res Function(SchoolModel) _then;

/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameUrdu = freezed,Object? emisCode = null,Object? districtId = null,Object? subDivisionId = null,Object? circleId = null,Object? clusterId = null,Object? village = freezed,Object? level = null,Object? gender = null,Object? headTeacherName = freezed,Object? headTeacherUid = freezed,Object? contactPhone = freezed,Object? teachersCount = null,Object? boysCount = null,Object? girlsCount = null,Object? totalEnrollment = null,Object? classrooms = null,Object? toilets = null,Object? drinkingWater = null,Object? electricity = null,Object? boundaryWall = null,Object? eceRoom = null,Object? playground = null,Object? furniture = null,Object? library = null,Object? itFacilities = null,Object? buildingCondition = null,Object? latitude = freezed,Object? longitude = freezed,Object? photoUrl = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(SchoolModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameUrdu: freezed == nameUrdu ? _self.nameUrdu : nameUrdu // ignore: cast_nullable_to_non_nullable
as String?,emisCode: null == emisCode ? _self.emisCode : emisCode // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as String?,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as SchoolLevel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as SchoolGender,headTeacherName: freezed == headTeacherName ? _self.headTeacherName : headTeacherName // ignore: cast_nullable_to_non_nullable
as String?,headTeacherUid: freezed == headTeacherUid ? _self.headTeacherUid : headTeacherUid // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,teachersCount: null == teachersCount ? _self.teachersCount : teachersCount // ignore: cast_nullable_to_non_nullable
as int,boysCount: null == boysCount ? _self.boysCount : boysCount // ignore: cast_nullable_to_non_nullable
as int,girlsCount: null == girlsCount ? _self.girlsCount : girlsCount // ignore: cast_nullable_to_non_nullable
as int,totalEnrollment: null == totalEnrollment ? _self.totalEnrollment : totalEnrollment // ignore: cast_nullable_to_non_nullable
as int,classrooms: null == classrooms ? _self.classrooms : classrooms // ignore: cast_nullable_to_non_nullable
as int,toilets: null == toilets ? _self.toilets : toilets // ignore: cast_nullable_to_non_nullable
as int,drinkingWater: null == drinkingWater ? _self.drinkingWater : drinkingWater // ignore: cast_nullable_to_non_nullable
as bool,electricity: null == electricity ? _self.electricity : electricity // ignore: cast_nullable_to_non_nullable
as bool,boundaryWall: null == boundaryWall ? _self.boundaryWall : boundaryWall // ignore: cast_nullable_to_non_nullable
as bool,eceRoom: null == eceRoom ? _self.eceRoom : eceRoom // ignore: cast_nullable_to_non_nullable
as bool,playground: null == playground ? _self.playground : playground // ignore: cast_nullable_to_non_nullable
as bool,furniture: null == furniture ? _self.furniture : furniture // ignore: cast_nullable_to_non_nullable
as bool,library: null == library ? _self.library : library // ignore: cast_nullable_to_non_nullable
as bool,itFacilities: null == itFacilities ? _self.itFacilities : itFacilities // ignore: cast_nullable_to_non_nullable
as bool,buildingCondition: null == buildingCondition ? _self.buildingCondition : buildingCondition // ignore: cast_nullable_to_non_nullable
as BuildingCondition,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolModel].
extension SchoolModelPatterns on SchoolModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolModel value)  $default,){
final _that = this;
switch (_that) {
case _SchoolModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolModel value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? nameUrdu,  String emisCode,  String districtId,  String subDivisionId,  String circleId,  String clusterId,  String? village,  SchoolLevel level,  SchoolGender gender,  String? headTeacherName,  String? headTeacherUid,  String? contactPhone,  int teachersCount,  int boysCount,  int girlsCount,  int totalEnrollment,  int classrooms,  int toilets,  bool drinkingWater,  bool electricity,  bool boundaryWall,  bool eceRoom,  bool playground,  bool furniture,  bool library,  bool itFacilities,  BuildingCondition buildingCondition,  double? latitude,  double? longitude,  String? photoUrl,  bool isActive,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolModel() when $default != null:
return $default(_that.id,_that.name,_that.nameUrdu,_that.emisCode,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.village,_that.level,_that.gender,_that.headTeacherName,_that.headTeacherUid,_that.contactPhone,_that.teachersCount,_that.boysCount,_that.girlsCount,_that.totalEnrollment,_that.classrooms,_that.toilets,_that.drinkingWater,_that.electricity,_that.boundaryWall,_that.eceRoom,_that.playground,_that.furniture,_that.library,_that.itFacilities,_that.buildingCondition,_that.latitude,_that.longitude,_that.photoUrl,_that.isActive,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? nameUrdu,  String emisCode,  String districtId,  String subDivisionId,  String circleId,  String clusterId,  String? village,  SchoolLevel level,  SchoolGender gender,  String? headTeacherName,  String? headTeacherUid,  String? contactPhone,  int teachersCount,  int boysCount,  int girlsCount,  int totalEnrollment,  int classrooms,  int toilets,  bool drinkingWater,  bool electricity,  bool boundaryWall,  bool eceRoom,  bool playground,  bool furniture,  bool library,  bool itFacilities,  BuildingCondition buildingCondition,  double? latitude,  double? longitude,  String? photoUrl,  bool isActive,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _SchoolModel():
return $default(_that.id,_that.name,_that.nameUrdu,_that.emisCode,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.village,_that.level,_that.gender,_that.headTeacherName,_that.headTeacherUid,_that.contactPhone,_that.teachersCount,_that.boysCount,_that.girlsCount,_that.totalEnrollment,_that.classrooms,_that.toilets,_that.drinkingWater,_that.electricity,_that.boundaryWall,_that.eceRoom,_that.playground,_that.furniture,_that.library,_that.itFacilities,_that.buildingCondition,_that.latitude,_that.longitude,_that.photoUrl,_that.isActive,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? nameUrdu,  String emisCode,  String districtId,  String subDivisionId,  String circleId,  String clusterId,  String? village,  SchoolLevel level,  SchoolGender gender,  String? headTeacherName,  String? headTeacherUid,  String? contactPhone,  int teachersCount,  int boysCount,  int girlsCount,  int totalEnrollment,  int classrooms,  int toilets,  bool drinkingWater,  bool electricity,  bool boundaryWall,  bool eceRoom,  bool playground,  bool furniture,  bool library,  bool itFacilities,  BuildingCondition buildingCondition,  double? latitude,  double? longitude,  String? photoUrl,  bool isActive,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _SchoolModel() when $default != null:
return $default(_that.id,_that.name,_that.nameUrdu,_that.emisCode,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.village,_that.level,_that.gender,_that.headTeacherName,_that.headTeacherUid,_that.contactPhone,_that.teachersCount,_that.boysCount,_that.girlsCount,_that.totalEnrollment,_that.classrooms,_that.toilets,_that.drinkingWater,_that.electricity,_that.boundaryWall,_that.eceRoom,_that.playground,_that.furniture,_that.library,_that.itFacilities,_that.buildingCondition,_that.latitude,_that.longitude,_that.photoUrl,_that.isActive,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolModel extends SchoolModel {
  const _SchoolModel({required this.id, required this.name, this.nameUrdu, required this.emisCode, required this.districtId, required this.subDivisionId, required this.circleId, required this.clusterId, this.village, this.level = SchoolLevel.primary, this.gender = SchoolGender.mixed, this.headTeacherName, this.headTeacherUid, this.contactPhone, this.teachersCount = 0, this.boysCount = 0, this.girlsCount = 0, this.totalEnrollment = 0, this.classrooms = 0, this.toilets = 0, this.drinkingWater = false, this.electricity = false, this.boundaryWall = false, this.eceRoom = false, this.playground = false, this.furniture = false, this.library = false, this.itFacilities = false, this.buildingCondition = BuildingCondition.good, this.latitude, this.longitude, this.photoUrl, this.isActive = true, required this.createdAt, required this.updatedAt, required this.createdBy}): super._();
  factory _SchoolModel.fromJson(Map<String, dynamic> json) => _$SchoolModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? nameUrdu;
@override final  String emisCode;
@override final  String districtId;
@override final  String subDivisionId;
@override final  String circleId;
@override final  String clusterId;
@override final  String? village;
@override@JsonKey() final  SchoolLevel level;
@override@JsonKey() final  SchoolGender gender;
@override final  String? headTeacherName;
@override final  String? headTeacherUid;
@override final  String? contactPhone;
@override@JsonKey() final  int teachersCount;
@override@JsonKey() final  int boysCount;
@override@JsonKey() final  int girlsCount;
@override@JsonKey() final  int totalEnrollment;
@override@JsonKey() final  int classrooms;
@override@JsonKey() final  int toilets;
@override@JsonKey() final  bool drinkingWater;
@override@JsonKey() final  bool electricity;
@override@JsonKey() final  bool boundaryWall;
@override@JsonKey() final  bool eceRoom;
@override@JsonKey() final  bool playground;
@override@JsonKey() final  bool furniture;
@override@JsonKey() final  bool library;
@override@JsonKey() final  bool itFacilities;
@override@JsonKey() final  BuildingCondition buildingCondition;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? photoUrl;
@override@JsonKey() final  bool isActive;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolModelCopyWith<_SchoolModel> get copyWith => __$SchoolModelCopyWithImpl<_SchoolModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameUrdu, nameUrdu) || other.nameUrdu == nameUrdu)&&(identical(other.emisCode, emisCode) || other.emisCode == emisCode)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.village, village) || other.village == village)&&(identical(other.level, level) || other.level == level)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.headTeacherName, headTeacherName) || other.headTeacherName == headTeacherName)&&(identical(other.headTeacherUid, headTeacherUid) || other.headTeacherUid == headTeacherUid)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.teachersCount, teachersCount) || other.teachersCount == teachersCount)&&(identical(other.boysCount, boysCount) || other.boysCount == boysCount)&&(identical(other.girlsCount, girlsCount) || other.girlsCount == girlsCount)&&(identical(other.totalEnrollment, totalEnrollment) || other.totalEnrollment == totalEnrollment)&&(identical(other.classrooms, classrooms) || other.classrooms == classrooms)&&(identical(other.toilets, toilets) || other.toilets == toilets)&&(identical(other.drinkingWater, drinkingWater) || other.drinkingWater == drinkingWater)&&(identical(other.electricity, electricity) || other.electricity == electricity)&&(identical(other.boundaryWall, boundaryWall) || other.boundaryWall == boundaryWall)&&(identical(other.eceRoom, eceRoom) || other.eceRoom == eceRoom)&&(identical(other.playground, playground) || other.playground == playground)&&(identical(other.furniture, furniture) || other.furniture == furniture)&&(identical(other.library, library) || other.library == library)&&(identical(other.itFacilities, itFacilities) || other.itFacilities == itFacilities)&&(identical(other.buildingCondition, buildingCondition) || other.buildingCondition == buildingCondition)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,nameUrdu,emisCode,districtId,subDivisionId,circleId,clusterId,village,level,gender,headTeacherName,headTeacherUid,contactPhone,teachersCount,boysCount,girlsCount,totalEnrollment,classrooms,toilets,drinkingWater,electricity,boundaryWall,eceRoom,playground,furniture,library,itFacilities,buildingCondition,latitude,longitude,photoUrl,isActive,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolModel(id: $id, name: $name, nameUrdu: $nameUrdu, emisCode: $emisCode, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, village: $village, level: $level, gender: $gender, headTeacherName: $headTeacherName, headTeacherUid: $headTeacherUid, contactPhone: $contactPhone, teachersCount: $teachersCount, boysCount: $boysCount, girlsCount: $girlsCount, totalEnrollment: $totalEnrollment, classrooms: $classrooms, toilets: $toilets, drinkingWater: $drinkingWater, electricity: $electricity, boundaryWall: $boundaryWall, eceRoom: $eceRoom, playground: $playground, furniture: $furniture, library: $library, itFacilities: $itFacilities, buildingCondition: $buildingCondition, latitude: $latitude, longitude: $longitude, photoUrl: $photoUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$SchoolModelCopyWith<$Res> implements $SchoolModelCopyWith<$Res> {
  factory _$SchoolModelCopyWith(_SchoolModel value, $Res Function(_SchoolModel) _then) = __$SchoolModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? nameUrdu, String emisCode, String districtId, String subDivisionId, String circleId, String clusterId, String? village, SchoolLevel level, SchoolGender gender, String? headTeacherName, String? headTeacherUid, String? contactPhone, int teachersCount, int boysCount, int girlsCount, int totalEnrollment, int classrooms, int toilets, bool drinkingWater, bool electricity, bool boundaryWall, bool eceRoom, bool playground, bool furniture, bool library, bool itFacilities, BuildingCondition buildingCondition, double? latitude, double? longitude, String? photoUrl, bool isActive, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$SchoolModelCopyWithImpl<$Res>
    implements _$SchoolModelCopyWith<$Res> {
  __$SchoolModelCopyWithImpl(this._self, this._then);

  final _SchoolModel _self;
  final $Res Function(_SchoolModel) _then;

/// Create a copy of SchoolModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameUrdu = freezed,Object? emisCode = null,Object? districtId = null,Object? subDivisionId = null,Object? circleId = null,Object? clusterId = null,Object? village = freezed,Object? level = null,Object? gender = null,Object? headTeacherName = freezed,Object? headTeacherUid = freezed,Object? contactPhone = freezed,Object? teachersCount = null,Object? boysCount = null,Object? girlsCount = null,Object? totalEnrollment = null,Object? classrooms = null,Object? toilets = null,Object? drinkingWater = null,Object? electricity = null,Object? boundaryWall = null,Object? eceRoom = null,Object? playground = null,Object? furniture = null,Object? library = null,Object? itFacilities = null,Object? buildingCondition = null,Object? latitude = freezed,Object? longitude = freezed,Object? photoUrl = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_SchoolModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameUrdu: freezed == nameUrdu ? _self.nameUrdu : nameUrdu // ignore: cast_nullable_to_non_nullable
as String?,emisCode: null == emisCode ? _self.emisCode : emisCode // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as String?,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as SchoolLevel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as SchoolGender,headTeacherName: freezed == headTeacherName ? _self.headTeacherName : headTeacherName // ignore: cast_nullable_to_non_nullable
as String?,headTeacherUid: freezed == headTeacherUid ? _self.headTeacherUid : headTeacherUid // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,teachersCount: null == teachersCount ? _self.teachersCount : teachersCount // ignore: cast_nullable_to_non_nullable
as int,boysCount: null == boysCount ? _self.boysCount : boysCount // ignore: cast_nullable_to_non_nullable
as int,girlsCount: null == girlsCount ? _self.girlsCount : girlsCount // ignore: cast_nullable_to_non_nullable
as int,totalEnrollment: null == totalEnrollment ? _self.totalEnrollment : totalEnrollment // ignore: cast_nullable_to_non_nullable
as int,classrooms: null == classrooms ? _self.classrooms : classrooms // ignore: cast_nullable_to_non_nullable
as int,toilets: null == toilets ? _self.toilets : toilets // ignore: cast_nullable_to_non_nullable
as int,drinkingWater: null == drinkingWater ? _self.drinkingWater : drinkingWater // ignore: cast_nullable_to_non_nullable
as bool,electricity: null == electricity ? _self.electricity : electricity // ignore: cast_nullable_to_non_nullable
as bool,boundaryWall: null == boundaryWall ? _self.boundaryWall : boundaryWall // ignore: cast_nullable_to_non_nullable
as bool,eceRoom: null == eceRoom ? _self.eceRoom : eceRoom // ignore: cast_nullable_to_non_nullable
as bool,playground: null == playground ? _self.playground : playground // ignore: cast_nullable_to_non_nullable
as bool,furniture: null == furniture ? _self.furniture : furniture // ignore: cast_nullable_to_non_nullable
as bool,library: null == library ? _self.library : library // ignore: cast_nullable_to_non_nullable
as bool,itFacilities: null == itFacilities ? _self.itFacilities : itFacilities // ignore: cast_nullable_to_non_nullable
as bool,buildingCondition: null == buildingCondition ? _self.buildingCondition : buildingCondition // ignore: cast_nullable_to_non_nullable
as BuildingCondition,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
