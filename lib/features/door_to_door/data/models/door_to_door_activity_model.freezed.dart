// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'door_to_door_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoorToDoorActivityModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get activityDate; String? get area; List<String> get teamMembers; int get housesVisited; int get childrenIdentified; int get childrenEnrolled; int get parentsContacted; String? get remarks; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of DoorToDoorActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoorToDoorActivityModelCopyWith<DoorToDoorActivityModel> get copyWith => _$DoorToDoorActivityModelCopyWithImpl<DoorToDoorActivityModel>(this as DoorToDoorActivityModel, _$identity);

  /// Serializes this DoorToDoorActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoorToDoorActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.area, area) || other.area == area)&&const DeepCollectionEquality().equals(other.teamMembers, teamMembers)&&(identical(other.housesVisited, housesVisited) || other.housesVisited == housesVisited)&&(identical(other.childrenIdentified, childrenIdentified) || other.childrenIdentified == childrenIdentified)&&(identical(other.childrenEnrolled, childrenEnrolled) || other.childrenEnrolled == childrenEnrolled)&&(identical(other.parentsContacted, parentsContacted) || other.parentsContacted == parentsContacted)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,activityDate,area,const DeepCollectionEquality().hash(teamMembers),housesVisited,childrenIdentified,childrenEnrolled,parentsContacted,remarks,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'DoorToDoorActivityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, activityDate: $activityDate, area: $area, teamMembers: $teamMembers, housesVisited: $housesVisited, childrenIdentified: $childrenIdentified, childrenEnrolled: $childrenEnrolled, parentsContacted: $parentsContacted, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $DoorToDoorActivityModelCopyWith<$Res>  {
  factory $DoorToDoorActivityModelCopyWith(DoorToDoorActivityModel value, $Res Function(DoorToDoorActivityModel) _then) = _$DoorToDoorActivityModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime activityDate, String? area, List<String> teamMembers, int housesVisited, int childrenIdentified, int childrenEnrolled, int parentsContacted, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$DoorToDoorActivityModelCopyWithImpl<$Res>
    implements $DoorToDoorActivityModelCopyWith<$Res> {
  _$DoorToDoorActivityModelCopyWithImpl(this._self, this._then);

  final DoorToDoorActivityModel _self;
  final $Res Function(DoorToDoorActivityModel) _then;

/// Create a copy of DoorToDoorActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? activityDate = null,Object? area = freezed,Object? teamMembers = null,Object? housesVisited = null,Object? childrenIdentified = null,Object? childrenEnrolled = null,Object? parentsContacted = null,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(DoorToDoorActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,activityDate: null == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,teamMembers: null == teamMembers ? _self.teamMembers : teamMembers // ignore: cast_nullable_to_non_nullable
as List<String>,housesVisited: null == housesVisited ? _self.housesVisited : housesVisited // ignore: cast_nullable_to_non_nullable
as int,childrenIdentified: null == childrenIdentified ? _self.childrenIdentified : childrenIdentified // ignore: cast_nullable_to_non_nullable
as int,childrenEnrolled: null == childrenEnrolled ? _self.childrenEnrolled : childrenEnrolled // ignore: cast_nullable_to_non_nullable
as int,parentsContacted: null == parentsContacted ? _self.parentsContacted : parentsContacted // ignore: cast_nullable_to_non_nullable
as int,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DoorToDoorActivityModel].
extension DoorToDoorActivityModelPatterns on DoorToDoorActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DoorToDoorActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DoorToDoorActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DoorToDoorActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _DoorToDoorActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DoorToDoorActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _DoorToDoorActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime activityDate,  String? area,  List<String> teamMembers,  int housesVisited,  int childrenIdentified,  int childrenEnrolled,  int parentsContacted,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DoorToDoorActivityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.activityDate,_that.area,_that.teamMembers,_that.housesVisited,_that.childrenIdentified,_that.childrenEnrolled,_that.parentsContacted,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime activityDate,  String? area,  List<String> teamMembers,  int housesVisited,  int childrenIdentified,  int childrenEnrolled,  int parentsContacted,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _DoorToDoorActivityModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.activityDate,_that.area,_that.teamMembers,_that.housesVisited,_that.childrenIdentified,_that.childrenEnrolled,_that.parentsContacted,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime activityDate,  String? area,  List<String> teamMembers,  int housesVisited,  int childrenIdentified,  int childrenEnrolled,  int parentsContacted,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _DoorToDoorActivityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.activityDate,_that.area,_that.teamMembers,_that.housesVisited,_that.childrenIdentified,_that.childrenEnrolled,_that.parentsContacted,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DoorToDoorActivityModel extends DoorToDoorActivityModel {
  const _DoorToDoorActivityModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.activityDate, this.area,  List<String> teamMembers = const <String>[], this.housesVisited = 0, this.childrenIdentified = 0, this.childrenEnrolled = 0, this.parentsContacted = 0, this.remarks,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _teamMembers = teamMembers,_evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _DoorToDoorActivityModel.fromJson(Map<String, dynamic> json) => _$DoorToDoorActivityModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime activityDate;
@override final  String? area;
 final  List<String> _teamMembers;
@override@JsonKey() List<String> get teamMembers {
  if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teamMembers);
}

