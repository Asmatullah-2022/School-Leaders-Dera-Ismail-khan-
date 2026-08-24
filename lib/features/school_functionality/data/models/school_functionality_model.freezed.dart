// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_functionality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolFunctionalityModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get assessmentDate; bool get schoolOpen; bool get headTeacherPresent; int get teachersPresent; int get teachersTotal; int get studentsPresent; int get studentsTotal; bool get classesConducted; bool get teachingActivityObserved; bool get cleanlinessSatisfactory; bool get basicFacilitiesAvailable; bool get timetableDisplayed; bool get morningAssemblyHeld; bool get learningEnvironmentSatisfactory; FunctionalityStatus get overallStatus; String? get remarks; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of SchoolFunctionalityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolFunctionalityModelCopyWith<SchoolFunctionalityModel> get copyWith => _$SchoolFunctionalityModelCopyWithImpl<SchoolFunctionalityModel>(this as SchoolFunctionalityModel, _$identity);

  /// Serializes this SchoolFunctionalityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolFunctionalityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.assessmentDate, assessmentDate) || other.assessmentDate == assessmentDate)&&(identical(other.schoolOpen, schoolOpen) || other.schoolOpen == schoolOpen)&&(identical(other.headTeacherPresent, headTeacherPresent) || other.headTeacherPresent == headTeacherPresent)&&(identical(other.teachersPresent, teachersPresent) || other.teachersPresent == teachersPresent)&&(identical(other.teachersTotal, teachersTotal) || other.teachersTotal == teachersTotal)&&(identical(other.studentsPresent, studentsPresent) || other.studentsPresent == studentsPresent)&&(identical(other.studentsTotal, studentsTotal) || other.studentsTotal == studentsTotal)&&(identical(other.classesConducted, classesConducted) || other.classesConducted == classesConducted)&&(identical(other.teachingActivityObserved, teachingActivityObserved) || other.teachingActivityObserved == teachingActivityObserved)&&(identical(other.cleanlinessSatisfactory, cleanlinessSatisfactory) || other.cleanlinessSatisfactory == cleanlinessSatisfactory)&&(identical(other.basicFacilitiesAvailable, basicFacilitiesAvailable) || other.basicFacilitiesAvailable == basicFacilitiesAvailable)&&(identical(other.timetableDisplayed, timetableDisplayed) || other.timetableDisplayed == timetableDisplayed)&&(identical(other.morningAssemblyHeld, morningAssemblyHeld) || other.morningAssemblyHeld == morningAssemblyHeld)&&(identical(other.learningEnvironmentSatisfactory, learningEnvironmentSatisfactory) || other.learningEnvironmentSatisfactory == learningEnvironmentSatisfactory)&&(identical(other.overallStatus, overallStatus) || other.overallStatus == overallStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,assessmentDate,schoolOpen,headTeacherPresent,teachersPresent,teachersTotal,studentsPresent,studentsTotal,classesConducted,teachingActivityObserved,cleanlinessSatisfactory,basicFacilitiesAvailable,timetableDisplayed,morningAssemblyHeld,learningEnvironmentSatisfactory,overallStatus,remarks,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolFunctionalityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, assessmentDate: $assessmentDate, schoolOpen: $schoolOpen, headTeacherPresent: $headTeacherPresent, teachersPresent: $teachersPresent, teachersTotal: $teachersTotal, studentsPresent: $studentsPresent, studentsTotal: $studentsTotal, classesConducted: $classesConducted, teachingActivityObserved: $teachingActivityObserved, cleanlinessSatisfactory: $cleanlinessSatisfactory, basicFacilitiesAvailable: $basicFacilitiesAvailable, timetableDisplayed: $timetableDisplayed, morningAssemblyHeld: $morningAssemblyHeld, learningEnvironmentSatisfactory: $learningEnvironmentSatisfactory, overallStatus: $overallStatus, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $SchoolFunctionalityModelCopyWith<$Res>  {
  factory $SchoolFunctionalityModelCopyWith(SchoolFunctionalityModel value, $Res Function(SchoolFunctionalityModel) _then) = _$SchoolFunctionalityModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime assessmentDate, bool schoolOpen, bool headTeacherPresent, int teachersPresent, int teachersTotal, int studentsPresent, int studentsTotal, bool classesConducted, bool teachingActivityObserved, bool cleanlinessSatisfactory, bool basicFacilitiesAvailable, bool timetableDisplayed, bool morningAssemblyHeld, bool learningEnvironmentSatisfactory, FunctionalityStatus overallStatus, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$SchoolFunctionalityModelCopyWithImpl<$Res>
    implements $SchoolFunctionalityModelCopyWith<$Res> {
  _$SchoolFunctionalityModelCopyWithImpl(this._self, this._then);

  final SchoolFunctionalityModel _self;
  final $Res Function(SchoolFunctionalityModel) _then;

/// Create a copy of SchoolFunctionalityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? assessmentDate = null,Object? schoolOpen = null,Object? headTeacherPresent = null,Object? teachersPresent = null,Object? teachersTotal = null,Object? studentsPresent = null,Object? studentsTotal = null,Object? classesConducted = null,Object? teachingActivityObserved = null,Object? cleanlinessSatisfactory = null,Object? basicFacilitiesAvailable = null,Object? timetableDisplayed = null,Object? morningAssemblyHeld = null,Object? learningEnvironmentSatisfactory = null,Object? overallStatus = null,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(SchoolFunctionalityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,assessmentDate: null == assessmentDate ? _self.assessmentDate : assessmentDate // ignore: cast_nullable_to_non_nullable
as DateTime,schoolOpen: null == schoolOpen ? _self.schoolOpen : schoolOpen // ignore: cast_nullable_to_non_nullable
as bool,headTeacherPresent: null == headTeacherPresent ? _self.headTeacherPresent : headTeacherPresent // ignore: cast_nullable_to_non_nullable
as bool,teachersPresent: null == teachersPresent ? _self.teachersPresent : teachersPresent // ignore: cast_nullable_to_non_nullable
as int,teachersTotal: null == teachersTotal ? _self.teachersTotal : teachersTotal // ignore: cast_nullable_to_non_nullable
as int,studentsPresent: null == studentsPresent ? _self.studentsPresent : studentsPresent // ignore: cast_nullable_to_non_nullable
as int,studentsTotal: null == studentsTotal ? _self.studentsTotal : studentsTotal // ignore: cast_nullable_to_non_nullable
as int,classesConducted: null == classesConducted ? _self.classesConducted : classesConducted // ignore: cast_nullable_to_non_nullable
as bool,teachingActivityObserved: null == teachingActivityObserved ? _self.teachingActivityObserved : teachingActivityObserved // ignore: cast_nullable_to_non_nullable
as bool,cleanlinessSatisfactory: null == cleanlinessSatisfactory ? _self.cleanlinessSatisfactory : cleanlinessSatisfactory // ignore: cast_nullable_to_non_nullable
as bool,basicFacilitiesAvailable: null == basicFacilitiesAvailable ? _self.basicFacilitiesAvailable : basicFacilitiesAvailable // ignore: cast_nullable_to_non_nullable
as bool,timetableDisplayed: null == timetableDisplayed ? _self.timetableDisplayed : timetableDisplayed // ignore: cast_nullable_to_non_nullable
as bool,morningAssemblyHeld: null == morningAssemblyHeld ? _self.morningAssemblyHeld : morningAssemblyHeld // ignore: cast_nullable_to_non_nullable
as bool,learningEnvironmentSatisfactory: null == learningEnvironmentSatisfactory ? _self.learningEnvironmentSatisfactory : learningEnvironmentSatisfactory // ignore: cast_nullable_to_non_nullable
as bool,overallStatus: null == overallStatus ? _self.overallStatus : overallStatus // ignore: cast_nullable_to_non_nullable
as FunctionalityStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolFunctionalityModel].
extension SchoolFunctionalityModelPatterns on SchoolFunctionalityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolFunctionalityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolFunctionalityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolFunctionalityModel value)  $default,){
final _that = this;
switch (_that) {
case _SchoolFunctionalityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolFunctionalityModel value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolFunctionalityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime assessmentDate,  bool schoolOpen,  bool headTeacherPresent,  int teachersPresent,  int teachersTotal,  int studentsPresent,  int studentsTotal,  bool classesConducted,  bool teachingActivityObserved,  bool cleanlinessSatisfactory,  bool basicFacilitiesAvailable,  bool timetableDisplayed,  bool morningAssemblyHeld,  bool learningEnvironmentSatisfactory,  FunctionalityStatus overallStatus,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolFunctionalityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.assessmentDate,_that.schoolOpen,_that.headTeacherPresent,_that.teachersPresent,_that.teachersTotal,_that.studentsPresent,_that.studentsTotal,_that.classesConducted,_that.teachingActivityObserved,_that.cleanlinessSatisfactory,_that.basicFacilitiesAvailable,_that.timetableDisplayed,_that.morningAssemblyHeld,_that.learningEnvironmentSatisfactory,_that.overallStatus,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime assessmentDate,  bool schoolOpen,  bool headTeacherPresent,  int teachersPresent,  int teachersTotal,  int studentsPresent,  int studentsTotal,  bool classesConducted,  bool teachingActivityObserved,  bool cleanlinessSatisfactory,  bool basicFacilitiesAvailable,  bool timetableDisplayed,  bool morningAssemblyHeld,  bool learningEnvironmentSatisfactory,  FunctionalityStatus overallStatus,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _SchoolFunctionalityModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.assessmentDate,_that.schoolOpen,_that.headTeacherPresent,_that.teachersPresent,_that.teachersTotal,_that.studentsPresent,_that.studentsTotal,_that.classesConducted,_that.teachingActivityObserved,_that.cleanlinessSatisfactory,_that.basicFacilitiesAvailable,_that.timetableDisplayed,_that.morningAssemblyHeld,_that.learningEnvironmentSatisfactory,_that.overallStatus,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime assessmentDate,  bool schoolOpen,  bool headTeacherPresent,  int teachersPresent,  int teachersTotal,  int studentsPresent,  int studentsTotal,  bool classesConducted,  bool teachingActivityObserved,  bool cleanlinessSatisfactory,  bool basicFacilitiesAvailable,  bool timetableDisplayed,  bool morningAssemblyHeld,  bool learningEnvironmentSatisfactory,  FunctionalityStatus overallStatus,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _SchoolFunctionalityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.assessmentDate,_that.schoolOpen,_that.headTeacherPresent,_that.teachersPresent,_that.teachersTotal,_that.studentsPresent,_that.studentsTotal,_that.classesConducted,_that.teachingActivityObserved,_that.cleanlinessSatisfactory,_that.basicFacilitiesAvailable,_that.timetableDisplayed,_that.morningAssemblyHeld,_that.learningEnvironmentSatisfactory,_that.overallStatus,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolFunctionalityModel extends SchoolFunctionalityModel {
  const _SchoolFunctionalityModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.assessmentDate, this.schoolOpen = true, this.headTeacherPresent = false, this.teachersPresent = 0, this.teachersTotal = 0, this.studentsPresent = 0, this.studentsTotal = 0, this.classesConducted = false, this.teachingActivityObserved = false, this.cleanlinessSatisfactory = false, this.basicFacilitiesAvailable = false, this.timetableDisplayed = false, this.morningAssemblyHeld = false, this.learningEnvironmentSatisfactory = false, this.overallStatus = FunctionalityStatus.functional, this.remarks,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _SchoolFunctionalityModel.fromJson(Map<String, dynamic> json) => _$SchoolFunctionalityModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime assessmentDate;
@override@JsonKey() final  bool schoolOpen;
@override@JsonKey() final  bool headTeacherPresent;
@override@JsonKey() final  int teachersPresent;
@override@JsonKey() final  int teachersTotal;
@override@JsonKey() final  int studentsPresent;
@override@JsonKey() final  int studentsTotal;
@override@JsonKey() final  bool classesConducted;
@override@JsonKey() final  bool teachingActivityObserved;
@override@JsonKey() final  bool cleanlinessSatisfactory;
@override@JsonKey() final  bool basicFacilitiesAvailable;
@override@JsonKey() final  bool timetableDisplayed;
@override@JsonKey() final  bool morningAssemblyHeld;
@override@JsonKey() final  bool learningEnvironmentSatisfactory;
@override@JsonKey() final  FunctionalityStatus overallStatus;
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

/// Create a copy of SchoolFunctionalityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolFunctionalityModelCopyWith<_SchoolFunctionalityModel> get copyWith => __$SchoolFunctionalityModelCopyWithImpl<_SchoolFunctionalityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolFunctionalityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolFunctionalityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.assessmentDate, assessmentDate) || other.assessmentDate == assessmentDate)&&(identical(other.schoolOpen, schoolOpen) || other.schoolOpen == schoolOpen)&&(identical(other.headTeacherPresent, headTeacherPresent) || other.headTeacherPresent == headTeacherPresent)&&(identical(other.teachersPresent, teachersPresent) || other.teachersPresent == teachersPresent)&&(identical(other.teachersTotal, teachersTotal) || other.teachersTotal == teachersTotal)&&(identical(other.studentsPresent, studentsPresent) || other.studentsPresent == studentsPresent)&&(identical(other.studentsTotal, studentsTotal) || other.studentsTotal == studentsTotal)&&(identical(other.classesConducted, classesConducted) || other.classesConducted == classesConducted)&&(identical(other.teachingActivityObserved, teachingActivityObserved) || other.teachingActivityObserved == teachingActivityObserved)&&(identical(other.cleanlinessSatisfactory, cleanlinessSatisfactory) || other.cleanlinessSatisfactory == cleanlinessSatisfactory)&&(identical(other.basicFacilitiesAvailable, basicFacilitiesAvailable) || other.basicFacilitiesAvailable == basicFacilitiesAvailable)&&(identical(other.timetableDisplayed, timetableDisplayed) || other.timetableDisplayed == timetableDisplayed)&&(identical(other.morningAssemblyHeld, morningAssemblyHeld) || other.morningAssemblyHeld == morningAssemblyHeld)&&(identical(other.learningEnvironmentSatisfactory, learningEnvironmentSatisfactory) || other.learningEnvironmentSatisfactory == learningEnvironmentSatisfactory)&&(identical(other.overallStatus, overallStatus) || other.overallStatus == overallStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,assessmentDate,schoolOpen,headTeacherPresent,teachersPresent,teachersTotal,studentsPresent,studentsTotal,classesConducted,teachingActivityObserved,cleanlinessSatisfactory,basicFacilitiesAvailable,timetableDisplayed,morningAssemblyHeld,learningEnvironmentSatisfactory,overallStatus,remarks,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolFunctionalityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, assessmentDate: $assessmentDate, schoolOpen: $schoolOpen, headTeacherPresent: $headTeacherPresent, teachersPresent: $teachersPresent, teachersTotal: $teachersTotal, studentsPresent: $studentsPresent, studentsTotal: $studentsTotal, classesConducted: $classesConducted, teachingActivityObserved: $teachingActivityObserved, cleanlinessSatisfactory: $cleanlinessSatisfactory, basicFacilitiesAvailable: $basicFacilitiesAvailable, timetableDisplayed: $timetableDisplayed, morningAssemblyHeld: $morningAssemblyHeld, learningEnvironmentSatisfactory: $learningEnvironmentSatisfactory, overallStatus: $overallStatus, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$SchoolFunctionalityModelCopyWith<$Res> implements $SchoolFunctionalityModelCopyWith<$Res> {
  factory _$SchoolFunctionalityModelCopyWith(_SchoolFunctionalityModel value, $Res Function(_SchoolFunctionalityModel) _then) = __$SchoolFunctionalityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime assessmentDate, bool schoolOpen, bool headTeacherPresent, int teachersPresent, int teachersTotal, int studentsPresent, int studentsTotal, bool classesConducted, bool teachingActivityObserved, bool cleanlinessSatisfactory, bool basicFacilitiesAvailable, bool timetableDisplayed, bool morningAssemblyHeld, bool learningEnvironmentSatisfactory, FunctionalityStatus overallStatus, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$SchoolFunctionalityModelCopyWithImpl<$Res>
    implements _$SchoolFunctionalityModelCopyWith<$Res> {
  __$SchoolFunctionalityModelCopyWithImpl(this._self, this._then);

  final _SchoolFunctionalityModel _self;
  final $Res Function(_SchoolFunctionalityModel) _then;

/// Create a copy of SchoolFunctionalityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? assessmentDate = null,Object? schoolOpen = null,Object? headTeacherPresent = null,Object? teachersPresent = null,Object? teachersTotal = null,Object? studentsPresent = null,Object? studentsTotal = null,Object? classesConducted = null,Object? teachingActivityObserved = null,Object? cleanlinessSatisfactory = null,Object? basicFacilitiesAvailable = null,Object? timetableDisplayed = null,Object? morningAssemblyHeld = null,Object? learningEnvironmentSatisfactory = null,Object? overallStatus = null,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_SchoolFunctionalityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,assessmentDate: null == assessmentDate ? _self.assessmentDate : assessmentDate // ignore: cast_nullable_to_non_nullable
as DateTime,schoolOpen: null == schoolOpen ? _self.schoolOpen : schoolOpen // ignore: cast_nullable_to_non_nullable
as bool,headTeacherPresent: null == headTeacherPresent ? _self.headTeacherPresent : headTeacherPresent // ignore: cast_nullable_to_non_nullable
as bool,teachersPresent: null == teachersPresent ? _self.teachersPresent : teachersPresent // ignore: cast_nullable_to_non_nullable
as int,teachersTotal: null == teachersTotal ? _self.teachersTotal : teachersTotal // ignore: cast_nullable_to_non_nullable
as int,studentsPresent: null == studentsPresent ? _self.studentsPresent : studentsPresent // ignore: cast_nullable_to_non_nullable
as int,studentsTotal: null == studentsTotal ? _self.studentsTotal : studentsTotal // ignore: cast_nullable_to_non_nullable
as int,classesConducted: null == classesConducted ? _self.classesConducted : classesConducted // ignore: cast_nullable_to_non_nullable
as bool,teachingActivityObserved: null == teachingActivityObserved ? _self.teachingActivityObserved : teachingActivityObserved // ignore: cast_nullable_to_non_nullable
as bool,cleanlinessSatisfactory: null == cleanlinessSatisfactory ? _self.cleanlinessSatisfactory : cleanlinessSatisfactory // ignore: cast_nullable_to_non_nullable
as bool,basicFacilitiesAvailable: null == basicFacilitiesAvailable ? _self.basicFacilitiesAvailable : basicFacilitiesAvailable // ignore: cast_nullable_to_non_nullable
as bool,timetableDisplayed: null == timetableDisplayed ? _self.timetableDisplayed : timetableDisplayed // ignore: cast_nullable_to_non_nullable
as bool,morningAssemblyHeld: null == morningAssemblyHeld ? _self.morningAssemblyHeld : morningAssemblyHeld // ignore: cast_nullable_to_non_nullable
as bool,learningEnvironmentSatisfactory: null == learningEnvironmentSatisfactory ? _self.learningEnvironmentSatisfactory : learningEnvironmentSatisfactory // ignore: cast_nullable_to_non_nullable
as bool,overallStatus: null == overallStatus ? _self.overallStatus : overallStatus // ignore: cast_nullable_to_non_nullable
as FunctionalityStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
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
