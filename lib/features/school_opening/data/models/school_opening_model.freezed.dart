// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_opening_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolOpeningModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get checkDate; bool get isOpen; String? get openingTime; String? get closingTime; bool get headTeacherPresent; int get teachersPresent; int get studentsPresent; String? get reasonIfClosed; String? get actionRequired; String? get verifiedByUid; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of SchoolOpeningModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolOpeningModelCopyWith<SchoolOpeningModel> get copyWith => _$SchoolOpeningModelCopyWithImpl<SchoolOpeningModel>(this as SchoolOpeningModel, _$identity);

  /// Serializes this SchoolOpeningModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolOpeningModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.checkDate, checkDate) || other.checkDate == checkDate)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime)&&(identical(other.headTeacherPresent, headTeacherPresent) || other.headTeacherPresent == headTeacherPresent)&&(identical(other.teachersPresent, teachersPresent) || other.teachersPresent == teachersPresent)&&(identical(other.studentsPresent, studentsPresent) || other.studentsPresent == studentsPresent)&&(identical(other.reasonIfClosed, reasonIfClosed) || other.reasonIfClosed == reasonIfClosed)&&(identical(other.actionRequired, actionRequired) || other.actionRequired == actionRequired)&&(identical(other.verifiedByUid, verifiedByUid) || other.verifiedByUid == verifiedByUid)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,checkDate,isOpen,openingTime,closingTime,headTeacherPresent,teachersPresent,studentsPresent,reasonIfClosed,actionRequired,verifiedByUid,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolOpeningModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, checkDate: $checkDate, isOpen: $isOpen, openingTime: $openingTime, closingTime: $closingTime, headTeacherPresent: $headTeacherPresent, teachersPresent: $teachersPresent, studentsPresent: $studentsPresent, reasonIfClosed: $reasonIfClosed, actionRequired: $actionRequired, verifiedByUid: $verifiedByUid, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $SchoolOpeningModelCopyWith<$Res>  {
  factory $SchoolOpeningModelCopyWith(SchoolOpeningModel value, $Res Function(SchoolOpeningModel) _then) = _$SchoolOpeningModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime checkDate, bool isOpen, String? openingTime, String? closingTime, bool headTeacherPresent, int teachersPresent, int studentsPresent, String? reasonIfClosed, String? actionRequired, String? verifiedByUid, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$SchoolOpeningModelCopyWithImpl<$Res>
    implements $SchoolOpeningModelCopyWith<$Res> {
  _$SchoolOpeningModelCopyWithImpl(this._self, this._then);

  final SchoolOpeningModel _self;
  final $Res Function(SchoolOpeningModel) _then;

/// Create a copy of SchoolOpeningModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? checkDate = null,Object? isOpen = null,Object? openingTime = freezed,Object? closingTime = freezed,Object? headTeacherPresent = null,Object? teachersPresent = null,Object? studentsPresent = null,Object? reasonIfClosed = freezed,Object? actionRequired = freezed,Object? verifiedByUid = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(SchoolOpeningModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,checkDate: null == checkDate ? _self.checkDate : checkDate // ignore: cast_nullable_to_non_nullable
as DateTime,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,openingTime: freezed == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as String?,closingTime: freezed == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as String?,headTeacherPresent: null == headTeacherPresent ? _self.headTeacherPresent : headTeacherPresent // ignore: cast_nullable_to_non_nullable
as bool,teachersPresent: null == teachersPresent ? _self.teachersPresent : teachersPresent // ignore: cast_nullable_to_non_nullable
as int,studentsPresent: null == studentsPresent ? _self.studentsPresent : studentsPresent // ignore: cast_nullable_to_non_nullable
as int,reasonIfClosed: freezed == reasonIfClosed ? _self.reasonIfClosed : reasonIfClosed // ignore: cast_nullable_to_non_nullable
as String?,actionRequired: freezed == actionRequired ? _self.actionRequired : actionRequired // ignore: cast_nullable_to_non_nullable
as String?,verifiedByUid: freezed == verifiedByUid ? _self.verifiedByUid : verifiedByUid // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolOpeningModel].
extension SchoolOpeningModelPatterns on SchoolOpeningModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolOpeningModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolOpeningModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolOpeningModel value)  $default,){
final _that = this;
switch (_that) {
case _SchoolOpeningModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolOpeningModel value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolOpeningModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime checkDate,  bool isOpen,  String? openingTime,  String? closingTime,  bool headTeacherPresent,  int teachersPresent,  int studentsPresent,  String? reasonIfClosed,  String? actionRequired,  String? verifiedByUid,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolOpeningModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.checkDate,_that.isOpen,_that.openingTime,_that.closingTime,_that.headTeacherPresent,_that.teachersPresent,_that.studentsPresent,_that.reasonIfClosed,_that.actionRequired,_that.verifiedByUid,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime checkDate,  bool isOpen,  String? openingTime,  String? closingTime,  bool headTeacherPresent,  int teachersPresent,  int studentsPresent,  String? reasonIfClosed,  String? actionRequired,  String? verifiedByUid,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _SchoolOpeningModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.checkDate,_that.isOpen,_that.openingTime,_that.closingTime,_that.headTeacherPresent,_that.teachersPresent,_that.studentsPresent,_that.reasonIfClosed,_that.actionRequired,_that.verifiedByUid,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime checkDate,  bool isOpen,  String? openingTime,  String? closingTime,  bool headTeacherPresent,  int teachersPresent,  int studentsPresent,  String? reasonIfClosed,  String? actionRequired,  String? verifiedByUid,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _SchoolOpeningModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.checkDate,_that.isOpen,_that.openingTime,_that.closingTime,_that.headTeacherPresent,_that.teachersPresent,_that.studentsPresent,_that.reasonIfClosed,_that.actionRequired,_that.verifiedByUid,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolOpeningModel extends SchoolOpeningModel {
  const _SchoolOpeningModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.checkDate, this.isOpen = true, this.openingTime, this.closingTime, this.headTeacherPresent = false, this.teachersPresent = 0, this.studentsPresent = 0, this.reasonIfClosed, this.actionRequired, this.verifiedByUid,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _SchoolOpeningModel.fromJson(Map<String, dynamic> json) => _$SchoolOpeningModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime checkDate;
@override@JsonKey() final  bool isOpen;
@override final  String? openingTime;
@override final  String? closingTime;
@override@JsonKey() final  bool headTeacherPresent;
@override@JsonKey() final  int teachersPresent;
@override@JsonKey() final  int studentsPresent;
@override final  String? reasonIfClosed;
@override final  String? actionRequired;
@override final  String? verifiedByUid;
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

/// Create a copy of SchoolOpeningModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolOpeningModelCopyWith<_SchoolOpeningModel> get copyWith => __$SchoolOpeningModelCopyWithImpl<_SchoolOpeningModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolOpeningModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolOpeningModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.checkDate, checkDate) || other.checkDate == checkDate)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime)&&(identical(other.headTeacherPresent, headTeacherPresent) || other.headTeacherPresent == headTeacherPresent)&&(identical(other.teachersPresent, teachersPresent) || other.teachersPresent == teachersPresent)&&(identical(other.studentsPresent, studentsPresent) || other.studentsPresent == studentsPresent)&&(identical(other.reasonIfClosed, reasonIfClosed) || other.reasonIfClosed == reasonIfClosed)&&(identical(other.actionRequired, actionRequired) || other.actionRequired == actionRequired)&&(identical(other.verifiedByUid, verifiedByUid) || other.verifiedByUid == verifiedByUid)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,checkDate,isOpen,openingTime,closingTime,headTeacherPresent,teachersPresent,studentsPresent,reasonIfClosed,actionRequired,verifiedByUid,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolOpeningModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, checkDate: $checkDate, isOpen: $isOpen, openingTime: $openingTime, closingTime: $closingTime, headTeacherPresent: $headTeacherPresent, teachersPresent: $teachersPresent, studentsPresent: $studentsPresent, reasonIfClosed: $reasonIfClosed, actionRequired: $actionRequired, verifiedByUid: $verifiedByUid, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$SchoolOpeningModelCopyWith<$Res> implements $SchoolOpeningModelCopyWith<$Res> {
  factory _$SchoolOpeningModelCopyWith(_SchoolOpeningModel value, $Res Function(_SchoolOpeningModel) _then) = __$SchoolOpeningModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime checkDate, bool isOpen, String? openingTime, String? closingTime, bool headTeacherPresent, int teachersPresent, int studentsPresent, String? reasonIfClosed, String? actionRequired, String? verifiedByUid, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$SchoolOpeningModelCopyWithImpl<$Res>
    implements _$SchoolOpeningModelCopyWith<$Res> {
  __$SchoolOpeningModelCopyWithImpl(this._self, this._then);

  final _SchoolOpeningModel _self;
  final $Res Function(_SchoolOpeningModel) _then;

/// Create a copy of SchoolOpeningModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? checkDate = null,Object? isOpen = null,Object? openingTime = freezed,Object? closingTime = freezed,Object? headTeacherPresent = null,Object? teachersPresent = null,Object? studentsPresent = null,Object? reasonIfClosed = freezed,Object? actionRequired = freezed,Object? verifiedByUid = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_SchoolOpeningModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,checkDate: null == checkDate ? _self.checkDate : checkDate // ignore: cast_nullable_to_non_nullable
as DateTime,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,openingTime: freezed == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as String?,closingTime: freezed == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as String?,headTeacherPresent: null == headTeacherPresent ? _self.headTeacherPresent : headTeacherPresent // ignore: cast_nullable_to_non_nullable
as bool,teachersPresent: null == teachersPresent ? _self.teachersPresent : teachersPresent // ignore: cast_nullable_to_non_nullable
as int,studentsPresent: null == studentsPresent ? _self.studentsPresent : studentsPresent // ignore: cast_nullable_to_non_nullable
as int,reasonIfClosed: freezed == reasonIfClosed ? _self.reasonIfClosed : reasonIfClosed // ignore: cast_nullable_to_non_nullable
as String?,actionRequired: freezed == actionRequired ? _self.actionRequired : actionRequired // ignore: cast_nullable_to_non_nullable
as String?,verifiedByUid: freezed == verifiedByUid ? _self.verifiedByUid : verifiedByUid // ignore: cast_nullable_to_non_nullable
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
