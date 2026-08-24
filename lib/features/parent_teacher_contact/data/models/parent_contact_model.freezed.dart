// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParentContactModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get parentName; String get studentName; String? get contactNumber; DateTime get contactDate; ContactMethod get contactMethod; String? get purpose; String? get discussion; bool get followUpRequired; DateTime? get followUpDate; String? get result; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentContactModelCopyWith<ParentContactModel> get copyWith => _$ParentContactModelCopyWithImpl<ParentContactModel>(this as ParentContactModel, _$identity);

  /// Serializes this ParentContactModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentContactModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.parentName, parentName) || other.parentName == parentName)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.contactDate, contactDate) || other.contactDate == contactDate)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.discussion, discussion) || other.discussion == discussion)&&(identical(other.followUpRequired, followUpRequired) || other.followUpRequired == followUpRequired)&&(identical(other.followUpDate, followUpDate) || other.followUpDate == followUpDate)&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,parentName,studentName,contactNumber,contactDate,contactMethod,purpose,discussion,followUpRequired,followUpDate,result,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'ParentContactModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, parentName: $parentName, studentName: $studentName, contactNumber: $contactNumber, contactDate: $contactDate, contactMethod: $contactMethod, purpose: $purpose, discussion: $discussion, followUpRequired: $followUpRequired, followUpDate: $followUpDate, result: $result, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $ParentContactModelCopyWith<$Res>  {
  factory $ParentContactModelCopyWith(ParentContactModel value, $Res Function(ParentContactModel) _then) = _$ParentContactModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String parentName, String studentName, String? contactNumber, DateTime contactDate, ContactMethod contactMethod, String? purpose, String? discussion, bool followUpRequired, DateTime? followUpDate, String? result, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$ParentContactModelCopyWithImpl<$Res>
    implements $ParentContactModelCopyWith<$Res> {
  _$ParentContactModelCopyWithImpl(this._self, this._then);

  final ParentContactModel _self;
  final $Res Function(ParentContactModel) _then;

/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? parentName = null,Object? studentName = null,Object? contactNumber = freezed,Object? contactDate = null,Object? contactMethod = null,Object? purpose = freezed,Object? discussion = freezed,Object? followUpRequired = null,Object? followUpDate = freezed,Object? result = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(ParentContactModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,parentName: null == parentName ? _self.parentName : parentName // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,contactDate: null == contactDate ? _self.contactDate : contactDate // ignore: cast_nullable_to_non_nullable
as DateTime,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,discussion: freezed == discussion ? _self.discussion : discussion // ignore: cast_nullable_to_non_nullable
as String?,followUpRequired: null == followUpRequired ? _self.followUpRequired : followUpRequired // ignore: cast_nullable_to_non_nullable
as bool,followUpDate: freezed == followUpDate ? _self.followUpDate : followUpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentContactModel].
extension ParentContactModelPatterns on ParentContactModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentContactModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentContactModel value)  $default,){
final _that = this;
switch (_that) {
case _ParentContactModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentContactModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String parentName,  String studentName,  String? contactNumber,  DateTime contactDate,  ContactMethod contactMethod,  String? purpose,  String? discussion,  bool followUpRequired,  DateTime? followUpDate,  String? result,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.parentName,_that.studentName,_that.contactNumber,_that.contactDate,_that.contactMethod,_that.purpose,_that.discussion,_that.followUpRequired,_that.followUpDate,_that.result,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String parentName,  String studentName,  String? contactNumber,  DateTime contactDate,  ContactMethod contactMethod,  String? purpose,  String? discussion,  bool followUpRequired,  DateTime? followUpDate,  String? result,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _ParentContactModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.parentName,_that.studentName,_that.contactNumber,_that.contactDate,_that.contactMethod,_that.purpose,_that.discussion,_that.followUpRequired,_that.followUpDate,_that.result,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String parentName,  String studentName,  String? contactNumber,  DateTime contactDate,  ContactMethod contactMethod,  String? purpose,  String? discussion,  bool followUpRequired,  DateTime? followUpDate,  String? result,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.parentName,_that.studentName,_that.contactNumber,_that.contactDate,_that.contactMethod,_that.purpose,_that.discussion,_that.followUpRequired,_that.followUpDate,_that.result,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentContactModel extends ParentContactModel {
  const _ParentContactModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.parentName, required this.studentName, this.contactNumber, required this.contactDate, required this.contactMethod, this.purpose, this.discussion, this.followUpRequired = false, this.followUpDate, this.result,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _ParentContactModel.fromJson(Map<String, dynamic> json) => _$ParentContactModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String parentName;
@override final  String studentName;
@override final  String? contactNumber;
@override final  DateTime contactDate;
@override final  ContactMethod contactMethod;
@override final  String? purpose;
@override final  String? discussion;
@override@JsonKey() final  bool followUpRequired;
@override final  DateTime? followUpDate;
@override final  String? result;
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

/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentContactModelCopyWith<_ParentContactModel> get copyWith => __$ParentContactModelCopyWithImpl<_ParentContactModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentContactModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentContactModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.parentName, parentName) || other.parentName == parentName)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.contactDate, contactDate) || other.contactDate == contactDate)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.discussion, discussion) || other.discussion == discussion)&&(identical(other.followUpRequired, followUpRequired) || other.followUpRequired == followUpRequired)&&(identical(other.followUpDate, followUpDate) || other.followUpDate == followUpDate)&&(identical(other.result, result) || other.result == result)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,parentName,studentName,contactNumber,contactDate,contactMethod,purpose,discussion,followUpRequired,followUpDate,result,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'ParentContactModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, parentName: $parentName, studentName: $studentName, contactNumber: $contactNumber, contactDate: $contactDate, contactMethod: $contactMethod, purpose: $purpose, discussion: $discussion, followUpRequired: $followUpRequired, followUpDate: $followUpDate, result: $result, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$ParentContactModelCopyWith<$Res> implements $ParentContactModelCopyWith<$Res> {
  factory _$ParentContactModelCopyWith(_ParentContactModel value, $Res Function(_ParentContactModel) _then) = __$ParentContactModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String parentName, String studentName, String? contactNumber, DateTime contactDate, ContactMethod contactMethod, String? purpose, String? discussion, bool followUpRequired, DateTime? followUpDate, String? result, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$ParentContactModelCopyWithImpl<$Res>
    implements _$ParentContactModelCopyWith<$Res> {
  __$ParentContactModelCopyWithImpl(this._self, this._then);

  final _ParentContactModel _self;
  final $Res Function(_ParentContactModel) _then;

/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? parentName = null,Object? studentName = null,Object? contactNumber = freezed,Object? contactDate = null,Object? contactMethod = null,Object? purpose = freezed,Object? discussion = freezed,Object? followUpRequired = null,Object? followUpDate = freezed,Object? result = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_ParentContactModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,parentName: null == parentName ? _self.parentName : parentName // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,contactDate: null == contactDate ? _self.contactDate : contactDate // ignore: cast_nullable_to_non_nullable
as DateTime,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,discussion: freezed == discussion ? _self.discussion : discussion // ignore: cast_nullable_to_non_nullable
as String?,followUpRequired: null == followUpRequired ? _self.followUpRequired : followUpRequired // ignore: cast_nullable_to_non_nullable
as bool,followUpDate: freezed == followUpDate ? _self.followUpDate : followUpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
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
