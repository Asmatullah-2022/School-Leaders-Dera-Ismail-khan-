// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plantation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantationModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get plantationDate; int get treesPlanted; List<String> get treeTypes; int get studentsInvolved; int get teachersInvolved; int get communityMembersInvolved; String? get location;/// Recorded on a later follow-up visit, so it stays nullable until known.
 double? get survivalRatePercent; String? get remarks; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of PlantationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantationModelCopyWith<PlantationModel> get copyWith => _$PlantationModelCopyWithImpl<PlantationModel>(this as PlantationModel, _$identity);

  /// Serializes this PlantationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.plantationDate, plantationDate) || other.plantationDate == plantationDate)&&(identical(other.treesPlanted, treesPlanted) || other.treesPlanted == treesPlanted)&&const DeepCollectionEquality().equals(other.treeTypes, treeTypes)&&(identical(other.studentsInvolved, studentsInvolved) || other.studentsInvolved == studentsInvolved)&&(identical(other.teachersInvolved, teachersInvolved) || other.teachersInvolved == teachersInvolved)&&(identical(other.communityMembersInvolved, communityMembersInvolved) || other.communityMembersInvolved == communityMembersInvolved)&&(identical(other.location, location) || other.location == location)&&(identical(other.survivalRatePercent, survivalRatePercent) || other.survivalRatePercent == survivalRatePercent)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,plantationDate,treesPlanted,const DeepCollectionEquality().hash(treeTypes),studentsInvolved,teachersInvolved,communityMembersInvolved,location,survivalRatePercent,remarks,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'PlantationModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, plantationDate: $plantationDate, treesPlanted: $treesPlanted, treeTypes: $treeTypes, studentsInvolved: $studentsInvolved, teachersInvolved: $teachersInvolved, communityMembersInvolved: $communityMembersInvolved, location: $location, survivalRatePercent: $survivalRatePercent, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $PlantationModelCopyWith<$Res>  {
  factory $PlantationModelCopyWith(PlantationModel value, $Res Function(PlantationModel) _then) = _$PlantationModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime plantationDate, int treesPlanted, List<String> treeTypes, int studentsInvolved, int teachersInvolved, int communityMembersInvolved, String? location, double? survivalRatePercent, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$PlantationModelCopyWithImpl<$Res>
    implements $PlantationModelCopyWith<$Res> {
  _$PlantationModelCopyWithImpl(this._self, this._then);

  final PlantationModel _self;
  final $Res Function(PlantationModel) _then;

/// Create a copy of PlantationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? plantationDate = null,Object? treesPlanted = null,Object? treeTypes = null,Object? studentsInvolved = null,Object? teachersInvolved = null,Object? communityMembersInvolved = null,Object? location = freezed,Object? survivalRatePercent = freezed,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(PlantationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,plantationDate: null == plantationDate ? _self.plantationDate : plantationDate // ignore: cast_nullable_to_non_nullable
as DateTime,treesPlanted: null == treesPlanted ? _self.treesPlanted : treesPlanted // ignore: cast_nullable_to_non_nullable
as int,treeTypes: null == treeTypes ? _self.treeTypes : treeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,studentsInvolved: null == studentsInvolved ? _self.studentsInvolved : studentsInvolved // ignore: cast_nullable_to_non_nullable
as int,teachersInvolved: null == teachersInvolved ? _self.teachersInvolved : teachersInvolved // ignore: cast_nullable_to_non_nullable
as int,communityMembersInvolved: null == communityMembersInvolved ? _self.communityMembersInvolved : communityMembersInvolved // ignore: cast_nullable_to_non_nullable
as int,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,survivalRatePercent: freezed == survivalRatePercent ? _self.survivalRatePercent : survivalRatePercent // ignore: cast_nullable_to_non_nullable
as double?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantationModel].
extension PlantationModelPatterns on PlantationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantationModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantationModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime plantationDate,  int treesPlanted,  List<String> treeTypes,  int studentsInvolved,  int teachersInvolved,  int communityMembersInvolved,  String? location,  double? survivalRatePercent,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantationModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.plantationDate,_that.treesPlanted,_that.treeTypes,_that.studentsInvolved,_that.teachersInvolved,_that.communityMembersInvolved,_that.location,_that.survivalRatePercent,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime plantationDate,  int treesPlanted,  List<String> treeTypes,  int studentsInvolved,  int teachersInvolved,  int communityMembersInvolved,  String? location,  double? survivalRatePercent,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _PlantationModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.plantationDate,_that.treesPlanted,_that.treeTypes,_that.studentsInvolved,_that.teachersInvolved,_that.communityMembersInvolved,_that.location,_that.survivalRatePercent,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime plantationDate,  int treesPlanted,  List<String> treeTypes,  int studentsInvolved,  int teachersInvolved,  int communityMembersInvolved,  String? location,  double? survivalRatePercent,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _PlantationModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.plantationDate,_that.treesPlanted,_that.treeTypes,_that.studentsInvolved,_that.teachersInvolved,_that.communityMembersInvolved,_that.location,_that.survivalRatePercent,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantationModel extends PlantationModel {
  const _PlantationModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.plantationDate, this.treesPlanted = 0,  List<String> treeTypes = const <String>[], this.studentsInvolved = 0, this.teachersInvolved = 0, this.communityMembersInvolved = 0, this.location, this.survivalRatePercent, this.remarks,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _treeTypes = treeTypes,_evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _PlantationModel.fromJson(Map<String, dynamic> json) => _$PlantationModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime plantationDate;
@override@JsonKey() final  int treesPlanted;
 final  List<String> _treeTypes;
@override@JsonKey() List<String> get treeTypes {
  if (_treeTypes is EqualUnmodifiableListView) return _treeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_treeTypes);
}

