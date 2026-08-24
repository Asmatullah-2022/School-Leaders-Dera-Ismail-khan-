// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

 String get id;/// Either a specific recipient, or null for a role/scope broadcast.
 String? get recipientUid;/// For broadcasts: the minimum role tier plus the hierarchy scope the
/// notification applies to, so a recipient's own scope decides visibility.
 String? get recipientRole; String? get districtId; String? get subDivisionId; String? get circleId; String? get clusterId; String? get schoolId; String get title; String? get titleUrdu; String get body; String? get bodyUrdu; AppNotificationType get type; bool get isRead;/// Deep-link target: which collection + document this notification is about.
 String? get relatedCollection; String? get relatedDocId; DateTime get createdAt; String get createdBy;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.recipientUid, recipientUid) || other.recipientUid == recipientUid)&&(identical(other.recipientRole, recipientRole) || other.recipientRole == recipientRole)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleUrdu, titleUrdu) || other.titleUrdu == titleUrdu)&&(identical(other.body, body) || other.body == body)&&(identical(other.bodyUrdu, bodyUrdu) || other.bodyUrdu == bodyUrdu)&&(identical(other.type, type) || other.type == type)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.relatedCollection, relatedCollection) || other.relatedCollection == relatedCollection)&&(identical(other.relatedDocId, relatedDocId) || other.relatedDocId == relatedDocId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipientUid,recipientRole,districtId,subDivisionId,circleId,clusterId,schoolId,title,titleUrdu,body,bodyUrdu,type,isRead,relatedCollection,relatedDocId,createdAt,createdBy);

@override
String toString() {
  return 'NotificationModel(id: $id, recipientUid: $recipientUid, recipientRole: $recipientRole, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, title: $title, titleUrdu: $titleUrdu, body: $body, bodyUrdu: $bodyUrdu, type: $type, isRead: $isRead, relatedCollection: $relatedCollection, relatedDocId: $relatedDocId, createdAt: $createdAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
 String id, String? recipientUid, String? recipientRole, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, String title, String? titleUrdu, String body, String? bodyUrdu, AppNotificationType type, bool isRead, String? relatedCollection, String? relatedDocId, DateTime createdAt, String createdBy
});




}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipientUid = freezed,Object? recipientRole = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? title = null,Object? titleUrdu = freezed,Object? body = null,Object? bodyUrdu = freezed,Object? type = null,Object? isRead = null,Object? relatedCollection = freezed,Object? relatedDocId = freezed,Object? createdAt = null,Object? createdBy = null,}) {
  return _then(NotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipientUid: freezed == recipientUid ? _self.recipientUid : recipientUid // ignore: cast_nullable_to_non_nullable
as String?,recipientRole: freezed == recipientRole ? _self.recipientRole : recipientRole // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleUrdu: freezed == titleUrdu ? _self.titleUrdu : titleUrdu // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,bodyUrdu: freezed == bodyUrdu ? _self.bodyUrdu : bodyUrdu // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AppNotificationType,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,relatedCollection: freezed == relatedCollection ? _self.relatedCollection : relatedCollection // ignore: cast_nullable_to_non_nullable
as String?,relatedDocId: freezed == relatedDocId ? _self.relatedDocId : relatedDocId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? recipientUid,  String? recipientRole,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String title,  String? titleUrdu,  String body,  String? bodyUrdu,  AppNotificationType type,  bool isRead,  String? relatedCollection,  String? relatedDocId,  DateTime createdAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.recipientUid,_that.recipientRole,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.title,_that.titleUrdu,_that.body,_that.bodyUrdu,_that.type,_that.isRead,_that.relatedCollection,_that.relatedDocId,_that.createdAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? recipientUid,  String? recipientRole,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String title,  String? titleUrdu,  String body,  String? bodyUrdu,  AppNotificationType type,  bool isRead,  String? relatedCollection,  String? relatedDocId,  DateTime createdAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
return $default(_that.id,_that.recipientUid,_that.recipientRole,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.title,_that.titleUrdu,_that.body,_that.bodyUrdu,_that.type,_that.isRead,_that.relatedCollection,_that.relatedDocId,_that.createdAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? recipientUid,  String? recipientRole,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String title,  String? titleUrdu,  String body,  String? bodyUrdu,  AppNotificationType type,  bool isRead,  String? relatedCollection,  String? relatedDocId,  DateTime createdAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.recipientUid,_that.recipientRole,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.title,_that.titleUrdu,_that.body,_that.bodyUrdu,_that.type,_that.isRead,_that.relatedCollection,_that.relatedDocId,_that.createdAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel extends NotificationModel {
  const _NotificationModel({required this.id, this.recipientUid, this.recipientRole, this.districtId, this.subDivisionId, this.circleId, this.clusterId, this.schoolId, required this.title, this.titleUrdu, required this.body, this.bodyUrdu, required this.type, this.isRead = false, this.relatedCollection, this.relatedDocId, required this.createdAt, required this.createdBy}): super._();
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override final  String id;
/// Either a specific recipient, or null for a role/scope broadcast.
@override final  String? recipientUid;
/// For broadcasts: the minimum role tier plus the hierarchy scope the
/// notification applies to, so a recipient's own scope decides visibility.
@override final  String? recipientRole;
@override final  String? districtId;
@override final  String? subDivisionId;
@override final  String? circleId;
@override final  String? clusterId;
@override final  String? schoolId;
@override final  String title;
@override final  String? titleUrdu;
@override final  String body;
@override final  String? bodyUrdu;
@override final  AppNotificationType type;
@override@JsonKey() final  bool isRead;
/// Deep-link target: which collection + document this notification is about.
@override final  String? relatedCollection;
@override final  String? relatedDocId;
@override final  DateTime createdAt;
@override final  String createdBy;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.recipientUid, recipientUid) || other.recipientUid == recipientUid)&&(identical(other.recipientRole, recipientRole) || other.recipientRole == recipientRole)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleUrdu, titleUrdu) || other.titleUrdu == titleUrdu)&&(identical(other.body, body) || other.body == body)&&(identical(other.bodyUrdu, bodyUrdu) || other.bodyUrdu == bodyUrdu)&&(identical(other.type, type) || other.type == type)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.relatedCollection, relatedCollection) || other.relatedCollection == relatedCollection)&&(identical(other.relatedDocId, relatedDocId) || other.relatedDocId == relatedDocId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recipientUid,recipientRole,districtId,subDivisionId,circleId,clusterId,schoolId,title,titleUrdu,body,bodyUrdu,type,isRead,relatedCollection,relatedDocId,createdAt,createdBy);

