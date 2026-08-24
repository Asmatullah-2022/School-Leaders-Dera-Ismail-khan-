// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ece_monitoring_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EceMonitoringModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get visitDate; bool get eceRoomAvailable; bool get functional; bool get teacherAvailable; bool get furnitureAdequate; bool get learningMaterialsAvailable; bool get toysAvailable; bool get learningCornersSetUp; bool get decorationAdequate; bool get cleanlinessSatisfactory; bool get safetySatisfactory; int get childrenEnrolled; int get childrenPresent; EceStatus get status; String? get remarks; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of EceMonitoringModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EceMonitoringModelCopyWith<EceMonitoringModel> get copyWith => _$EceMonitoringModelCopyWithImpl<EceMonitoringModel>(this as EceMonitoringModel, _$identity);

  /// Serializes this EceMonitoringModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EceMonitoringModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.eceRoomAvailable, eceRoomAvailable) || other.eceRoomAvailable == eceRoomAvailable)&&(identical(other.functional, functional) || other.functional == functional)&&(identical(other.teacherAvailable, teacherAvailable) || other.teacherAvailable == teacherAvailable)&&(identical(other.furnitureAdequate, furnitureAdequate) || other.furnitureAdequate == furnitureAdequate)&&(identical(other.learningMaterialsAvailable, learningMaterialsAvailable) || other.learningMaterialsAvailable == learningMaterialsAvailable)&&(identical(other.toysAvailable, toysAvailable) || other.toysAvailable == toysAvailable)&&(identical(other.learningCornersSetUp, learningCornersSetUp) || other.learningCornersSetUp == learningCornersSetUp)&&(identical(other.decorationAdequate, decorationAdequate) || other.decorationAdequate == decorationAdequate)&&(identical(other.cleanlinessSatisfactory, cleanlinessSatisfactory) || other.cleanlinessSatisfactory == cleanlinessSatisfactory)&&(identical(other.safetySatisfactory, safetySatisfactory) || other.safetySatisfactory == safetySatisfactory)&&(identical(other.childrenEnrolled, childrenEnrolled) || other.childrenEnrolled == childrenEnrolled)&&(identical(other.childrenPresent, childrenPresent) || other.childrenPresent == childrenPresent)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,visitDate,eceRoomAvailable,functional,teacherAvailable,furnitureAdequate,learningMaterialsAvailable,toysAvailable,learningCornersSetUp,decorationAdequate,cleanlinessSatisfactory,safetySatisfactory,childrenEnrolled,childrenPresent,status,remarks,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'EceMonitoringModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, visitDate: $visitDate, eceRoomAvailable: $eceRoomAvailable, functional: $functional, teacherAvailable: $teacherAvailable, furnitureAdequate: $furnitureAdequate, learningMaterialsAvailable: $learningMaterialsAvailable, toysAvailable: $toysAvailable, learningCornersSetUp: $learningCornersSetUp, decorationAdequate: $decorationAdequate, cleanlinessSatisfactory: $cleanlinessSatisfactory, safetySatisfactory: $safetySatisfactory, childrenEnrolled: $childrenEnrolled, childrenPresent: $childrenPresent, status: $status, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $EceMonitoringModelCopyWith<$Res>  {
  factory $EceMonitoringModelCopyWith(EceMonitoringModel value, $Res Function(EceMonitoringModel) _then) = _$EceMonitoringModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime visitDate, bool eceRoomAvailable, bool functional, bool teacherAvailable, bool furnitureAdequate, bool learningMaterialsAvailable, bool toysAvailable, bool learningCornersSetUp, bool decorationAdequate, bool cleanlinessSatisfactory, bool safetySatisfactory, int childrenEnrolled, int childrenPresent, EceStatus status, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$EceMonitoringModelCopyWithImpl<$Res>
    implements $EceMonitoringModelCopyWith<$Res> {
  _$EceMonitoringModelCopyWithImpl(this._self, this._then);

  final EceMonitoringModel _self;
  final $Res Function(EceMonitoringModel) _then;

/// Create a copy of EceMonitoringModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? visitDate = null,Object? eceRoomAvailable = null,Object? functional = null,Object? teacherAvailable = null,Object? furnitureAdequate = null,Object? learningMaterialsAvailable = null,Object? toysAvailable = null,Object? learningCornersSetUp = null,Object? decorationAdequate = null,Object? cleanlinessSatisfactory = null,Object? safetySatisfactory = null,Object? childrenEnrolled = null,Object? childrenPresent = null,Object? status = null,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(EceMonitoringModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime,eceRoomAvailable: null == eceRoomAvailable ? _self.eceRoomAvailable : eceRoomAvailable // ignore: cast_nullable_to_non_nullable
as bool,functional: null == functional ? _self.functional : functional // ignore: cast_nullable_to_non_nullable
as bool,teacherAvailable: null == teacherAvailable ? _self.teacherAvailable : teacherAvailable // ignore: cast_nullable_to_non_nullable
as bool,furnitureAdequate: null == furnitureAdequate ? _self.furnitureAdequate : furnitureAdequate // ignore: cast_nullable_to_non_nullable
as bool,learningMaterialsAvailable: null == learningMaterialsAvailable ? _self.learningMaterialsAvailable : learningMaterialsAvailable // ignore: cast_nullable_to_non_nullable
as bool,toysAvailable: null == toysAvailable ? _self.toysAvailable : toysAvailable // ignore: cast_nullable_to_non_nullable
as bool,learningCornersSetUp: null == learningCornersSetUp ? _self.learningCornersSetUp : learningCornersSetUp // ignore: cast_nullable_to_non_nullable
as bool,decorationAdequate: null == decorationAdequate ? _self.decorationAdequate : decorationAdequate // ignore: cast_nullable_to_non_nullable
as bool,cleanlinessSatisfactory: null == cleanlinessSatisfactory ? _self.cleanlinessSatisfactory : cleanlinessSatisfactory // ignore: cast_nullable_to_non_nullable
as bool,safetySatisfactory: null == safetySatisfactory ? _self.safetySatisfactory : safetySatisfactory // ignore: cast_nullable_to_non_nullable
as bool,childrenEnrolled: null == childrenEnrolled ? _self.childrenEnrolled : childrenEnrolled // ignore: cast_nullable_to_non_nullable
as int,childrenPresent: null == childrenPresent ? _self.childrenPresent : childrenPresent // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EceStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EceMonitoringModel].
extension EceMonitoringModelPatterns on EceMonitoringModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EceMonitoringModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EceMonitoringModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EceMonitoringModel value)  $default,){
final _that = this;
switch (_that) {
case _EceMonitoringModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EceMonitoringModel value)?  $default,){
final _that = this;
switch (_that) {
case _EceMonitoringModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime visitDate,  bool eceRoomAvailable,  bool functional,  bool teacherAvailable,  bool furnitureAdequate,  bool learningMaterialsAvailable,  bool toysAvailable,  bool learningCornersSetUp,  bool decorationAdequate,  bool cleanlinessSatisfactory,  bool safetySatisfactory,  int childrenEnrolled,  int childrenPresent,  EceStatus status,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EceMonitoringModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.visitDate,_that.eceRoomAvailable,_that.functional,_that.teacherAvailable,_that.furnitureAdequate,_that.learningMaterialsAvailable,_that.toysAvailable,_that.learningCornersSetUp,_that.decorationAdequate,_that.cleanlinessSatisfactory,_that.safetySatisfactory,_that.childrenEnrolled,_that.childrenPresent,_that.status,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime visitDate,  bool eceRoomAvailable,  bool functional,  bool teacherAvailable,  bool furnitureAdequate,  bool learningMaterialsAvailable,  bool toysAvailable,  bool learningCornersSetUp,  bool decorationAdequate,  bool cleanlinessSatisfactory,  bool safetySatisfactory,  int childrenEnrolled,  int childrenPresent,  EceStatus status,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _EceMonitoringModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.visitDate,_that.eceRoomAvailable,_that.functional,_that.teacherAvailable,_that.furnitureAdequate,_that.learningMaterialsAvailable,_that.toysAvailable,_that.learningCornersSetUp,_that.decorationAdequate,_that.cleanlinessSatisfactory,_that.safetySatisfactory,_that.childrenEnrolled,_that.childrenPresent,_that.status,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime visitDate,  bool eceRoomAvailable,  bool functional,  bool teacherAvailable,  bool furnitureAdequate,  bool learningMaterialsAvailable,  bool toysAvailable,  bool learningCornersSetUp,  bool decorationAdequate,  bool cleanlinessSatisfactory,  bool safetySatisfactory,  int childrenEnrolled,  int childrenPresent,  EceStatus status,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _EceMonitoringModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.visitDate,_that.eceRoomAvailable,_that.functional,_that.teacherAvailable,_that.furnitureAdequate,_that.learningMaterialsAvailable,_that.toysAvailable,_that.learningCornersSetUp,_that.decorationAdequate,_that.cleanlinessSatisfactory,_that.safetySatisfactory,_that.childrenEnrolled,_that.childrenPresent,_that.status,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EceMonitoringModel extends EceMonitoringModel {
  const _EceMonitoringModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.visitDate, this.eceRoomAvailable = false, this.functional = false, this.teacherAvailable = false, this.furnitureAdequate = false, this.learningMaterialsAvailable = false, this.toysAvailable = false, this.learningCornersSetUp = false, this.decorationAdequate = false, this.cleanlinessSatisfactory = false, this.safetySatisfactory = false, this.childrenEnrolled = 0, this.childrenPresent = 0, this.status = EceStatus.needsImprovement, this.remarks,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _EceMonitoringModel.fromJson(Map<String, dynamic> json) => _$EceMonitoringModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime visitDate;
@override@JsonKey() final  bool eceRoomAvailable;
@override@JsonKey() final  bool functional;
@override@JsonKey() final  bool teacherAvailable;
@override@JsonKey() final  bool furnitureAdequate;
@override@JsonKey() final  bool learningMaterialsAvailable;
@override@JsonKey() final  bool toysAvailable;
@override@JsonKey() final  bool learningCornersSetUp;
@override@JsonKey() final  bool decorationAdequate;
@override@JsonKey() final  bool cleanlinessSatisfactory;
@override@JsonKey() final  bool safetySatisfactory;
@override@JsonKey() final  int childrenEnrolled;
@override@JsonKey() final  int childrenPresent;
@override@JsonKey() final  EceStatus status;
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

/// Create a copy of EceMonitoringModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EceMonitoringModelCopyWith<_EceMonitoringModel> get copyWith => __$EceMonitoringModelCopyWithImpl<_EceMonitoringModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EceMonitoringModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EceMonitoringModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.eceRoomAvailable, eceRoomAvailable) || other.eceRoomAvailable == eceRoomAvailable)&&(identical(other.functional, functional) || other.functional == functional)&&(identical(other.teacherAvailable, teacherAvailable) || other.teacherAvailable == teacherAvailable)&&(identical(other.furnitureAdequate, furnitureAdequate) || other.furnitureAdequate == furnitureAdequate)&&(identical(other.learningMaterialsAvailable, learningMaterialsAvailable) || other.learningMaterialsAvailable == learningMaterialsAvailable)&&(identical(other.toysAvailable, toysAvailable) || other.toysAvailable == toysAvailable)&&(identical(other.learningCornersSetUp, learningCornersSetUp) || other.learningCornersSetUp == learningCornersSetUp)&&(identical(other.decorationAdequate, decorationAdequate) || other.decorationAdequate == decorationAdequate)&&(identical(other.cleanlinessSatisfactory, cleanlinessSatisfactory) || other.cleanlinessSatisfactory == cleanlinessSatisfactory)&&(identical(other.safetySatisfactory, safetySatisfactory) || other.safetySatisfactory == safetySatisfactory)&&(identical(other.childrenEnrolled, childrenEnrolled) || other.childrenEnrolled == childrenEnrolled)&&(identical(other.childrenPresent, childrenPresent) || other.childrenPresent == childrenPresent)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,visitDate,eceRoomAvailable,functional,teacherAvailable,furnitureAdequate,learningMaterialsAvailable,toysAvailable,learningCornersSetUp,decorationAdequate,cleanlinessSatisfactory,safetySatisfactory,childrenEnrolled,childrenPresent,status,remarks,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'EceMonitoringModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, visitDate: $visitDate, eceRoomAvailable: $eceRoomAvailable, functional: $functional, teacherAvailable: $teacherAvailable, furnitureAdequate: $furnitureAdequate, learningMaterialsAvailable: $learningMaterialsAvailable, toysAvailable: $toysAvailable, learningCornersSetUp: $learningCornersSetUp, decorationAdequate: $decorationAdequate, cleanlinessSatisfactory: $cleanlinessSatisfactory, safetySatisfactory: $safetySatisfactory, childrenEnrolled: $childrenEnrolled, childrenPresent: $childrenPresent, status: $status, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$EceMonitoringModelCopyWith<$Res> implements $EceMonitoringModelCopyWith<$Res> {
  factory _$EceMonitoringModelCopyWith(_EceMonitoringModel value, $Res Function(_EceMonitoringModel) _then) = __$EceMonitoringModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime visitDate, bool eceRoomAvailable, bool functional, bool teacherAvailable, bool furnitureAdequate, bool learningMaterialsAvailable, bool toysAvailable, bool learningCornersSetUp, bool decorationAdequate, bool cleanlinessSatisfactory, bool safetySatisfactory, int childrenEnrolled, int childrenPresent, EceStatus status, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$EceMonitoringModelCopyWithImpl<$Res>
    implements _$EceMonitoringModelCopyWith<$Res> {
  __$EceMonitoringModelCopyWithImpl(this._self, this._then);

  final _EceMonitoringModel _self;
  final $Res Function(_EceMonitoringModel) _then;

/// Create a copy of EceMonitoringModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? visitDate = null,Object? eceRoomAvailable = null,Object? functional = null,Object? teacherAvailable = null,Object? furnitureAdequate = null,Object? learningMaterialsAvailable = null,Object? toysAvailable = null,Object? learningCornersSetUp = null,Object? decorationAdequate = null,Object? cleanlinessSatisfactory = null,Object? safetySatisfactory = null,Object? childrenEnrolled = null,Object? childrenPresent = null,Object? status = null,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_EceMonitoringModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime,eceRoomAvailable: null == eceRoomAvailable ? _self.eceRoomAvailable : eceRoomAvailable // ignore: cast_nullable_to_non_nullable
as bool,functional: null == functional ? _self.functional : functional // ignore: cast_nullable_to_non_nullable
as bool,teacherAvailable: null == teacherAvailable ? _self.teacherAvailable : teacherAvailable // ignore: cast_nullable_to_non_nullable
as bool,furnitureAdequate: null == furnitureAdequate ? _self.furnitureAdequate : furnitureAdequate // ignore: cast_nullable_to_non_nullable
as bool,learningMaterialsAvailable: null == learningMaterialsAvailable ? _self.learningMaterialsAvailable : learningMaterialsAvailable // ignore: cast_nullable_to_non_nullable
as bool,toysAvailable: null == toysAvailable ? _self.toysAvailable : toysAvailable // ignore: cast_nullable_to_non_nullable
as bool,learningCornersSetUp: null == learningCornersSetUp ? _self.learningCornersSetUp : learningCornersSetUp // ignore: cast_nullable_to_non_nullable
as bool,decorationAdequate: null == decorationAdequate ? _self.decorationAdequate : decorationAdequate // ignore: cast_nullable_to_non_nullable
as bool,cleanlinessSatisfactory: null == cleanlinessSatisfactory ? _self.cleanlinessSatisfactory : cleanlinessSatisfactory // ignore: cast_nullable_to_non_nullable
as bool,safetySatisfactory: null == safetySatisfactory ? _self.safetySatisfactory : safetySatisfactory // ignore: cast_nullable_to_non_nullable
as bool,childrenEnrolled: null == childrenEnrolled ? _self.childrenEnrolled : childrenEnrolled // ignore: cast_nullable_to_non_nullable
as int,childrenPresent: null == childrenPresent ? _self.childrenPresent : childrenPresent // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EceStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
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
