// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monitoring_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonitoringConfigModel {

 List<ScoringCriterionModel> get criteria; List<GradeBandModel> get gradeBands; String? get updatedBy; DateTime? get updatedAt;
/// Create a copy of MonitoringConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonitoringConfigModelCopyWith<MonitoringConfigModel> get copyWith => _$MonitoringConfigModelCopyWithImpl<MonitoringConfigModel>(this as MonitoringConfigModel, _$identity);

  /// Serializes this MonitoringConfigModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonitoringConfigModel&&const DeepCollectionEquality().equals(other.criteria, criteria)&&const DeepCollectionEquality().equals(other.gradeBands, gradeBands)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(criteria),const DeepCollectionEquality().hash(gradeBands),updatedBy,updatedAt);

@override
String toString() {
  return 'MonitoringConfigModel(criteria: $criteria, gradeBands: $gradeBands, updatedBy: $updatedBy, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MonitoringConfigModelCopyWith<$Res>  {
  factory $MonitoringConfigModelCopyWith(MonitoringConfigModel value, $Res Function(MonitoringConfigModel) _then) = _$MonitoringConfigModelCopyWithImpl;
@useResult
$Res call({
 List<ScoringCriterionModel> criteria, List<GradeBandModel> gradeBands, String? updatedBy, DateTime? updatedAt
});




}
/// @nodoc
class _$MonitoringConfigModelCopyWithImpl<$Res>
    implements $MonitoringConfigModelCopyWith<$Res> {
  _$MonitoringConfigModelCopyWithImpl(this._self, this._then);

  final MonitoringConfigModel _self;
  final $Res Function(MonitoringConfigModel) _then;

/// Create a copy of MonitoringConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? criteria = null,Object? gradeBands = null,Object? updatedBy = freezed,Object? updatedAt = freezed,}) {
  return _then(MonitoringConfigModel(
criteria: null == criteria ? _self.criteria : criteria // ignore: cast_nullable_to_non_nullable
as List<ScoringCriterionModel>,gradeBands: null == gradeBands ? _self.gradeBands : gradeBands // ignore: cast_nullable_to_non_nullable
as List<GradeBandModel>,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MonitoringConfigModel].
extension MonitoringConfigModelPatterns on MonitoringConfigModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonitoringConfigModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonitoringConfigModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonitoringConfigModel value)  $default,){
final _that = this;
switch (_that) {
case _MonitoringConfigModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonitoringConfigModel value)?  $default,){
final _that = this;
switch (_that) {
case _MonitoringConfigModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ScoringCriterionModel> criteria,  List<GradeBandModel> gradeBands,  String? updatedBy,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonitoringConfigModel() when $default != null:
return $default(_that.criteria,_that.gradeBands,_that.updatedBy,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ScoringCriterionModel> criteria,  List<GradeBandModel> gradeBands,  String? updatedBy,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MonitoringConfigModel():
return $default(_that.criteria,_that.gradeBands,_that.updatedBy,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ScoringCriterionModel> criteria,  List<GradeBandModel> gradeBands,  String? updatedBy,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MonitoringConfigModel() when $default != null:
return $default(_that.criteria,_that.gradeBands,_that.updatedBy,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonitoringConfigModel extends MonitoringConfigModel {
  const _MonitoringConfigModel({required  List<ScoringCriterionModel> criteria, required  List<GradeBandModel> gradeBands, this.updatedBy, this.updatedAt}): _criteria = criteria,_gradeBands = gradeBands,super._();
  factory _MonitoringConfigModel.fromJson(Map<String, dynamic> json) => _$MonitoringConfigModelFromJson(json);

 final  List<ScoringCriterionModel> _criteria;
@override List<ScoringCriterionModel> get criteria {
  if (_criteria is EqualUnmodifiableListView) return _criteria;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_criteria);
}

 final  List<GradeBandModel> _gradeBands;
@override List<GradeBandModel> get gradeBands {
  if (_gradeBands is EqualUnmodifiableListView) return _gradeBands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gradeBands);
}

@override final  String? updatedBy;
@override final  DateTime? updatedAt;

/// Create a copy of MonitoringConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonitoringConfigModelCopyWith<_MonitoringConfigModel> get copyWith => __$MonitoringConfigModelCopyWithImpl<_MonitoringConfigModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonitoringConfigModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonitoringConfigModel&&const DeepCollectionEquality().equals(other._criteria, _criteria)&&const DeepCollectionEquality().equals(other._gradeBands, _gradeBands)&&(identical(other.updatedBy, updatedBy) || other.updatedBy == updatedBy)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_criteria),const DeepCollectionEquality().hash(_gradeBands),updatedBy,updatedAt);

@override
String toString() {
  return 'MonitoringConfigModel(criteria: $criteria, gradeBands: $gradeBands, updatedBy: $updatedBy, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MonitoringConfigModelCopyWith<$Res> implements $MonitoringConfigModelCopyWith<$Res> {
  factory _$MonitoringConfigModelCopyWith(_MonitoringConfigModel value, $Res Function(_MonitoringConfigModel) _then) = __$MonitoringConfigModelCopyWithImpl;
@override @useResult
$Res call({
 List<ScoringCriterionModel> criteria, List<GradeBandModel> gradeBands, String? updatedBy, DateTime? updatedAt
});




}
/// @nodoc
class __$MonitoringConfigModelCopyWithImpl<$Res>
    implements _$MonitoringConfigModelCopyWith<$Res> {
  __$MonitoringConfigModelCopyWithImpl(this._self, this._then);

  final _MonitoringConfigModel _self;
  final $Res Function(_MonitoringConfigModel) _then;

/// Create a copy of MonitoringConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? criteria = null,Object? gradeBands = null,Object? updatedBy = freezed,Object? updatedAt = freezed,}) {
  return _then(_MonitoringConfigModel(
criteria: null == criteria ? _self._criteria : criteria // ignore: cast_nullable_to_non_nullable
as List<ScoringCriterionModel>,gradeBands: null == gradeBands ? _self._gradeBands : gradeBands // ignore: cast_nullable_to_non_nullable
as List<GradeBandModel>,updatedBy: freezed == updatedBy ? _self.updatedBy : updatedBy // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
