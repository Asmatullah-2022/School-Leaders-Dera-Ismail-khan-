// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuditLogModel {

 String get id; String get actorUid; String? get actorName; String? get actorRole; AuditAction get action; String get collectionName; String? get docId; String? get districtId; String? get subDivisionId; String? get circleId; String? get clusterId; String? get schoolId; String? get deviceInfo; Map<String, dynamic>? get beforeData; Map<String, dynamic>? get afterData; DateTime get timestamp;
/// Create a copy of AuditLogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuditLogModelCopyWith<AuditLogModel> get copyWith => _$AuditLogModelCopyWithImpl<AuditLogModel>(this as AuditLogModel, _$identity);

  /// Serializes this AuditLogModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuditLogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.actorUid, actorUid) || other.actorUid == actorUid)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.action, action) || other.action == action)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo)&&const DeepCollectionEquality().equals(other.beforeData, beforeData)&&const DeepCollectionEquality().equals(other.afterData, afterData)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorUid,actorName,actorRole,action,collectionName,docId,districtId,subDivisionId,circleId,clusterId,schoolId,deviceInfo,const DeepCollectionEquality().hash(beforeData),const DeepCollectionEquality().hash(afterData),timestamp);

@override
String toString() {
  return 'AuditLogModel(id: $id, actorUid: $actorUid, actorName: $actorName, actorRole: $actorRole, action: $action, collectionName: $collectionName, docId: $docId, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, deviceInfo: $deviceInfo, beforeData: $beforeData, afterData: $afterData, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $AuditLogModelCopyWith<$Res>  {
  factory $AuditLogModelCopyWith(AuditLogModel value, $Res Function(AuditLogModel) _then) = _$AuditLogModelCopyWithImpl;
@useResult
$Res call({
 String id, String actorUid, String? actorName, String? actorRole, AuditAction action, String collectionName, String? docId, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, String? deviceInfo, Map<String, dynamic>? beforeData, Map<String, dynamic>? afterData, DateTime timestamp
});




}
/// @nodoc
class _$AuditLogModelCopyWithImpl<$Res>
    implements $AuditLogModelCopyWith<$Res> {
  _$AuditLogModelCopyWithImpl(this._self, this._then);

  final AuditLogModel _self;
  final $Res Function(AuditLogModel) _then;

/// Create a copy of AuditLogModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? actorUid = null,Object? actorName = freezed,Object? actorRole = freezed,Object? action = null,Object? collectionName = null,Object? docId = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? deviceInfo = freezed,Object? beforeData = freezed,Object? afterData = freezed,Object? timestamp = null,}) {
  return _then(AuditLogModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actorUid: null == actorUid ? _self.actorUid : actorUid // ignore: cast_nullable_to_non_nullable
as String,actorName: freezed == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String?,actorRole: freezed == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as AuditAction,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String?,beforeData: freezed == beforeData ? _self.beforeData : beforeData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,afterData: freezed == afterData ? _self.afterData : afterData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AuditLogModel].
extension AuditLogModelPatterns on AuditLogModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuditLogModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuditLogModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuditLogModel value)  $default,){
final _that = this;
switch (_that) {
case _AuditLogModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuditLogModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuditLogModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String actorUid,  String? actorName,  String? actorRole,  AuditAction action,  String collectionName,  String? docId,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String? deviceInfo,  Map<String, dynamic>? beforeData,  Map<String, dynamic>? afterData,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuditLogModel() when $default != null:
return $default(_that.id,_that.actorUid,_that.actorName,_that.actorRole,_that.action,_that.collectionName,_that.docId,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.deviceInfo,_that.beforeData,_that.afterData,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String actorUid,  String? actorName,  String? actorRole,  AuditAction action,  String collectionName,  String? docId,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String? deviceInfo,  Map<String, dynamic>? beforeData,  Map<String, dynamic>? afterData,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _AuditLogModel():
return $default(_that.id,_that.actorUid,_that.actorName,_that.actorRole,_that.action,_that.collectionName,_that.docId,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.deviceInfo,_that.beforeData,_that.afterData,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String actorUid,  String? actorName,  String? actorRole,  AuditAction action,  String collectionName,  String? docId,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String? deviceInfo,  Map<String, dynamic>? beforeData,  Map<String, dynamic>? afterData,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _AuditLogModel() when $default != null:
return $default(_that.id,_that.actorUid,_that.actorName,_that.actorRole,_that.action,_that.collectionName,_that.docId,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.deviceInfo,_that.beforeData,_that.afterData,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuditLogModel extends AuditLogModel {
  const _AuditLogModel({required this.id, required this.actorUid, this.actorName, this.actorRole, required this.action, required this.collectionName, this.docId, this.districtId, this.subDivisionId, this.circleId, this.clusterId, this.schoolId, this.deviceInfo,  Map<String, dynamic>? beforeData,  Map<String, dynamic>? afterData, required this.timestamp}): _beforeData = beforeData,_afterData = afterData,super._();
  factory _AuditLogModel.fromJson(Map<String, dynamic> json) => _$AuditLogModelFromJson(json);

@override final  String id;
@override final  String actorUid;
@override final  String? actorName;
@override final  String? actorRole;
@override final  AuditAction action;
@override final  String collectionName;
@override final  String? docId;
@override final  String? districtId;
@override final  String? subDivisionId;
@override final  String? circleId;
@override final  String? clusterId;
@override final  String? schoolId;
@override final  String? deviceInfo;
 final  Map<String, dynamic>? _beforeData;
@override Map<String, dynamic>? get beforeData {
  final value = _beforeData;
  if (value == null) return null;
  if (_beforeData is EqualUnmodifiableMapView) return _beforeData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _afterData;
@override Map<String, dynamic>? get afterData {
  final value = _afterData;
  if (value == null) return null;
  if (_afterData is EqualUnmodifiableMapView) return _afterData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  DateTime timestamp;

/// Create a copy of AuditLogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuditLogModelCopyWith<_AuditLogModel> get copyWith => __$AuditLogModelCopyWithImpl<_AuditLogModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuditLogModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuditLogModel&&(identical(other.id, id) || other.id == id)&&(identical(other.actorUid, actorUid) || other.actorUid == actorUid)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.action, action) || other.action == action)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo)&&const DeepCollectionEquality().equals(other._beforeData, _beforeData)&&const DeepCollectionEquality().equals(other._afterData, _afterData)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actorUid,actorName,actorRole,action,collectionName,docId,districtId,subDivisionId,circleId,clusterId,schoolId,deviceInfo,const DeepCollectionEquality().hash(_beforeData),const DeepCollectionEquality().hash(_afterData),timestamp);

@override
String toString() {
  return 'AuditLogModel(id: $id, actorUid: $actorUid, actorName: $actorName, actorRole: $actorRole, action: $action, collectionName: $collectionName, docId: $docId, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, deviceInfo: $deviceInfo, beforeData: $beforeData, afterData: $afterData, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$AuditLogModelCopyWith<$Res> implements $AuditLogModelCopyWith<$Res> {
  factory _$AuditLogModelCopyWith(_AuditLogModel value, $Res Function(_AuditLogModel) _then) = __$AuditLogModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String actorUid, String? actorName, String? actorRole, AuditAction action, String collectionName, String? docId, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, String? deviceInfo, Map<String, dynamic>? beforeData, Map<String, dynamic>? afterData, DateTime timestamp
});




}
/// @nodoc
class __$AuditLogModelCopyWithImpl<$Res>
    implements _$AuditLogModelCopyWith<$Res> {
  __$AuditLogModelCopyWithImpl(this._self, this._then);

  final _AuditLogModel _self;
  final $Res Function(_AuditLogModel) _then;

/// Create a copy of AuditLogModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? actorUid = null,Object? actorName = freezed,Object? actorRole = freezed,Object? action = null,Object? collectionName = null,Object? docId = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? deviceInfo = freezed,Object? beforeData = freezed,Object? afterData = freezed,Object? timestamp = null,}) {
  return _then(_AuditLogModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,actorUid: null == actorUid ? _self.actorUid : actorUid // ignore: cast_nullable_to_non_nullable
as String,actorName: freezed == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String?,actorRole: freezed == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String?,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as AuditAction,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,docId: freezed == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String?,beforeData: freezed == beforeData ? _self._beforeData : beforeData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,afterData: freezed == afterData ? _self._afterData : afterData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