@override
String toString() {
  return 'NotificationModel(id: $id, recipientUid: $recipientUid, recipientRole: $recipientRole, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, title: $title, titleUrdu: $titleUrdu, body: $body, bodyUrdu: $bodyUrdu, type: $type, isRead: $isRead, relatedCollection: $relatedCollection, relatedDocId: $relatedDocId, createdAt: $createdAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? recipientUid, String? recipientRole, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, String title, String? titleUrdu, String body, String? bodyUrdu, AppNotificationType type, bool isRead, String? relatedCollection, String? relatedDocId, DateTime createdAt, String createdBy
});




}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipientUid = freezed,Object? recipientRole = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? title = null,Object? titleUrdu = freezed,Object? body = null,Object? bodyUrdu = freezed,Object? type = null,Object? isRead = null,Object? relatedCollection = freezed,Object? relatedDocId = freezed,Object? createdAt = null,Object? createdBy = null,}) {
  return _then(_NotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipientUid: freezed == recipientUid ? _self.recipientUid : recipientUid // ignore: cast_nullable_to_non_nullable
as String?,recipientRole: freezed == recipientRole ? _self.recipientRole : recipientRole // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleUrdu: freezed == titleUrdu ? _self.titleUrdu : titleUrdu // ignore: cast_nullable_to_non_nullable
as String?,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,bodyUrdu: freezed == bodyUrdu ? _self.bodyUrdu : bodyUrdu // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AppNotificationType,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,relatedCollection: freezed == relatedCollection ? _self.relatedCollection : relatedCollection // ignore: cast_nullable_to_non_nullable
as String?,relatedDocId: freezed == relatedDocId ? _self.relatedDocId : relatedDocId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