@override@JsonKey() final  int housesVisited;
@override@JsonKey() final  int childrenIdentified;
@override@JsonKey() final  int childrenEnrolled;
@override@JsonKey() final  int parentsContacted;
@override final  String? remarks;
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

/// Create a copy of DoorToDoorActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DoorToDoorActivityModelCopyWith<_DoorToDoorActivityModel> get copyWith => __$DoorToDoorActivityModelCopyWithImpl<_DoorToDoorActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DoorToDoorActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DoorToDoorActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.area, area) || other.area == area)&&const DeepCollectionEquality().equals(other._teamMembers, _teamMembers)&&(identical(other.housesVisited, housesVisited) || other.housesVisited == housesVisited)&&(identical(other.childrenIdentified, childrenIdentified) || other.childrenIdentified == childrenIdentified)&&(identical(other.childrenEnrolled, childrenEnrolled) || other.childrenEnrolled == childrenEnrolled)&&(identical(other.parentsContacted, parentsContacted) || other.parentsContacted == parentsContacted)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,activityDate,area,const DeepCollectionEquality().hash(_teamMembers),housesVisited,childrenIdentified,childrenEnrolled,parentsContacted,remarks,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'DoorToDoorActivityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, activityDate: $activityDate, area: $area, teamMembers: $teamMembers, housesVisited: $housesVisited, childrenIdentified: $childrenIdentified, childrenEnrolled: $childrenEnrolled, parentsContacted: $parentsContacted, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$DoorToDoorActivityModelCopyWith<$Res> implements $DoorToDoorActivityModelCopyWith<$Res> {
  factory _$DoorToDoorActivityModelCopyWith(_DoorToDoorActivityModel value, $Res Function(_DoorToDoorActivityModel) _then) = __$DoorToDoorActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime activityDate, String? area, List<String> teamMembers, int housesVisited, int childrenIdentified, int childrenEnrolled, int parentsContacted, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$DoorToDoorActivityModelCopyWithImpl<$Res>
    implements _$DoorToDoorActivityModelCopyWith<$Res> {
  __$DoorToDoorActivityModelCopyWithImpl(this._self, this._then);

  final _DoorToDoorActivityModel _self;
  final $Res Function(_DoorToDoorActivityModel) _then;

/// Create a copy of DoorToDoorActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? activityDate = null,Object? area = freezed,Object? teamMembers = null,Object? housesVisited = null,Object? childrenIdentified = null,Object? childrenEnrolled = null,Object? parentsContacted = null,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_DoorToDoorActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,activityDate: null == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,teamMembers: null == teamMembers ? _self._teamMembers : teamMembers // ignore: cast_nullable_to_non_nullable
as List<String>,housesVisited: null == housesVisited ? _self.housesVisited : housesVisited // ignore: cast_nullable_to_non_nullable
as int,childrenIdentified: null == childrenIdentified ? _self.childrenIdentified : childrenIdentified // ignore: cast_nullable_to_non_nullable
as int,childrenEnrolled: null == childrenEnrolled ? _self.childrenEnrolled : childrenEnrolled // ignore: cast_nullable_to_non_nullable
as int,parentsContacted: null == parentsContacted ? _self.parentsContacted : parentsContacted // ignore: cast_nullable_to_non_nullable
as int,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
