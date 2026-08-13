// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUser {

 String get uid; String get email; String get displayName; String? get displayNameUrdu; String? get phone;@JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) AppRole get role; String? get districtId; String? get subDivisionId; String? get circleId; String? get clusterId; String? get schoolId; bool get isActive; List<String> get fcmTokens; String get preferredLocale;
/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppUserCopyWith<AppUser> get copyWith => _$AppUserCopyWithImpl<AppUser>(this as AppUser, _$identity);

  /// Serializes this AppUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.displayNameUrdu, displayNameUrdu) || other.displayNameUrdu == displayNameUrdu)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.fcmTokens, fcmTokens)&&(identical(other.preferredLocale, preferredLocale) || other.preferredLocale == preferredLocale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,displayName,displayNameUrdu,phone,role,districtId,subDivisionId,circleId,clusterId,schoolId,isActive,const DeepCollectionEquality().hash(fcmTokens),preferredLocale);

@override
String toString() {
  return 'AppUser(uid: $uid, email: $email, displayName: $displayName, displayNameUrdu: $displayNameUrdu, phone: $phone, role: $role, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, isActive: $isActive, fcmTokens: $fcmTokens, preferredLocale: $preferredLocale)';
}


}

/// @nodoc
abstract mixin class $AppUserCopyWith<$Res>  {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) _then) = _$AppUserCopyWithImpl;
@useResult
$Res call({
 String uid, String email, String displayName, String? displayNameUrdu, String? phone,@JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) AppRole role, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, bool isActive, List<String> fcmTokens, String preferredLocale
});




}
/// @nodoc
class _$AppUserCopyWithImpl<$Res>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._self, this._then);

  final AppUser _self;
  final $Res Function(AppUser) _then;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? email = null,Object? displayName = null,Object? displayNameUrdu = freezed,Object? phone = freezed,Object? role = null,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? isActive = null,Object? fcmTokens = null,Object? preferredLocale = null,}) {
  return _then(AppUser(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,displayNameUrdu: freezed == displayNameUrdu ? _self.displayNameUrdu : displayNameUrdu // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AppRole,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,fcmTokens: null == fcmTokens ? _self.fcmTokens : fcmTokens // ignore: cast_nullable_to_non_nullable
as List<String>,preferredLocale: null == preferredLocale ? _self.preferredLocale : preferredLocale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppUser].
extension AppUserPatterns on AppUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppUser value)  $default,){
final _that = this;
switch (_that) {
case _AppUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppUser value)?  $default,){
final _that = this;
switch (_that) {
case _AppUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String email,  String displayName,  String? displayNameUrdu,  String? phone, @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)  AppRole role,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  bool isActive,  List<String> fcmTokens,  String preferredLocale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppUser() when $default != null:
return $default(_that.uid,_that.email,_that.displayName,_that.displayNameUrdu,_that.phone,_that.role,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.isActive,_that.fcmTokens,_that.preferredLocale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String email,  String displayName,  String? displayNameUrdu,  String? phone, @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)  AppRole role,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  bool isActive,  List<String> fcmTokens,  String preferredLocale)  $default,) {final _that = this;
switch (_that) {
case _AppUser():
return $default(_that.uid,_that.email,_that.displayName,_that.displayNameUrdu,_that.phone,_that.role,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.isActive,_that.fcmTokens,_that.preferredLocale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String email,  String displayName,  String? displayNameUrdu,  String? phone, @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson)  AppRole role,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  bool isActive,  List<String> fcmTokens,  String preferredLocale)?  $default,) {final _that = this;
switch (_that) {
case _AppUser() when $default != null:
return $default(_that.uid,_that.email,_that.displayName,_that.displayNameUrdu,_that.phone,_that.role,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.isActive,_that.fcmTokens,_that.preferredLocale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppUser extends AppUser {
  const _AppUser({required this.uid, required this.email, required this.displayName, this.displayNameUrdu, this.phone, @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) required this.role, this.districtId, this.subDivisionId, this.circleId, this.clusterId, this.schoolId, this.isActive = true,  List<String> fcmTokens = const <String>[], this.preferredLocale = 'en'}): _fcmTokens = fcmTokens,super._();
  factory _AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

@override final  String uid;
@override final  String email;
@override final  String displayName;
@override final  String? displayNameUrdu;
@override final  String? phone;
@override@JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) final  AppRole role;
@override final  String? districtId;
@override final  String? subDivisionId;
@override final  String? circleId;
@override final  String? clusterId;
@override final  String? schoolId;
@override@JsonKey() final  bool isActive;
 final  List<String> _fcmTokens;
@override@JsonKey() List<String> get fcmTokens {
  if (_fcmTokens is EqualUnmodifiableListView) return _fcmTokens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fcmTokens);
}

@override@JsonKey() final  String preferredLocale;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUserCopyWith<_AppUser> get copyWith => __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUser&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.displayNameUrdu, displayNameUrdu) || other.displayNameUrdu == displayNameUrdu)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.role, role) || other.role == role)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._fcmTokens, _fcmTokens)&&(identical(other.preferredLocale, preferredLocale) || other.preferredLocale == preferredLocale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,displayName,displayNameUrdu,phone,role,districtId,subDivisionId,circleId,clusterId,schoolId,isActive,const DeepCollectionEquality().hash(_fcmTokens),preferredLocale);

@override
String toString() {
  return 'AppUser(uid: $uid, email: $email, displayName: $displayName, displayNameUrdu: $displayNameUrdu, phone: $phone, role: $role, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, isActive: $isActive, fcmTokens: $fcmTokens, preferredLocale: $preferredLocale)';
}


}

/// @nodoc
abstract mixin class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) _then) = __$AppUserCopyWithImpl;
@override @useResult
$Res call({
 String uid, String email, String displayName, String? displayNameUrdu, String? phone,@JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) AppRole role, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, bool isActive, List<String> fcmTokens, String preferredLocale
});




}
/// @nodoc
class __$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(this._self, this._then);

  final _AppUser _self;
  final $Res Function(_AppUser) _then;

/// Create a copy of AppUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? email = null,Object? displayName = null,Object? displayNameUrdu = freezed,Object? phone = freezed,Object? role = null,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? isActive = null,Object? fcmTokens = null,Object? preferredLocale = null,}) {
  return _then(_AppUser(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,displayNameUrdu: freezed == displayNameUrdu ? _self.displayNameUrdu : displayNameUrdu // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AppRole,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,fcmTokens: null == fcmTokens ? _self._fcmTokens : fcmTokens // ignore: cast_nullable_to_non_nullable
as List<String>,preferredLocale: null == preferredLocale ? _self.preferredLocale : preferredLocale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
