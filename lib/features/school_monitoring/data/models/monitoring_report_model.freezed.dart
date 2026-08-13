// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monitoring_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonitoringReportModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get visitDate; String get monitoredByUid; String get monitoredByName; List<CriterionScoreModel> get criteriaScores; double get totalWeightedScore; String get grade; String? get remarks; String? get remarksUrdu; List<String> get evidencePhotoUrls; MonitoringReportStatus get status; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of MonitoringReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonitoringReportModelCopyWith<MonitoringReportModel> get copyWith => _$MonitoringReportModelCopyWithImpl<MonitoringReportModel>(this as MonitoringReportModel, _$identity);

  /// Serializes this MonitoringReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonitoringReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.monitoredByUid, monitoredByUid) || other.monitoredByUid == monitoredByUid)&&(identical(other.monitoredByName, monitoredByName) || other.monitoredByName == monitoredByName)&&const DeepCollectionEquality().equals(other.criteriaScores, criteriaScores)&&(identical(other.totalWeightedScore, totalWeightedScore) || other.totalWeightedScore == totalWeightedScore)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.remarksUrdu, remarksUrdu) || other.remarksUrdu == remarksUrdu)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.status, status) || other.status == status)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,visitDate,monitoredByUid,monitoredByName,const DeepCollectionEquality().hash(criteriaScores),totalWeightedScore,grade,remarks,remarksUrdu,const DeepCollectionEquality().hash(evidencePhotoUrls),status,isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'MonitoringReportModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, visitDate: $visitDate, monitoredByUid: $monitoredByUid, monitoredByName: $monitoredByName, criteriaScores: $criteriaScores, totalWeightedScore: $totalWeightedScore, grade: $grade, remarks: $remarks, remarksUrdu: $remarksUrdu, evidencePhotoUrls: $evidencePhotoUrls, status: $status, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $MonitoringReportModelCopyWith<$Res>  {
  factory $MonitoringReportModelCopyWith(MonitoringReportModel value, $Res Function(MonitoringReportModel) _then) = _$MonitoringReportModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime visitDate, String monitoredByUid, String monitoredByName, List<CriterionScoreModel> criteriaScores, double totalWeightedScore, String grade, String? remarks, String? remarksUrdu, List<String> evidencePhotoUrls, MonitoringReportStatus status, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$MonitoringReportModelCopyWithImpl<$Res>
    implements $MonitoringReportModelCopyWith<$Res> {
  _$MonitoringReportModelCopyWithImpl(this._self, this._then);

  final MonitoringReportModel _self;
  final $Res Function(MonitoringReportModel) _then;

/// Create a copy of MonitoringReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? visitDate = null,Object? monitoredByUid = null,Object? monitoredByName = null,Object? criteriaScores = null,Object? totalWeightedScore = null,Object? grade = null,Object? remarks = freezed,Object? remarksUrdu = freezed,Object? evidencePhotoUrls = null,Object? status = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(MonitoringReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime,monitoredByUid: null == monitoredByUid ? _self.monitoredByUid : monitoredByUid // ignore: cast_nullable_to_non_nullable
as String,monitoredByName: null == monitoredByName ? _self.monitoredByName : monitoredByName // ignore: cast_nullable_to_non_nullable
as String,criteriaScores: null == criteriaScores ? _self.criteriaScores : criteriaScores // ignore: cast_nullable_to_non_nullable
as List<CriterionScoreModel>,totalWeightedScore: null == totalWeightedScore ? _self.totalWeightedScore : totalWeightedScore // ignore: cast_nullable_to_non_nullable
as double,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,remarksUrdu: freezed == remarksUrdu ? _self.remarksUrdu : remarksUrdu // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MonitoringReportStatus,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MonitoringReportModel].
extension MonitoringReportModelPatterns on MonitoringReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonitoringReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonitoringReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonitoringReportModel value)  $default,){
final _that = this;
switch (_that) {
case _MonitoringReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonitoringReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _MonitoringReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime visitDate,  String monitoredByUid,  String monitoredByName,  List<CriterionScoreModel> criteriaScores,  double totalWeightedScore,  String grade,  String? remarks,  String? remarksUrdu,  List<String> evidencePhotoUrls,  MonitoringReportStatus status,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonitoringReportModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.visitDate,_that.monitoredByUid,_that.monitoredByName,_that.criteriaScores,_that.totalWeightedScore,_that.grade,_that.remarks,_that.remarksUrdu,_that.evidencePhotoUrls,_that.status,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime visitDate,  String monitoredByUid,  String monitoredByName,  List<CriterionScoreModel> criteriaScores,  double totalWeightedScore,  String grade,  String? remarks,  String? remarksUrdu,  List<String> evidencePhotoUrls,  MonitoringReportStatus status,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _MonitoringReportModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.visitDate,_that.monitoredByUid,_that.monitoredByName,_that.criteriaScores,_that.totalWeightedScore,_that.grade,_that.remarks,_that.remarksUrdu,_that.evidencePhotoUrls,_that.status,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime visitDate,  String monitoredByUid,  String monitoredByName,  List<CriterionScoreModel> criteriaScores,  double totalWeightedScore,  String grade,  String? remarks,  String? remarksUrdu,  List<String> evidencePhotoUrls,  MonitoringReportStatus status,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _MonitoringReportModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.visitDate,_that.monitoredByUid,_that.monitoredByName,_that.criteriaScores,_that.totalWeightedScore,_that.grade,_that.remarks,_that.remarksUrdu,_that.evidencePhotoUrls,_that.status,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonitoringReportModel extends MonitoringReportModel {
  const _MonitoringReportModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.visitDate, required this.monitoredByUid, required this.monitoredByName, required  List<CriterionScoreModel> criteriaScores, this.totalWeightedScore = 0.0, this.grade = 'critical', this.remarks, this.remarksUrdu,  List<String> evidencePhotoUrls = const <String>[], this.status = MonitoringReportStatus.draft, this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _criteriaScores = criteriaScores,_evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _MonitoringReportModel.fromJson(Map<String, dynamic> json) => _$MonitoringReportModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime visitDate;
@override final  String monitoredByUid;
@override final  String monitoredByName;
 final  List<CriterionScoreModel> _criteriaScores;
@override List<CriterionScoreModel> get criteriaScores {
  if (_criteriaScores is EqualUnmodifiableListView) return _criteriaScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_criteriaScores);
}

@override@JsonKey() final  double totalWeightedScore;
@override@JsonKey() final  String grade;
@override final  String? remarks;
@override final  String? remarksUrdu;
 final  List<String> _evidencePhotoUrls;
@override@JsonKey() List<String> get evidencePhotoUrls {
  if (_evidencePhotoUrls is EqualUnmodifiableListView) return _evidencePhotoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidencePhotoUrls);
}

@override@JsonKey() final  MonitoringReportStatus status;
@override@JsonKey() final  bool isSynced;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of MonitoringReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonitoringReportModelCopyWith<_MonitoringReportModel> get copyWith => __$MonitoringReportModelCopyWithImpl<_MonitoringReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonitoringReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonitoringReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.monitoredByUid, monitoredByUid) || other.monitoredByUid == monitoredByUid)&&(identical(other.monitoredByName, monitoredByName) || other.monitoredByName == monitoredByName)&&const DeepCollectionEquality().equals(other._criteriaScores, _criteriaScores)&&(identical(other.totalWeightedScore, totalWeightedScore) || other.totalWeightedScore == totalWeightedScore)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.remarksUrdu, remarksUrdu) || other.remarksUrdu == remarksUrdu)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.status, status) || other.status == status)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,visitDate,monitoredByUid,monitoredByName,const DeepCollectionEquality().hash(_criteriaScores),totalWeightedScore,grade,remarks,remarksUrdu,const DeepCollectionEquality().hash(_evidencePhotoUrls),status,isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'MonitoringReportModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, visitDate: $visitDate, monitoredByUid: $monitoredByUid, monitoredByName: $monitoredByName, criteriaScores: $criteriaScores, totalWeightedScore: $totalWeightedScore, grade: $grade, remarks: $remarks, remarksUrdu: $remarksUrdu, evidencePhotoUrls: $evidencePhotoUrls, status: $status, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$MonitoringReportModelCopyWith<$Res> implements $MonitoringReportModelCopyWith<$Res> {
  factory _$MonitoringReportModelCopyWith(_MonitoringReportModel value, $Res Function(_MonitoringReportModel) _then) = __$MonitoringReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime visitDate, String monitoredByUid, String monitoredByName, List<CriterionScoreModel> criteriaScores, double totalWeightedScore, String grade, String? remarks, String? remarksUrdu, List<String> evidencePhotoUrls, MonitoringReportStatus status, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$MonitoringReportModelCopyWithImpl<$Res>
    implements _$MonitoringReportModelCopyWith<$Res> {
  __$MonitoringReportModelCopyWithImpl(this._self, this._then);

  final _MonitoringReportModel _self;
  final $Res Function(_MonitoringReportModel) _then;

/// Create a copy of MonitoringReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? visitDate = null,Object? monitoredByUid = null,Object? monitoredByName = null,Object? criteriaScores = null,Object? totalWeightedScore = null,Object? grade = null,Object? remarks = freezed,Object? remarksUrdu = freezed,Object? evidencePhotoUrls = null,Object? status = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_MonitoringReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,visitDate: null == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime,monitoredByUid: null == monitoredByUid ? _self.monitoredByUid : monitoredByUid // ignore: cast_nullable_to_non_nullable
as String,monitoredByName: null == monitoredByName ? _self.monitoredByName : monitoredByName // ignore: cast_nullable_to_non_nullable
as String,criteriaScores: null == criteriaScores ? _self._criteriaScores : criteriaScores // ignore: cast_nullable_to_non_nullable
as List<CriterionScoreModel>,totalWeightedScore: null == totalWeightedScore ? _self.totalWeightedScore : totalWeightedScore // ignore: cast_nullable_to_non_nullable
as double,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,remarksUrdu: freezed == remarksUrdu ? _self.remarksUrdu : remarksUrdu // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MonitoringReportStatus,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
