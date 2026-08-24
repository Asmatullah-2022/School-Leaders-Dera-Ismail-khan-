// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ptc_priority_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PtcPriorityModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get meetingDate; String get priorityTitle; String? get priorityTitleUrdu;/// 1-based ordering within a school's meeting; maintained by the
/// drag-to-reorder list (see `reassignRanks`).
 int get rank; PtcCategory get category; PtcPriorityLevel get priorityLevel; String? get proposedAction; double get estimatedCost; double get availableFunds; String? get decision; String? get responsiblePersonName; DateTime? get targetDate; PtcStatus get status; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of PtcPriorityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PtcPriorityModelCopyWith<PtcPriorityModel> get copyWith => _$PtcPriorityModelCopyWithImpl<PtcPriorityModel>(this as PtcPriorityModel, _$identity);

  /// Serializes this PtcPriorityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PtcPriorityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.meetingDate, meetingDate) || other.meetingDate == meetingDate)&&(identical(other.priorityTitle, priorityTitle) || other.priorityTitle == priorityTitle)&&(identical(other.priorityTitleUrdu, priorityTitleUrdu) || other.priorityTitleUrdu == priorityTitleUrdu)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.category, category) || other.category == category)&&(identical(other.priorityLevel, priorityLevel) || other.priorityLevel == priorityLevel)&&(identical(other.proposedAction, proposedAction) || other.proposedAction == proposedAction)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.availableFunds, availableFunds) || other.availableFunds == availableFunds)&&(identical(other.decision, decision) || other.decision == decision)&&(identical(other.responsiblePersonName, responsiblePersonName) || other.responsiblePersonName == responsiblePersonName)&&(identical(other.targetDate, targetDate) || other.targetDate == targetDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,meetingDate,priorityTitle,priorityTitleUrdu,rank,category,priorityLevel,proposedAction,estimatedCost,availableFunds,decision,responsiblePersonName,targetDate,status,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'PtcPriorityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, meetingDate: $meetingDate, priorityTitle: $priorityTitle, priorityTitleUrdu: $priorityTitleUrdu, rank: $rank, category: $category, priorityLevel: $priorityLevel, proposedAction: $proposedAction, estimatedCost: $estimatedCost, availableFunds: $availableFunds, decision: $decision, responsiblePersonName: $responsiblePersonName, targetDate: $targetDate, status: $status, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $PtcPriorityModelCopyWith<$Res>  {
  factory $PtcPriorityModelCopyWith(PtcPriorityModel value, $Res Function(PtcPriorityModel) _then) = _$PtcPriorityModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime meetingDate, String priorityTitle, String? priorityTitleUrdu, int rank, PtcCategory category, PtcPriorityLevel priorityLevel, String? proposedAction, double estimatedCost, double availableFunds, String? decision, String? responsiblePersonName, DateTime? targetDate, PtcStatus status, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$PtcPriorityModelCopyWithImpl<$Res>
    implements $PtcPriorityModelCopyWith<$Res> {
  _$PtcPriorityModelCopyWithImpl(this._self, this._then);

  final PtcPriorityModel _self;
  final $Res Function(PtcPriorityModel) _then;

/// Create a copy of PtcPriorityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? meetingDate = null,Object? priorityTitle = null,Object? priorityTitleUrdu = freezed,Object? rank = null,Object? category = null,Object? priorityLevel = null,Object? proposedAction = freezed,Object? estimatedCost = null,Object? availableFunds = null,Object? decision = freezed,Object? responsiblePersonName = freezed,Object? targetDate = freezed,Object? status = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(PtcPriorityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,meetingDate: null == meetingDate ? _self.meetingDate : meetingDate // ignore: cast_nullable_to_non_nullable
as DateTime,priorityTitle: null == priorityTitle ? _self.priorityTitle : priorityTitle // ignore: cast_nullable_to_non_nullable
as String,priorityTitleUrdu: freezed == priorityTitleUrdu ? _self.priorityTitleUrdu : priorityTitleUrdu // ignore: cast_nullable_to_non_nullable
as String?,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PtcCategory,priorityLevel: null == priorityLevel ? _self.priorityLevel : priorityLevel // ignore: cast_nullable_to_non_nullable
as PtcPriorityLevel,proposedAction: freezed == proposedAction ? _self.proposedAction : proposedAction // ignore: cast_nullable_to_non_nullable
as String?,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as double,availableFunds: null == availableFunds ? _self.availableFunds : availableFunds // ignore: cast_nullable_to_non_nullable
as double,decision: freezed == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as String?,responsiblePersonName: freezed == responsiblePersonName ? _self.responsiblePersonName : responsiblePersonName // ignore: cast_nullable_to_non_nullable
as String?,targetDate: freezed == targetDate ? _self.targetDate : targetDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PtcStatus,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PtcPriorityModel].
extension PtcPriorityModelPatterns on PtcPriorityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PtcPriorityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PtcPriorityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PtcPriorityModel value)  $default,){
final _that = this;
switch (_that) {
case _PtcPriorityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PtcPriorityModel value)?  $default,){
final _that = this;
switch (_that) {
case _PtcPriorityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime meetingDate,  String priorityTitle,  String? priorityTitleUrdu,  int rank,  PtcCategory category,  PtcPriorityLevel priorityLevel,  String? proposedAction,  double estimatedCost,  double availableFunds,  String? decision,  String? responsiblePersonName,  DateTime? targetDate,  PtcStatus status,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PtcPriorityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.meetingDate,_that.priorityTitle,_that.priorityTitleUrdu,_that.rank,_that.category,_that.priorityLevel,_that.proposedAction,_that.estimatedCost,_that.availableFunds,_that.decision,_that.responsiblePersonName,_that.targetDate,_that.status,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime meetingDate,  String priorityTitle,  String? priorityTitleUrdu,  int rank,  PtcCategory category,  PtcPriorityLevel priorityLevel,  String? proposedAction,  double estimatedCost,  double availableFunds,  String? decision,  String? responsiblePersonName,  DateTime? targetDate,  PtcStatus status,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _PtcPriorityModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.meetingDate,_that.priorityTitle,_that.priorityTitleUrdu,_that.rank,_that.category,_that.priorityLevel,_that.proposedAction,_that.estimatedCost,_that.availableFunds,_that.decision,_that.responsiblePersonName,_that.targetDate,_that.status,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime meetingDate,  String priorityTitle,  String? priorityTitleUrdu,  int rank,  PtcCategory category,  PtcPriorityLevel priorityLevel,  String? proposedAction,  double estimatedCost,  double availableFunds,  String? decision,  String? responsiblePersonName,  DateTime? targetDate,  PtcStatus status,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _PtcPriorityModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.meetingDate,_that.priorityTitle,_that.priorityTitleUrdu,_that.rank,_that.category,_that.priorityLevel,_that.proposedAction,_that.estimatedCost,_that.availableFunds,_that.decision,_that.responsiblePersonName,_that.targetDate,_that.status,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PtcPriorityModel extends PtcPriorityModel {
  const _PtcPriorityModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.meetingDate, required this.priorityTitle, this.priorityTitleUrdu, this.rank = 1, required this.category, this.priorityLevel = PtcPriorityLevel.medium, this.proposedAction, this.estimatedCost = 0, this.availableFunds = 0, this.decision, this.responsiblePersonName, this.targetDate, this.status = PtcStatus.proposed,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _PtcPriorityModel.fromJson(Map<String, dynamic> json) => _$PtcPriorityModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime meetingDate;
@override final  String priorityTitle;
@override final  String? priorityTitleUrdu;
/// 1-based ordering within a school's meeting; maintained by the
/// drag-to-reorder list (see `reassignRanks`).
@override@JsonKey() final  int rank;
@override final  PtcCategory category;
@override@JsonKey() final  PtcPriorityLevel priorityLevel;
@override final  String? proposedAction;
@override@JsonKey() final  double estimatedCost;
@override@JsonKey() final  double availableFunds;
@override final  String? decision;
@override final  String? responsiblePersonName;
@override final  DateTime? targetDate;
@override@JsonKey() final  PtcStatus status;
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

/// Create a copy of PtcPriorityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PtcPriorityModelCopyWith<_PtcPriorityModel> get copyWith => __$PtcPriorityModelCopyWithImpl<_PtcPriorityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PtcPriorityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PtcPriorityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.meetingDate, meetingDate) || other.meetingDate == meetingDate)&&(identical(other.priorityTitle, priorityTitle) || other.priorityTitle == priorityTitle)&&(identical(other.priorityTitleUrdu, priorityTitleUrdu) || other.priorityTitleUrdu == priorityTitleUrdu)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.category, category) || other.category == category)&&(identical(other.priorityLevel, priorityLevel) || other.priorityLevel == priorityLevel)&&(identical(other.proposedAction, proposedAction) || other.proposedAction == proposedAction)&&(identical(other.estimatedCost, estimatedCost) || other.estimatedCost == estimatedCost)&&(identical(other.availableFunds, availableFunds) || other.availableFunds == availableFunds)&&(identical(other.decision, decision) || other.decision == decision)&&(identical(other.responsiblePersonName, responsiblePersonName) || other.responsiblePersonName == responsiblePersonName)&&(identical(other.targetDate, targetDate) || other.targetDate == targetDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,meetingDate,priorityTitle,priorityTitleUrdu,rank,category,priorityLevel,proposedAction,estimatedCost,availableFunds,decision,responsiblePersonName,targetDate,status,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'PtcPriorityModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, meetingDate: $meetingDate, priorityTitle: $priorityTitle, priorityTitleUrdu: $priorityTitleUrdu, rank: $rank, category: $category, priorityLevel: $priorityLevel, proposedAction: $proposedAction, estimatedCost: $estimatedCost, availableFunds: $availableFunds, decision: $decision, responsiblePersonName: $responsiblePersonName, targetDate: $targetDate, status: $status, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$PtcPriorityModelCopyWith<$Res> implements $PtcPriorityModelCopyWith<$Res> {
  factory _$PtcPriorityModelCopyWith(_PtcPriorityModel value, $Res Function(_PtcPriorityModel) _then) = __$PtcPriorityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime meetingDate, String priorityTitle, String? priorityTitleUrdu, int rank, PtcCategory category, PtcPriorityLevel priorityLevel, String? proposedAction, double estimatedCost, double availableFunds, String? decision, String? responsiblePersonName, DateTime? targetDate, PtcStatus status, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$PtcPriorityModelCopyWithImpl<$Res>
    implements _$PtcPriorityModelCopyWith<$Res> {
  __$PtcPriorityModelCopyWithImpl(this._self, this._then);

  final _PtcPriorityModel _self;
  final $Res Function(_PtcPriorityModel) _then;

/// Create a copy of PtcPriorityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? meetingDate = null,Object? priorityTitle = null,Object? priorityTitleUrdu = freezed,Object? rank = null,Object? category = null,Object? priorityLevel = null,Object? proposedAction = freezed,Object? estimatedCost = null,Object? availableFunds = null,Object? decision = freezed,Object? responsiblePersonName = freezed,Object? targetDate = freezed,Object? status = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_PtcPriorityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,meetingDate: null == meetingDate ? _self.meetingDate : meetingDate // ignore: cast_nullable_to_non_nullable
as DateTime,priorityTitle: null == priorityTitle ? _self.priorityTitle : priorityTitle // ignore: cast_nullable_to_non_nullable
as String,priorityTitleUrdu: freezed == priorityTitleUrdu ? _self.priorityTitleUrdu : priorityTitleUrdu // ignore: cast_nullable_to_non_nullable
as String?,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PtcCategory,priorityLevel: null == priorityLevel ? _self.priorityLevel : priorityLevel // ignore: cast_nullable_to_non_nullable
as PtcPriorityLevel,proposedAction: freezed == proposedAction ? _self.proposedAction : proposedAction // ignore: cast_nullable_to_non_nullable
as String?,estimatedCost: null == estimatedCost ? _self.estimatedCost : estimatedCost // ignore: cast_nullable_to_non_nullable
as double,availableFunds: null == availableFunds ? _self.availableFunds : availableFunds // ignore: cast_nullable_to_non_nullable
as double,decision: freezed == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as String?,responsiblePersonName: freezed == responsiblePersonName ? _self.responsiblePersonName : responsiblePersonName // ignore: cast_nullable_to_non_nullable
as String?,targetDate: freezed == targetDate ? _self.targetDate : targetDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PtcStatus,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
