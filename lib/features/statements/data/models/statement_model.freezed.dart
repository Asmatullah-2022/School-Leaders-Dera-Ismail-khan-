// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatementModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get statementType;/// Reporting period label, e.g. "2026-01" or "2025-26 Q3".
 String get period; DateTime get periodStart; DateTime? get periodEnd;/// Statement formats vary by return type, so the payload is stored as a
/// flexible key/value map rather than a fixed set of columns.
 Map<String, dynamic> get data; StatementStatus get status; String? get submittedByUid; DateTime? get submittedAt; String? get reviewedByUid; DateTime? get reviewedAt; String? get reviewNotes; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of StatementModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatementModelCopyWith<StatementModel> get copyWith => _$StatementModelCopyWithImpl<StatementModel>(this as StatementModel, _$identity);

  /// Serializes this StatementModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatementModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.statementType, statementType) || other.statementType == statementType)&&(identical(other.period, period) || other.period == period)&&(identical(other.periodStart, periodStart) || other.periodStart == periodStart)&&(identical(other.periodEnd, periodEnd) || other.periodEnd == periodEnd)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.submittedByUid, submittedByUid) || other.submittedByUid == submittedByUid)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.reviewedByUid, reviewedByUid) || other.reviewedByUid == reviewedByUid)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.reviewNotes, reviewNotes) || other.reviewNotes == reviewNotes)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,statementType,period,periodStart,periodEnd,const DeepCollectionEquality().hash(data),status,submittedByUid,submittedAt,reviewedByUid,reviewedAt,reviewNotes,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'StatementModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, statementType: $statementType, period: $period, periodStart: $periodStart, periodEnd: $periodEnd, data: $data, status: $status, submittedByUid: $submittedByUid, submittedAt: $submittedAt, reviewedByUid: $reviewedByUid, reviewedAt: $reviewedAt, reviewNotes: $reviewNotes, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $StatementModelCopyWith<$Res>  {
  factory $StatementModelCopyWith(StatementModel value, $Res Function(StatementModel) _then) = _$StatementModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String statementType, String period, DateTime periodStart, DateTime? periodEnd, Map<String, dynamic> data, StatementStatus status, String? submittedByUid, DateTime? submittedAt, String? reviewedByUid, DateTime? reviewedAt, String? reviewNotes, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$StatementModelCopyWithImpl<$Res>
    implements $StatementModelCopyWith<$Res> {
  _$StatementModelCopyWithImpl(this._self, this._then);

  final StatementModel _self;
  final $Res Function(StatementModel) _then;

/// Create a copy of StatementModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? statementType = null,Object? period = null,Object? periodStart = null,Object? periodEnd = freezed,Object? data = null,Object? status = null,Object? submittedByUid = freezed,Object? submittedAt = freezed,Object? reviewedByUid = freezed,Object? reviewedAt = freezed,Object? reviewNotes = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(StatementModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,statementType: null == statementType ? _self.statementType : statementType // ignore: cast_nullable_to_non_nullable
as String,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,periodStart: null == periodStart ? _self.periodStart : periodStart // ignore: cast_nullable_to_non_nullable
as DateTime,periodEnd: freezed == periodEnd ? _self.periodEnd : periodEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatementStatus,submittedByUid: freezed == submittedByUid ? _self.submittedByUid : submittedByUid // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewedByUid: freezed == reviewedByUid ? _self.reviewedByUid : reviewedByUid // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewNotes: freezed == reviewNotes ? _self.reviewNotes : reviewNotes // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatementModel].
extension StatementModelPatterns on StatementModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatementModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatementModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatementModel value)  $default,){
final _that = this;
switch (_that) {
case _StatementModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatementModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatementModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String statementType,  String period,  DateTime periodStart,  DateTime? periodEnd,  Map<String, dynamic> data,  StatementStatus status,  String? submittedByUid,  DateTime? submittedAt,  String? reviewedByUid,  DateTime? reviewedAt,  String? reviewNotes,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatementModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.statementType,_that.period,_that.periodStart,_that.periodEnd,_that.data,_that.status,_that.submittedByUid,_that.submittedAt,_that.reviewedByUid,_that.reviewedAt,_that.reviewNotes,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String statementType,  String period,  DateTime periodStart,  DateTime? periodEnd,  Map<String, dynamic> data,  StatementStatus status,  String? submittedByUid,  DateTime? submittedAt,  String? reviewedByUid,  DateTime? reviewedAt,  String? reviewNotes,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _StatementModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.statementType,_that.period,_that.periodStart,_that.periodEnd,_that.data,_that.status,_that.submittedByUid,_that.submittedAt,_that.reviewedByUid,_that.reviewedAt,_that.reviewNotes,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String statementType,  String period,  DateTime periodStart,  DateTime? periodEnd,  Map<String, dynamic> data,  StatementStatus status,  String? submittedByUid,  DateTime? submittedAt,  String? reviewedByUid,  DateTime? reviewedAt,  String? reviewNotes,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _StatementModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.statementType,_that.period,_that.periodStart,_that.periodEnd,_that.data,_that.status,_that.submittedByUid,_that.submittedAt,_that.reviewedByUid,_that.reviewedAt,_that.reviewNotes,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatementModel extends StatementModel {
  const _StatementModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.statementType, required this.period, required this.periodStart, this.periodEnd,  Map<String, dynamic> data = const <String, dynamic>{}, this.status = StatementStatus.draft, this.submittedByUid, this.submittedAt, this.reviewedByUid, this.reviewedAt, this.reviewNotes,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _data = data,_evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _StatementModel.fromJson(Map<String, dynamic> json) => _$StatementModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String statementType;
/// Reporting period label, e.g. "2026-01" or "2025-26 Q3".
@override final  String period;
@override final  DateTime periodStart;
@override final  DateTime? periodEnd;
/// Statement formats vary by return type, so the payload is stored as a
/// flexible key/value map rather than a fixed set of columns.
 final  Map<String, dynamic> _data;
/// Statement formats vary by return type, so the payload is stored as a
/// flexible key/value map rather than a fixed set of columns.
@override@JsonKey() Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override@JsonKey() final  StatementStatus status;
@override final  String? submittedByUid;
@override final  DateTime? submittedAt;
@override final  String? reviewedByUid;
@override final  DateTime? reviewedAt;
@override final  String? reviewNotes;
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

/// Create a copy of StatementModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatementModelCopyWith<_StatementModel> get copyWith => __$StatementModelCopyWithImpl<_StatementModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatementModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatementModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.statementType, statementType) || other.statementType == statementType)&&(identical(other.period, period) || other.period == period)&&(identical(other.periodStart, periodStart) || other.periodStart == periodStart)&&(identical(other.periodEnd, periodEnd) || other.periodEnd == periodEnd)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.status, status) || other.status == status)&&(identical(other.submittedByUid, submittedByUid) || other.submittedByUid == submittedByUid)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.reviewedByUid, reviewedByUid) || other.reviewedByUid == reviewedByUid)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.reviewNotes, reviewNotes) || other.reviewNotes == reviewNotes)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,statementType,period,periodStart,periodEnd,const DeepCollectionEquality().hash(_data),status,submittedByUid,submittedAt,reviewedByUid,reviewedAt,reviewNotes,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'StatementModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, statementType: $statementType, period: $period, periodStart: $periodStart, periodEnd: $periodEnd, data: $data, status: $status, submittedByUid: $submittedByUid, submittedAt: $submittedAt, reviewedByUid: $reviewedByUid, reviewedAt: $reviewedAt, reviewNotes: $reviewNotes, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$StatementModelCopyWith<$Res> implements $StatementModelCopyWith<$Res> {
  factory _$StatementModelCopyWith(_StatementModel value, $Res Function(_StatementModel) _then) = __$StatementModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String statementType, String period, DateTime periodStart, DateTime? periodEnd, Map<String, dynamic> data, StatementStatus status, String? submittedByUid, DateTime? submittedAt, String? reviewedByUid, DateTime? reviewedAt, String? reviewNotes, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$StatementModelCopyWithImpl<$Res>
    implements _$StatementModelCopyWith<$Res> {
  __$StatementModelCopyWithImpl(this._self, this._then);

  final _StatementModel _self;
  final $Res Function(_StatementModel) _then;

/// Create a copy of StatementModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? statementType = null,Object? period = null,Object? periodStart = null,Object? periodEnd = freezed,Object? data = null,Object? status = null,Object? submittedByUid = freezed,Object? submittedAt = freezed,Object? reviewedByUid = freezed,Object? reviewedAt = freezed,Object? reviewNotes = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_StatementModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,statementType: null == statementType ? _self.statementType : statementType // ignore: cast_nullable_to_non_nullable
as String,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,periodStart: null == periodStart ? _self.periodStart : periodStart // ignore: cast_nullable_to_non_nullable
as DateTime,periodEnd: freezed == periodEnd ? _self.periodEnd : periodEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatementStatus,submittedByUid: freezed == submittedByUid ? _self.submittedByUid : submittedByUid // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewedByUid: freezed == reviewedByUid ? _self.reviewedByUid : reviewedByUid // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewNotes: freezed == reviewNotes ? _self.reviewNotes : reviewNotes // ignore: cast_nullable_to_non_nullable
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
