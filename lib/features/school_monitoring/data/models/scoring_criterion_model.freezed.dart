// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scoring_criterion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScoringCriterionModel {

 String get id; String get label; String? get labelUrdu; double get weight; double get maxScore;
/// Create a copy of ScoringCriterionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoringCriterionModelCopyWith<ScoringCriterionModel> get copyWith => _$ScoringCriterionModelCopyWithImpl<ScoringCriterionModel>(this as ScoringCriterionModel, _$identity);

  /// Serializes this ScoringCriterionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoringCriterionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.labelUrdu, labelUrdu) || other.labelUrdu == labelUrdu)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,labelUrdu,weight,maxScore);

@override
String toString() {
  return 'ScoringCriterionModel(id: $id, label: $label, labelUrdu: $labelUrdu, weight: $weight, maxScore: $maxScore)';
}


}

/// @nodoc
abstract mixin class $ScoringCriterionModelCopyWith<$Res>  {
  factory $ScoringCriterionModelCopyWith(ScoringCriterionModel value, $Res Function(ScoringCriterionModel) _then) = _$ScoringCriterionModelCopyWithImpl;
@useResult
$Res call({
 String id, String label, String? labelUrdu, double weight, double maxScore
});




}
/// @nodoc
class _$ScoringCriterionModelCopyWithImpl<$Res>
    implements $ScoringCriterionModelCopyWith<$Res> {
  _$ScoringCriterionModelCopyWithImpl(this._self, this._then);

  final ScoringCriterionModel _self;
  final $Res Function(ScoringCriterionModel) _then;

/// Create a copy of ScoringCriterionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? labelUrdu = freezed,Object? weight = null,Object? maxScore = null,}) {
  return _then(ScoringCriterionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,labelUrdu: freezed == labelUrdu ? _self.labelUrdu : labelUrdu // ignore: cast_nullable_to_non_nullable
as String?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoringCriterionModel].
extension ScoringCriterionModelPatterns on ScoringCriterionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoringCriterionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoringCriterionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoringCriterionModel value)  $default,){
final _that = this;
switch (_that) {
case _ScoringCriterionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoringCriterionModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScoringCriterionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String? labelUrdu,  double weight,  double maxScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoringCriterionModel() when $default != null:
return $default(_that.id,_that.label,_that.labelUrdu,_that.weight,_that.maxScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String? labelUrdu,  double weight,  double maxScore)  $default,) {final _that = this;
switch (_that) {
case _ScoringCriterionModel():
return $default(_that.id,_that.label,_that.labelUrdu,_that.weight,_that.maxScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String? labelUrdu,  double weight,  double maxScore)?  $default,) {final _that = this;
switch (_that) {
case _ScoringCriterionModel() when $default != null:
return $default(_that.id,_that.label,_that.labelUrdu,_that.weight,_that.maxScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScoringCriterionModel implements ScoringCriterionModel {
  const _ScoringCriterionModel({required this.id, required this.label, this.labelUrdu, required this.weight, this.maxScore = 100.0});
  factory _ScoringCriterionModel.fromJson(Map<String, dynamic> json) => _$ScoringCriterionModelFromJson(json);

@override final  String id;
@override final  String label;
@override final  String? labelUrdu;
@override final  double weight;
@override@JsonKey() final  double maxScore;

/// Create a copy of ScoringCriterionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoringCriterionModelCopyWith<_ScoringCriterionModel> get copyWith => __$ScoringCriterionModelCopyWithImpl<_ScoringCriterionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoringCriterionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoringCriterionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.labelUrdu, labelUrdu) || other.labelUrdu == labelUrdu)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,labelUrdu,weight,maxScore);

@override
String toString() {
  return 'ScoringCriterionModel(id: $id, label: $label, labelUrdu: $labelUrdu, weight: $weight, maxScore: $maxScore)';
}


}

/// @nodoc
abstract mixin class _$ScoringCriterionModelCopyWith<$Res> implements $ScoringCriterionModelCopyWith<$Res> {
  factory _$ScoringCriterionModelCopyWith(_ScoringCriterionModel value, $Res Function(_ScoringCriterionModel) _then) = __$ScoringCriterionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String? labelUrdu, double weight, double maxScore
});




}
/// @nodoc
class __$ScoringCriterionModelCopyWithImpl<$Res>
    implements _$ScoringCriterionModelCopyWith<$Res> {
  __$ScoringCriterionModelCopyWithImpl(this._self, this._then);

  final _ScoringCriterionModel _self;
  final $Res Function(_ScoringCriterionModel) _then;

/// Create a copy of ScoringCriterionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? labelUrdu = freezed,Object? weight = null,Object? maxScore = null,}) {
  return _then(_ScoringCriterionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,labelUrdu: freezed == labelUrdu ? _self.labelUrdu : labelUrdu // ignore: cast_nullable_to_non_nullable
as String?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$GradeBandModel {

 String get grade; double get minScore; double get maxScore;
/// Create a copy of GradeBandModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeBandModelCopyWith<GradeBandModel> get copyWith => _$GradeBandModelCopyWithImpl<GradeBandModel>(this as GradeBandModel, _$identity);

  /// Serializes this GradeBandModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeBandModel&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.minScore, minScore) || other.minScore == minScore)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grade,minScore,maxScore);

@override
String toString() {
  return 'GradeBandModel(grade: $grade, minScore: $minScore, maxScore: $maxScore)';
}


}

/// @nodoc
abstract mixin class $GradeBandModelCopyWith<$Res>  {
  factory $GradeBandModelCopyWith(GradeBandModel value, $Res Function(GradeBandModel) _then) = _$GradeBandModelCopyWithImpl;
@useResult
$Res call({
 String grade, double minScore, double maxScore
});




}
/// @nodoc
class _$GradeBandModelCopyWithImpl<$Res>
    implements $GradeBandModelCopyWith<$Res> {
  _$GradeBandModelCopyWithImpl(this._self, this._then);

  final GradeBandModel _self;
  final $Res Function(GradeBandModel) _then;

/// Create a copy of GradeBandModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grade = null,Object? minScore = null,Object? maxScore = null,}) {
  return _then(GradeBandModel(
grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,minScore: null == minScore ? _self.minScore : minScore // ignore: cast_nullable_to_non_nullable
as double,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GradeBandModel].
extension GradeBandModelPatterns on GradeBandModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GradeBandModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GradeBandModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GradeBandModel value)  $default,){
final _that = this;
switch (_that) {
case _GradeBandModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GradeBandModel value)?  $default,){
final _that = this;
switch (_that) {
case _GradeBandModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String grade,  double minScore,  double maxScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GradeBandModel() when $default != null:
return $default(_that.grade,_that.minScore,_that.maxScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String grade,  double minScore,  double maxScore)  $default,) {final _that = this;
switch (_that) {
case _GradeBandModel():
return $default(_that.grade,_that.minScore,_that.maxScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String grade,  double minScore,  double maxScore)?  $default,) {final _that = this;
switch (_that) {
case _GradeBandModel() when $default != null:
return $default(_that.grade,_that.minScore,_that.maxScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GradeBandModel implements GradeBandModel {
  const _GradeBandModel({required this.grade, required this.minScore, required this.maxScore});
  factory _GradeBandModel.fromJson(Map<String, dynamic> json) => _$GradeBandModelFromJson(json);

@override final  String grade;
@override final  double minScore;
@override final  double maxScore;

/// Create a copy of GradeBandModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GradeBandModelCopyWith<_GradeBandModel> get copyWith => __$GradeBandModelCopyWithImpl<_GradeBandModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GradeBandModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GradeBandModel&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.minScore, minScore) || other.minScore == minScore)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grade,minScore,maxScore);

@override
String toString() {
  return 'GradeBandModel(grade: $grade, minScore: $minScore, maxScore: $maxScore)';
}


}

/// @nodoc
abstract mixin class _$GradeBandModelCopyWith<$Res> implements $GradeBandModelCopyWith<$Res> {
  factory _$GradeBandModelCopyWith(_GradeBandModel value, $Res Function(_GradeBandModel) _then) = __$GradeBandModelCopyWithImpl;
@override @useResult
$Res call({
 String grade, double minScore, double maxScore
});




}
/// @nodoc
class __$GradeBandModelCopyWithImpl<$Res>
    implements _$GradeBandModelCopyWith<$Res> {
  __$GradeBandModelCopyWithImpl(this._self, this._then);

  final _GradeBandModel _self;
  final $Res Function(_GradeBandModel) _then;

/// Create a copy of GradeBandModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grade = null,Object? minScore = null,Object? maxScore = null,}) {
  return _then(_GradeBandModel(
grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,minScore: null == minScore ? _self.minScore : minScore // ignore: cast_nullable_to_non_nullable
as double,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CriterionScoreModel {

 String get criterionId; String get label; String? get labelUrdu; double get weight; double get maxScore; double get achievedScore;
/// Create a copy of CriterionScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CriterionScoreModelCopyWith<CriterionScoreModel> get copyWith => _$CriterionScoreModelCopyWithImpl<CriterionScoreModel>(this as CriterionScoreModel, _$identity);

  /// Serializes this CriterionScoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CriterionScoreModel&&(identical(other.criterionId, criterionId) || other.criterionId == criterionId)&&(identical(other.label, label) || other.label == label)&&(identical(other.labelUrdu, labelUrdu) || other.labelUrdu == labelUrdu)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.achievedScore, achievedScore) || other.achievedScore == achievedScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,criterionId,label,labelUrdu,weight,maxScore,achievedScore);

@override
String toString() {
  return 'CriterionScoreModel(criterionId: $criterionId, label: $label, labelUrdu: $labelUrdu, weight: $weight, maxScore: $maxScore, achievedScore: $achievedScore)';
}


}

/// @nodoc
abstract mixin class $CriterionScoreModelCopyWith<$Res>  {
  factory $CriterionScoreModelCopyWith(CriterionScoreModel value, $Res Function(CriterionScoreModel) _then) = _$CriterionScoreModelCopyWithImpl;
@useResult
$Res call({
 String criterionId, String label, String? labelUrdu, double weight, double maxScore, double achievedScore
});




}
/// @nodoc
class _$CriterionScoreModelCopyWithImpl<$Res>
    implements $CriterionScoreModelCopyWith<$Res> {
  _$CriterionScoreModelCopyWithImpl(this._self, this._then);

  final CriterionScoreModel _self;
  final $Res Function(CriterionScoreModel) _then;

/// Create a copy of CriterionScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? criterionId = null,Object? label = null,Object? labelUrdu = freezed,Object? weight = null,Object? maxScore = null,Object? achievedScore = null,}) {
  return _then(CriterionScoreModel(
criterionId: null == criterionId ? _self.criterionId : criterionId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,labelUrdu: freezed == labelUrdu ? _self.labelUrdu : labelUrdu // ignore: cast_nullable_to_non_nullable
as String?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as double,achievedScore: null == achievedScore ? _self.achievedScore : achievedScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CriterionScoreModel].
extension CriterionScoreModelPatterns on CriterionScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CriterionScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CriterionScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CriterionScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _CriterionScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CriterionScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _CriterionScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String criterionId,  String label,  String? labelUrdu,  double weight,  double maxScore,  double achievedScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CriterionScoreModel() when $default != null:
return $default(_that.criterionId,_that.label,_that.labelUrdu,_that.weight,_that.maxScore,_that.achievedScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String criterionId,  String label,  String? labelUrdu,  double weight,  double maxScore,  double achievedScore)  $default,) {final _that = this;
switch (_that) {
case _CriterionScoreModel():
return $default(_that.criterionId,_that.label,_that.labelUrdu,_that.weight,_that.maxScore,_that.achievedScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String criterionId,  String label,  String? labelUrdu,  double weight,  double maxScore,  double achievedScore)?  $default,) {final _that = this;
switch (_that) {
case _CriterionScoreModel() when $default != null:
return $default(_that.criterionId,_that.label,_that.labelUrdu,_that.weight,_that.maxScore,_that.achievedScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CriterionScoreModel implements CriterionScoreModel {
  const _CriterionScoreModel({required this.criterionId, required this.label, this.labelUrdu, required this.weight, required this.maxScore, this.achievedScore = 0.0});
  factory _CriterionScoreModel.fromJson(Map<String, dynamic> json) => _$CriterionScoreModelFromJson(json);

@override final  String criterionId;
@override final  String label;
@override final  String? labelUrdu;
@override final  double weight;
@override final  double maxScore;
@override@JsonKey() final  double achievedScore;

/// Create a copy of CriterionScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CriterionScoreModelCopyWith<_CriterionScoreModel> get copyWith => __$CriterionScoreModelCopyWithImpl<_CriterionScoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CriterionScoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CriterionScoreModel&&(identical(other.criterionId, criterionId) || other.criterionId == criterionId)&&(identical(other.label, label) || other.label == label)&&(identical(other.labelUrdu, labelUrdu) || other.labelUrdu == labelUrdu)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.achievedScore, achievedScore) || other.achievedScore == achievedScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,criterionId,label,labelUrdu,weight,maxScore,achievedScore);

@override
String toString() {
  return 'CriterionScoreModel(criterionId: $criterionId, label: $label, labelUrdu: $labelUrdu, weight: $weight, maxScore: $maxScore, achievedScore: $achievedScore)';
}


}

/// @nodoc
abstract mixin class _$CriterionScoreModelCopyWith<$Res> implements $CriterionScoreModelCopyWith<$Res> {
  factory _$CriterionScoreModelCopyWith(_CriterionScoreModel value, $Res Function(_CriterionScoreModel) _then) = __$CriterionScoreModelCopyWithImpl;
@override @useResult
$Res call({
 String criterionId, String label, String? labelUrdu, double weight, double maxScore, double achievedScore
});




}
/// @nodoc
class __$CriterionScoreModelCopyWithImpl<$Res>
    implements _$CriterionScoreModelCopyWith<$Res> {
  __$CriterionScoreModelCopyWithImpl(this._self, this._then);

  final _CriterionScoreModel _self;
  final $Res Function(_CriterionScoreModel) _then;

/// Create a copy of CriterionScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? criterionId = null,Object? label = null,Object? labelUrdu = freezed,Object? weight = null,Object? maxScore = null,Object? achievedScore = null,}) {
  return _then(_CriterionScoreModel(
criterionId: null == criterionId ? _self.criterionId : criterionId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,labelUrdu: freezed == labelUrdu ? _self.labelUrdu : labelUrdu // ignore: cast_nullable_to_non_nullable
as String?,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as double,achievedScore: null == achievedScore ? _self.achievedScore : achievedScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
