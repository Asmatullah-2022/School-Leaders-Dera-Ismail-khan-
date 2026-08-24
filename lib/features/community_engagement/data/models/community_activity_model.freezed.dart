// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityActivityModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; CommunityActivityType get activityType; DateTime get activityDate; int get participantsCount; int get femaleParticipantsCount; String? get venue; String? get description; String? get descriptionUrdu; String? get remarks; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of CommunityActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommunityActivityModelCopyWith<CommunityActivityModel> get copyWith => _$CommunityActivityModelCopyWithImpl<CommunityActivityModel>(this as CommunityActivityModel, _$identity);

  /// Serializes this CommunityActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommunityActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.femaleParticipantsCount, femaleParticipantsCount) || other.femaleParticipantsCount == femaleParticipantsCount)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,activityType,activityDate,participantsCount,femaleParticipantsCount,venue,description,descriptionUrdu,remarks,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'CommunityActivityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, activityType: $activityType, activityDate: $activityDate, participantsCount: $participantsCount, femaleParticipantsCount: $femaleParticipantsCount, venue: $venue, description: $description, descriptionUrdu: $descriptionUrdu, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $CommunityActivityModelCopyWith<$Res>  {
  factory $CommunityActivityModelCopyWith(CommunityActivityModel value, $Res Function(CommunityActivityModel) _then) = _$CommunityActivityModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, CommunityActivityType activityType, DateTime activityDate, int participantsCount, int femaleParticipantsCount, String? venue, String? description, String? descriptionUrdu, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$CommunityActivityModelCopyWithImpl<$Res>
    implements $CommunityActivityModelCopyWith<$Res> {
  _$CommunityActivityModelCopyWithImpl(this._self, this._then);

  final CommunityActivityModel _self;
  final $Res Function(CommunityActivityModel) _then;

/// Create a copy of CommunityActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? activityType = null,Object? activityDate = null,Object? participantsCount = null,Object? femaleParticipantsCount = null,Object? venue = freezed,Object? description = freezed,Object? descriptionUrdu = freezed,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(CommunityActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as CommunityActivityType,activityDate: null == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,femaleParticipantsCount: null == femaleParticipantsCount ? _self.femaleParticipantsCount : femaleParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CommunityActivityModel].
extension CommunityActivityModelPatterns on CommunityActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommunityActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommunityActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommunityActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _CommunityActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommunityActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommunityActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  CommunityActivityType activityType,  DateTime activityDate,  int participantsCount,  int femaleParticipantsCount,  String? venue,  String? description,  String? descriptionUrdu,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommunityActivityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.activityType,_that.activityDate,_that.participantsCount,_that.femaleParticipantsCount,_that.venue,_that.description,_that.descriptionUrdu,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  CommunityActivityType activityType,  DateTime activityDate,  int participantsCount,  int femaleParticipantsCount,  String? venue,  String? description,  String? descriptionUrdu,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _CommunityActivityModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.activityType,_that.activityDate,_that.participantsCount,_that.femaleParticipantsCount,_that.venue,_that.description,_that.descriptionUrdu,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  CommunityActivityType activityType,  DateTime activityDate,  int participantsCount,  int femaleParticipantsCount,  String? venue,  String? description,  String? descriptionUrdu,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _CommunityActivityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.activityType,_that.activityDate,_that.participantsCount,_that.femaleParticipantsCount,_that.venue,_that.description,_that.descriptionUrdu,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommunityActivityModel extends CommunityActivityModel {
  const _CommunityActivityModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.activityType, required this.activityDate, this.participantsCount = 0, this.femaleParticipantsCount = 0, this.venue, this.description, this.descriptionUrdu, this.remarks,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _CommunityActivityModel.fromJson(Map<String, dynamic> json) => _$CommunityActivityModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  CommunityActivityType activityType;
@override final  DateTime activityDate;
@override@JsonKey() final  int participantsCount;
@override@JsonKey() final  int femaleParticipantsCount;
@override final  String? venue;
@override final  String? description;
@override final  String? descriptionUrdu;
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

/// Create a copy of CommunityActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommunityActivityModelCopyWith<_CommunityActivityModel> get copyWith => __$CommunityActivityModelCopyWithImpl<_CommunityActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommunityActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommunityActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&(identical(other.femaleParticipantsCount, femaleParticipantsCount) || other.femaleParticipantsCount == femaleParticipantsCount)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,activityType,activityDate,participantsCount,femaleParticipantsCount,venue,description,descriptionUrdu,remarks,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'CommunityActivityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, activityType: $activityType, activityDate: $activityDate, participantsCount: $participantsCount, femaleParticipantsCount: $femaleParticipantsCount, venue: $venue, description: $description, descriptionUrdu: $descriptionUrdu, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$CommunityActivityModelCopyWith<$Res> implements $CommunityActivityModelCopyWith<$Res> {
  factory _$CommunityActivityModelCopyWith(_CommunityActivityModel value, $Res Function(_CommunityActivityModel) _then) = __$CommunityActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, CommunityActivityType activityType, DateTime activityDate, int participantsCount, int femaleParticipantsCount, String? venue, String? description, String? descriptionUrdu, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$CommunityActivityModelCopyWithImpl<$Res>
    implements _$CommunityActivityModelCopyWith<$Res> {
  __$CommunityActivityModelCopyWithImpl(this._self, this._then);

  final _CommunityActivityModel _self;
  final $Res Function(_CommunityActivityModel) _then;

/// Create a copy of CommunityActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? activityType = null,Object? activityDate = null,Object? participantsCount = null,Object? femaleParticipantsCount = null,Object? venue = freezed,Object? description = freezed,Object? descriptionUrdu = freezed,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_CommunityActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as CommunityActivityType,activityDate: null == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,femaleParticipantsCount: null == femaleParticipantsCount ? _self.femaleParticipantsCount : femaleParticipantsCount // ignore: cast_nullable_to_non_nullable
as int,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
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
