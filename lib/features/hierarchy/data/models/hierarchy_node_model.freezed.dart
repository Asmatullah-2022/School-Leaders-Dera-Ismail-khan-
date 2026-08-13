// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hierarchy_node_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HierarchyNodeModel {

 String get id; String get name; String? get nameUrdu; String? get code; String? get parentId; String? get districtId; String? get subDivisionId; String? get circleId; bool get isActive; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of HierarchyNodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchyNodeModelCopyWith<HierarchyNodeModel> get copyWith => _$HierarchyNodeModelCopyWithImpl<HierarchyNodeModel>(this as HierarchyNodeModel, _$identity);

  /// Serializes this HierarchyNodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyNodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameUrdu, nameUrdu) || other.nameUrdu == nameUrdu)&&(identical(other.code, code) || other.code == code)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameUrdu,code,parentId,districtId,subDivisionId,circleId,isActive,createdAt,updatedAt,createdBy);

@override
String toString() {
  return 'HierarchyNodeModel(id: $id, name: $name, nameUrdu: $nameUrdu, code: $code, parentId: $parentId, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $HierarchyNodeModelCopyWith<$Res>  {
  factory $HierarchyNodeModelCopyWith(HierarchyNodeModel value, $Res Function(HierarchyNodeModel) _then) = _$HierarchyNodeModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? nameUrdu, String? code, String? parentId, String? districtId, String? subDivisionId, String? circleId, bool isActive, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$HierarchyNodeModelCopyWithImpl<$Res>
    implements $HierarchyNodeModelCopyWith<$Res> {
  _$HierarchyNodeModelCopyWithImpl(this._self, this._then);

  final HierarchyNodeModel _self;
  final $Res Function(HierarchyNodeModel) _then;

/// Create a copy of HierarchyNodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameUrdu = freezed,Object? code = freezed,Object? parentId = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(HierarchyNodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameUrdu: freezed == nameUrdu ? _self.nameUrdu : nameUrdu // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HierarchyNodeModel].
extension HierarchyNodeModelPatterns on HierarchyNodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HierarchyNodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HierarchyNodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HierarchyNodeModel value)  $default,){
final _that = this;
switch (_that) {
case _HierarchyNodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HierarchyNodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _HierarchyNodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? nameUrdu,  String? code,  String? parentId,  String? districtId,  String? subDivisionId,  String? circleId,  bool isActive,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HierarchyNodeModel() when $default != null:
return $default(_that.id,_that.name,_that.nameUrdu,_that.code,_that.parentId,_that.districtId,_that.subDivisionId,_that.circleId,_that.isActive,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? nameUrdu,  String? code,  String? parentId,  String? districtId,  String? subDivisionId,  String? circleId,  bool isActive,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _HierarchyNodeModel():
return $default(_that.id,_that.name,_that.nameUrdu,_that.code,_that.parentId,_that.districtId,_that.subDivisionId,_that.circleId,_that.isActive,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? nameUrdu,  String? code,  String? parentId,  String? districtId,  String? subDivisionId,  String? circleId,  bool isActive,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _HierarchyNodeModel() when $default != null:
return $default(_that.id,_that.name,_that.nameUrdu,_that.code,_that.parentId,_that.districtId,_that.subDivisionId,_that.circleId,_that.isActive,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HierarchyNodeModel extends HierarchyNodeModel {
  const _HierarchyNodeModel({required this.id, required this.name, this.nameUrdu, this.code, this.parentId, this.districtId, this.subDivisionId, this.circleId, this.isActive = true, required this.createdAt, required this.updatedAt, required this.createdBy}): super._();
  factory _HierarchyNodeModel.fromJson(Map<String, dynamic> json) => _$HierarchyNodeModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? nameUrdu;
@override final  String? code;
@override final  String? parentId;
@override final  String? districtId;
@override final  String? subDivisionId;
@override final  String? circleId;
@override@JsonKey() final  bool isActive;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of HierarchyNodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HierarchyNodeModelCopyWith<_HierarchyNodeModel> get copyWith => __$HierarchyNodeModelCopyWithImpl<_HierarchyNodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HierarchyNodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HierarchyNodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameUrdu, nameUrdu) || other.nameUrdu == nameUrdu)&&(identical(other.code, code) || other.code == code)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameUrdu,code,parentId,districtId,subDivisionId,circleId,isActive,createdAt,updatedAt,createdBy);

@override
String toString() {
  return 'HierarchyNodeModel(id: $id, name: $name, nameUrdu: $nameUrdu, code: $code, parentId: $parentId, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$HierarchyNodeModelCopyWith<$Res> implements $HierarchyNodeModelCopyWith<$Res> {
  factory _$HierarchyNodeModelCopyWith(_HierarchyNodeModel value, $Res Function(_HierarchyNodeModel) _then) = __$HierarchyNodeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? nameUrdu, String? code, String? parentId, String? districtId, String? subDivisionId, String? circleId, bool isActive, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$HierarchyNodeModelCopyWithImpl<$Res>
    implements _$HierarchyNodeModelCopyWith<$Res> {
  __$HierarchyNodeModelCopyWithImpl(this._self, this._then);

  final _HierarchyNodeModel _self;
  final $Res Function(_HierarchyNodeModel) _then;

/// Create a copy of HierarchyNodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameUrdu = freezed,Object? code = freezed,Object? parentId = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_HierarchyNodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameUrdu: freezed == nameUrdu ? _self.nameUrdu : nameUrdu // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
