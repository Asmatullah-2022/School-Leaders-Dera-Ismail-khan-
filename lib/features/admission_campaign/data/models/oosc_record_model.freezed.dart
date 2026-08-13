// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oosc_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OoscRecordModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get childName; String? get childNameUrdu; OoscGender get gender; int get age; String? get village; String? get parentGuardianName; String? get contactPhone; OoscReason get reason; String? get reasonDetail; String? get previousSchool; OoscStatus get status; DateTime? get followUpDate; String? get remarks; String? get campaignId; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of OoscRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OoscRecordModelCopyWith<OoscRecordModel> get copyWith => _$OoscRecordModelCopyWithImpl<OoscRecordModel>(this as OoscRecordModel, _$identity);

  /// Serializes this OoscRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OoscRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.childName, childName) || other.childName == childName)&&(identical(other.childNameUrdu, childNameUrdu) || other.childNameUrdu == childNameUrdu)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.village, village) || other.village == village)&&(identical(other.parentGuardianName, parentGuardianName) || other.parentGuardianName == parentGuardianName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reasonDetail, reasonDetail) || other.reasonDetail == reasonDetail)&&(identical(other.previousSchool, previousSchool) || other.previousSchool == previousSchool)&&(identical(other.status, status) || other.status == status)&&(identical(other.followUpDate, followUpDate) || other.followUpDate == followUpDate)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,childName,childNameUrdu,gender,age,village,parentGuardianName,contactPhone,reason,reasonDetail,previousSchool,status,followUpDate,remarks,campaignId,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'OoscRecordModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, childName: $childName, childNameUrdu: $childNameUrdu, gender: $gender, age: $age, village: $village, parentGuardianName: $parentGuardianName, contactPhone: $contactPhone, reason: $reason, reasonDetail: $reasonDetail, previousSchool: $previousSchool, status: $status, followUpDate: $followUpDate, remarks: $remarks, campaignId: $campaignId, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $OoscRecordModelCopyWith<$Res>  {
  factory $OoscRecordModelCopyWith(OoscRecordModel value, $Res Function(OoscRecordModel) _then) = _$OoscRecordModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String childName, String? childNameUrdu, OoscGender gender, int age, String? village, String? parentGuardianName, String? contactPhone, OoscReason reason, String? reasonDetail, String? previousSchool, OoscStatus status, DateTime? followUpDate, String? remarks, String? campaignId, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$OoscRecordModelCopyWithImpl<$Res>
    implements $OoscRecordModelCopyWith<$Res> {
  _$OoscRecordModelCopyWithImpl(this._self, this._then);

  final OoscRecordModel _self;
  final $Res Function(OoscRecordModel) _then;

/// Create a copy of OoscRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? childName = null,Object? childNameUrdu = freezed,Object? gender = null,Object? age = null,Object? village = freezed,Object? parentGuardianName = freezed,Object? contactPhone = freezed,Object? reason = null,Object? reasonDetail = freezed,Object? previousSchool = freezed,Object? status = null,Object? followUpDate = freezed,Object? remarks = freezed,Object? campaignId = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(OoscRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,childName: null == childName ? _self.childName : childName // ignore: cast_nullable_to_non_nullable
as String,childNameUrdu: freezed == childNameUrdu ? _self.childNameUrdu : childNameUrdu // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as OoscGender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as String?,parentGuardianName: freezed == parentGuardianName ? _self.parentGuardianName : parentGuardianName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as OoscReason,reasonDetail: freezed == reasonDetail ? _self.reasonDetail : reasonDetail // ignore: cast_nullable_to_non_nullable
as String?,previousSchool: freezed == previousSchool ? _self.previousSchool : previousSchool // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OoscStatus,followUpDate: freezed == followUpDate ? _self.followUpDate : followUpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OoscRecordModel].
extension OoscRecordModelPatterns on OoscRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OoscRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OoscRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OoscRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _OoscRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OoscRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _OoscRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String childName,  String? childNameUrdu,  OoscGender gender,  int age,  String? village,  String? parentGuardianName,  String? contactPhone,  OoscReason reason,  String? reasonDetail,  String? previousSchool,  OoscStatus status,  DateTime? followUpDate,  String? remarks,  String? campaignId,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OoscRecordModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.childName,_that.childNameUrdu,_that.gender,_that.age,_that.village,_that.parentGuardianName,_that.contactPhone,_that.reason,_that.reasonDetail,_that.previousSchool,_that.status,_that.followUpDate,_that.remarks,_that.campaignId,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String childName,  String? childNameUrdu,  OoscGender gender,  int age,  String? village,  String? parentGuardianName,  String? contactPhone,  OoscReason reason,  String? reasonDetail,  String? previousSchool,  OoscStatus status,  DateTime? followUpDate,  String? remarks,  String? campaignId,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _OoscRecordModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.childName,_that.childNameUrdu,_that.gender,_that.age,_that.village,_that.parentGuardianName,_that.contactPhone,_that.reason,_that.reasonDetail,_that.previousSchool,_that.status,_that.followUpDate,_that.remarks,_that.campaignId,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String childName,  String? childNameUrdu,  OoscGender gender,  int age,  String? village,  String? parentGuardianName,  String? contactPhone,  OoscReason reason,  String? reasonDetail,  String? previousSchool,  OoscStatus status,  DateTime? followUpDate,  String? remarks,  String? campaignId,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _OoscRecordModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.childName,_that.childNameUrdu,_that.gender,_that.age,_that.village,_that.parentGuardianName,_that.contactPhone,_that.reason,_that.reasonDetail,_that.previousSchool,_that.status,_that.followUpDate,_that.remarks,_that.campaignId,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OoscRecordModel extends OoscRecordModel {
  const _OoscRecordModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.childName, this.childNameUrdu, required this.gender, required this.age, this.village, this.parentGuardianName, this.contactPhone, required this.reason, this.reasonDetail, this.previousSchool, this.status = OoscStatus.identified, this.followUpDate, this.remarks, this.campaignId,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _OoscRecordModel.fromJson(Map<String, dynamic> json) => _$OoscRecordModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String childName;
@override final  String? childNameUrdu;
@override final  OoscGender gender;
@override final  int age;
@override final  String? village;
@override final  String? parentGuardianName;
@override final  String? contactPhone;
@override final  OoscReason reason;
@override final  String? reasonDetail;
@override final  String? previousSchool;
@override@JsonKey() final  OoscStatus status;
@override final  DateTime? followUpDate;
@override final  String? remarks;
@override final  String? campaignId;
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

/// Create a copy of OoscRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OoscRecordModelCopyWith<_OoscRecordModel> get copyWith => __$OoscRecordModelCopyWithImpl<_OoscRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OoscRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OoscRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.childName, childName) || other.childName == childName)&&(identical(other.childNameUrdu, childNameUrdu) || other.childNameUrdu == childNameUrdu)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.age, age) || other.age == age)&&(identical(other.village, village) || other.village == village)&&(identical(other.parentGuardianName, parentGuardianName) || other.parentGuardianName == parentGuardianName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.reasonDetail, reasonDetail) || other.reasonDetail == reasonDetail)&&(identical(other.previousSchool, previousSchool) || other.previousSchool == previousSchool)&&(identical(other.status, status) || other.status == status)&&(identical(other.followUpDate, followUpDate) || other.followUpDate == followUpDate)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,childName,childNameUrdu,gender,age,village,parentGuardianName,contactPhone,reason,reasonDetail,previousSchool,status,followUpDate,remarks,campaignId,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'OoscRecordModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, childName: $childName, childNameUrdu: $childNameUrdu, gender: $gender, age: $age, village: $village, parentGuardianName: $parentGuardianName, contactPhone: $contactPhone, reason: $reason, reasonDetail: $reasonDetail, previousSchool: $previousSchool, status: $status, followUpDate: $followUpDate, remarks: $remarks, campaignId: $campaignId, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$OoscRecordModelCopyWith<$Res> implements $OoscRecordModelCopyWith<$Res> {
  factory _$OoscRecordModelCopyWith(_OoscRecordModel value, $Res Function(_OoscRecordModel) _then) = __$OoscRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String childName, String? childNameUrdu, OoscGender gender, int age, String? village, String? parentGuardianName, String? contactPhone, OoscReason reason, String? reasonDetail, String? previousSchool, OoscStatus status, DateTime? followUpDate, String? remarks, String? campaignId, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$OoscRecordModelCopyWithImpl<$Res>
    implements _$OoscRecordModelCopyWith<$Res> {
  __$OoscRecordModelCopyWithImpl(this._self, this._then);

  final _OoscRecordModel _self;
  final $Res Function(_OoscRecordModel) _then;

/// Create a copy of OoscRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? childName = null,Object? childNameUrdu = freezed,Object? gender = null,Object? age = null,Object? village = freezed,Object? parentGuardianName = freezed,Object? contactPhone = freezed,Object? reason = null,Object? reasonDetail = freezed,Object? previousSchool = freezed,Object? status = null,Object? followUpDate = freezed,Object? remarks = freezed,Object? campaignId = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_OoscRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,childName: null == childName ? _self.childName : childName // ignore: cast_nullable_to_non_nullable
as String,childNameUrdu: freezed == childNameUrdu ? _self.childNameUrdu : childNameUrdu // ignore: cast_nullable_to_non_nullable
as String?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as OoscGender,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as String?,parentGuardianName: freezed == parentGuardianName ? _self.parentGuardianName : parentGuardianName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as OoscReason,reasonDetail: freezed == reasonDetail ? _self.reasonDetail : reasonDetail // ignore: cast_nullable_to_non_nullable
as String?,previousSchool: freezed == previousSchool ? _self.previousSchool : previousSchool // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OoscStatus,followUpDate: freezed == followUpDate ? _self.followUpDate : followUpDate // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
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