@override@JsonKey() final  int studentsInvolved;
@override@JsonKey() final  int teachersInvolved;
@override@JsonKey() final  int communityMembersInvolved;
@override final  String? location;
/// Recorded on a later follow-up visit, so it stays nullable until known.
@override final  double? survivalRatePercent;
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

/// Create a copy of PlantationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantationModelCopyWith<_PlantationModel> get copyWith => __$PlantationModelCopyWithImpl<_PlantationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.plantationDate, plantationDate) || other.plantationDate == plantationDate)&&(identical(other.treesPlanted, treesPlanted) || other.treesPlanted == treesPlanted)&&const DeepCollectionEquality().equals(other._treeTypes, _treeTypes)&&(identical(other.studentsInvolved, studentsInvolved) || other.studentsInvolved == studentsInvolved)&&(identical(other.teachersInvolved, teachersInvolved) || other.teachersInvolved == teachersInvolved)&&(identical(other.communityMembersInvolved, communityMembersInvolved) || other.communityMembersInvolved == communityMembersInvolved)&&(identical(other.location, location) || other.location == location)&&(identical(other.survivalRatePercent, survivalRatePercent) || other.survivalRatePercent == survivalRatePercent)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,plantationDate,treesPlanted,const DeepCollectionEquality().hash(_treeTypes),studentsInvolved,teachersInvolved,communityMembersInvolved,location,survivalRatePercent,remarks,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'PlantationModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, plantationDate: $plantationDate, treesPlanted: $treesPlanted, treeTypes: $treeTypes, studentsInvolved: $studentsInvolved, teachersInvolved: $teachersInvolved, communityMembersInvolved: $communityMembersInvolved, location: $location, survivalRatePercent: $survivalRatePercent, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$PlantationModelCopyWith<$Res> implements $PlantationModelCopyWith<$Res> {
  factory _$PlantationModelCopyWith(_PlantationModel value, $Res Function(_PlantationModel) _then) = __$PlantationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime plantationDate, int treesPlanted, List<String> treeTypes, int studentsInvolved, int teachersInvolved, int communityMembersInvolved, String? location, double? survivalRatePercent, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$PlantationModelCopyWithImpl<$Res>
    implements _$PlantationModelCopyWith<$Res> {
  __$PlantationModelCopyWithImpl(this._self, this._then);

  final _PlantationModel _self;
  final $Res Function(_PlantationModel) _then;

/// Create a copy of PlantationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? plantationDate = null,Object? treesPlanted = null,Object? treeTypes = null,Object? studentsInvolved = null,Object? teachersInvolved = null,Object? communityMembersInvolved = null,Object? location = freezed,Object? survivalRatePercent = freezed,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_PlantationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,plantationDate: null == plantationDate ? _self.plantationDate : plantationDate // ignore: cast_nullable_to_non_nullable
as DateTime,treesPlanted: null == treesPlanted ? _self.treesPlanted : treesPlanted // ignore: cast_nullable_to_non_nullable
as int,treeTypes: null == treeTypes ? _self._treeTypes : treeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,studentsInvolved: null == studentsInvolved ? _self.studentsInvolved : studentsInvolved // ignore: cast_nullable_to_non_nullable
as int,teachersInvolved: null == teachersInvolved ? _self.teachersInvolved : teachersInvolved // ignore: cast_nullable_to_non_nullable
as int,communityMembersInvolved: null == communityMembersInvolved ? _self.communityMembersInvolved : communityMembersInvolved // ignore: cast_nullable_to_non_nullable
as int,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,survivalRatePercent: freezed == survivalRatePercent ? _self.survivalRatePercent : survivalRatePercent // ignore: cast_nullable_to_non_nullable
as double?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
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
