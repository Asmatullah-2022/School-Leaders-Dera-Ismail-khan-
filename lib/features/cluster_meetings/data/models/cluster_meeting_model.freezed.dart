// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster_meeting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClusterMeetingModel {

 String get id;/// Cluster meetings are scoped at cluster level; [schoolId] stays null so
/// the shared ScopeFilter resolves them for everyone in the cluster.
 String? get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; DateTime get meetingDate; String? get meetingTime; String? get venue; String? get chairperson; int get participantsCount; List<String> get participatingSchoolIds; String? get agenda; String? get agendaUrdu; String? get decisions; String? get minutes; MeetingStatus get status; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of ClusterMeetingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClusterMeetingModelCopyWith<ClusterMeetingModel> get copyWith => _$ClusterMeetingModelCopyWithImpl<ClusterMeetingModel>(this as ClusterMeetingModel, _$identity);

  /// Serializes this ClusterMeetingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClusterMeetingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.meetingDate, meetingDate) || other.meetingDate == meetingDate)&&(identical(other.meetingTime, meetingTime) || other.meetingTime == meetingTime)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.chairperson, chairperson) || other.chairperson == chairperson)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&const DeepCollectionEquality().equals(other.participatingSchoolIds, participatingSchoolIds)&&(identical(other.agenda, agenda) || other.agenda == agenda)&&(identical(other.agendaUrdu, agendaUrdu) || other.agendaUrdu == agendaUrdu)&&(identical(other.decisions, decisions) || other.decisions == decisions)&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,meetingDate,meetingTime,venue,chairperson,participantsCount,const DeepCollectionEquality().hash(participatingSchoolIds),agenda,agendaUrdu,decisions,minutes,status,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'ClusterMeetingModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, meetingDate: $meetingDate, meetingTime: $meetingTime, venue: $venue, chairperson: $chairperson, participantsCount: $participantsCount, participatingSchoolIds: $participatingSchoolIds, agenda: $agenda, agendaUrdu: $agendaUrdu, decisions: $decisions, minutes: $minutes, status: $status, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $ClusterMeetingModelCopyWith<$Res>  {
  factory $ClusterMeetingModelCopyWith(ClusterMeetingModel value, $Res Function(ClusterMeetingModel) _then) = _$ClusterMeetingModelCopyWithImpl;
@useResult
$Res call({
 String id, String? schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime meetingDate, String? meetingTime, String? venue, String? chairperson, int participantsCount, List<String> participatingSchoolIds, String? agenda, String? agendaUrdu, String? decisions, String? minutes, MeetingStatus status, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$ClusterMeetingModelCopyWithImpl<$Res>
    implements $ClusterMeetingModelCopyWith<$Res> {
  _$ClusterMeetingModelCopyWithImpl(this._self, this._then);

  final ClusterMeetingModel _self;
  final $Res Function(ClusterMeetingModel) _then;

/// Create a copy of ClusterMeetingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = freezed,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? meetingDate = null,Object? meetingTime = freezed,Object? venue = freezed,Object? chairperson = freezed,Object? participantsCount = null,Object? participatingSchoolIds = null,Object? agenda = freezed,Object? agendaUrdu = freezed,Object? decisions = freezed,Object? minutes = freezed,Object? status = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(ClusterMeetingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,meetingDate: null == meetingDate ? _self.meetingDate : meetingDate // ignore: cast_nullable_to_non_nullable
as DateTime,meetingTime: freezed == meetingTime ? _self.meetingTime : meetingTime // ignore: cast_nullable_to_non_nullable
as String?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,chairperson: freezed == chairperson ? _self.chairperson : chairperson // ignore: cast_nullable_to_non_nullable
as String?,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,participatingSchoolIds: null == participatingSchoolIds ? _self.participatingSchoolIds : participatingSchoolIds // ignore: cast_nullable_to_non_nullable
as List<String>,agenda: freezed == agenda ? _self.agenda : agenda // ignore: cast_nullable_to_non_nullable
as String?,agendaUrdu: freezed == agendaUrdu ? _self.agendaUrdu : agendaUrdu // ignore: cast_nullable_to_non_nullable
as String?,decisions: freezed == decisions ? _self.decisions : decisions // ignore: cast_nullable_to_non_nullable
as String?,minutes: freezed == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeetingStatus,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClusterMeetingModel].
extension ClusterMeetingModelPatterns on ClusterMeetingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClusterMeetingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClusterMeetingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClusterMeetingModel value)  $default,){
final _that = this;
switch (_that) {
case _ClusterMeetingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClusterMeetingModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClusterMeetingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime meetingDate,  String? meetingTime,  String? venue,  String? chairperson,  int participantsCount,  List<String> participatingSchoolIds,  String? agenda,  String? agendaUrdu,  String? decisions,  String? minutes,  MeetingStatus status,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClusterMeetingModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.meetingDate,_that.meetingTime,_that.venue,_that.chairperson,_that.participantsCount,_that.participatingSchoolIds,_that.agenda,_that.agendaUrdu,_that.decisions,_that.minutes,_that.status,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime meetingDate,  String? meetingTime,  String? venue,  String? chairperson,  int participantsCount,  List<String> participatingSchoolIds,  String? agenda,  String? agendaUrdu,  String? decisions,  String? minutes,  MeetingStatus status,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _ClusterMeetingModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.meetingDate,_that.meetingTime,_that.venue,_that.chairperson,_that.participantsCount,_that.participatingSchoolIds,_that.agenda,_that.agendaUrdu,_that.decisions,_that.minutes,_that.status,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  DateTime meetingDate,  String? meetingTime,  String? venue,  String? chairperson,  int participantsCount,  List<String> participatingSchoolIds,  String? agenda,  String? agendaUrdu,  String? decisions,  String? minutes,  MeetingStatus status,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _ClusterMeetingModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.meetingDate,_that.meetingTime,_that.venue,_that.chairperson,_that.participantsCount,_that.participatingSchoolIds,_that.agenda,_that.agendaUrdu,_that.decisions,_that.minutes,_that.status,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClusterMeetingModel extends ClusterMeetingModel {
  const _ClusterMeetingModel({required this.id, this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.meetingDate, this.meetingTime, this.venue, this.chairperson, this.participantsCount = 0,  List<String> participatingSchoolIds = const <String>[], this.agenda, this.agendaUrdu, this.decisions, this.minutes, this.status = MeetingStatus.pending,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _participatingSchoolIds = participatingSchoolIds,_evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _ClusterMeetingModel.fromJson(Map<String, dynamic> json) => _$ClusterMeetingModelFromJson(json);

@override final  String id;
/// Cluster meetings are scoped at cluster level; [schoolId] stays null so
/// the shared ScopeFilter resolves them for everyone in the cluster.
@override final  String? schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  DateTime meetingDate;
@override final  String? meetingTime;
@override final  String? venue;
@override final  String? chairperson;
@override@JsonKey() final  int participantsCount;
 final  List<String> _participatingSchoolIds;
@override@JsonKey() List<String> get participatingSchoolIds {
  if (_participatingSchoolIds is EqualUnmodifiableListView) return _participatingSchoolIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participatingSchoolIds);
}

@override final  String? agenda;
@override final  String? agendaUrdu;
@override final  String? decisions;
@override final  String? minutes;
@override@JsonKey() final  MeetingStatus status;
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

/// Create a copy of ClusterMeetingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClusterMeetingModelCopyWith<_ClusterMeetingModel> get copyWith => __$ClusterMeetingModelCopyWithImpl<_ClusterMeetingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClusterMeetingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClusterMeetingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.meetingDate, meetingDate) || other.meetingDate == meetingDate)&&(identical(other.meetingTime, meetingTime) || other.meetingTime == meetingTime)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.chairperson, chairperson) || other.chairperson == chairperson)&&(identical(other.participantsCount, participantsCount) || other.participantsCount == participantsCount)&&const DeepCollectionEquality().equals(other._participatingSchoolIds, _participatingSchoolIds)&&(identical(other.agenda, agenda) || other.agenda == agenda)&&(identical(other.agendaUrdu, agendaUrdu) || other.agendaUrdu == agendaUrdu)&&(identical(other.decisions, decisions) || other.decisions == decisions)&&(identical(other.minutes, minutes) || other.minutes == minutes)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,meetingDate,meetingTime,venue,chairperson,participantsCount,const DeepCollectionEquality().hash(_participatingSchoolIds),agenda,agendaUrdu,decisions,minutes,status,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'ClusterMeetingModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, meetingDate: $meetingDate, meetingTime: $meetingTime, venue: $venue, chairperson: $chairperson, participantsCount: $participantsCount, participatingSchoolIds: $participatingSchoolIds, agenda: $agenda, agendaUrdu: $agendaUrdu, decisions: $decisions, minutes: $minutes, status: $status, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$ClusterMeetingModelCopyWith<$Res> implements $ClusterMeetingModelCopyWith<$Res> {
  factory _$ClusterMeetingModelCopyWith(_ClusterMeetingModel value, $Res Function(_ClusterMeetingModel) _then) = __$ClusterMeetingModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? schoolId, String clusterId, String circleId, String subDivisionId, String districtId, DateTime meetingDate, String? meetingTime, String? venue, String? chairperson, int participantsCount, List<String> participatingSchoolIds, String? agenda, String? agendaUrdu, String? decisions, String? minutes, MeetingStatus status, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$ClusterMeetingModelCopyWithImpl<$Res>
    implements _$ClusterMeetingModelCopyWith<$Res> {
  __$ClusterMeetingModelCopyWithImpl(this._self, this._then);

  final _ClusterMeetingModel _self;
  final $Res Function(_ClusterMeetingModel) _then;

/// Create a copy of ClusterMeetingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = freezed,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? meetingDate = null,Object? meetingTime = freezed,Object? venue = freezed,Object? chairperson = freezed,Object? participantsCount = null,Object? participatingSchoolIds = null,Object? agenda = freezed,Object? agendaUrdu = freezed,Object? decisions = freezed,Object? minutes = freezed,Object? status = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_ClusterMeetingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,meetingDate: null == meetingDate ? _self.meetingDate : meetingDate // ignore: cast_nullable_to_non_nullable
as DateTime,meetingTime: freezed == meetingTime ? _self.meetingTime : meetingTime // ignore: cast_nullable_to_non_nullable
as String?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,chairperson: freezed == chairperson ? _self.chairperson : chairperson // ignore: cast_nullable_to_non_nullable
as String?,participantsCount: null == participantsCount ? _self.participantsCount : participantsCount // ignore: cast_nullable_to_non_nullable
as int,participatingSchoolIds: null == participatingSchoolIds ? _self._participatingSchoolIds : participatingSchoolIds // ignore: cast_nullable_to_non_nullable
as List<String>,agenda: freezed == agenda ? _self.agenda : agenda // ignore: cast_nullable_to_non_nullable
as String?,agendaUrdu: freezed == agendaUrdu ? _self.agendaUrdu : agendaUrdu // ignore: cast_nullable_to_non_nullable
as String?,decisions: freezed == decisions ? _self.decisions : decisions // ignore: cast_nullable_to_non_nullable
as String?,minutes: freezed == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeetingStatus,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MeetingActionModel {

 String get id; String get meetingId; String get actionText; String? get actionTextUrdu; String? get responsiblePersonName; String? get assignedToUid; DateTime? get deadline; MeetingStatus get status; String? get completionNotes; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of MeetingActionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetingActionModelCopyWith<MeetingActionModel> get copyWith => _$MeetingActionModelCopyWithImpl<MeetingActionModel>(this as MeetingActionModel, _$identity);

  /// Serializes this MeetingActionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetingActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.meetingId, meetingId) || other.meetingId == meetingId)&&(identical(other.actionText, actionText) || other.actionText == actionText)&&(identical(other.actionTextUrdu, actionTextUrdu) || other.actionTextUrdu == actionTextUrdu)&&(identical(other.responsiblePersonName, responsiblePersonName) || other.responsiblePersonName == responsiblePersonName)&&(identical(other.assignedToUid, assignedToUid) || other.assignedToUid == assignedToUid)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.status, status) || other.status == status)&&(identical(other.completionNotes, completionNotes) || other.completionNotes == completionNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meetingId,actionText,actionTextUrdu,responsiblePersonName,assignedToUid,deadline,status,completionNotes,createdAt,updatedAt,createdBy);

@override
String toString() {
  return 'MeetingActionModel(id: $id, meetingId: $meetingId, actionText: $actionText, actionTextUrdu: $actionTextUrdu, responsiblePersonName: $responsiblePersonName, assignedToUid: $assignedToUid, deadline: $deadline, status: $status, completionNotes: $completionNotes, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $MeetingActionModelCopyWith<$Res>  {
  factory $MeetingActionModelCopyWith(MeetingActionModel value, $Res Function(MeetingActionModel) _then) = _$MeetingActionModelCopyWithImpl;
@useResult
$Res call({
 String id, String meetingId, String actionText, String? actionTextUrdu, String? responsiblePersonName, String? assignedToUid, DateTime? deadline, MeetingStatus status, String? completionNotes, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$MeetingActionModelCopyWithImpl<$Res>
    implements $MeetingActionModelCopyWith<$Res> {
  _$MeetingActionModelCopyWithImpl(this._self, this._then);

  final MeetingActionModel _self;
  final $Res Function(MeetingActionModel) _then;

/// Create a copy of MeetingActionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? meetingId = null,Object? actionText = null,Object? actionTextUrdu = freezed,Object? responsiblePersonName = freezed,Object? assignedToUid = freezed,Object? deadline = freezed,Object? status = null,Object? completionNotes = freezed,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(MeetingActionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meetingId: null == meetingId ? _self.meetingId : meetingId // ignore: cast_nullable_to_non_nullable
as String,actionText: null == actionText ? _self.actionText : actionText // ignore: cast_nullable_to_non_nullable
as String,actionTextUrdu: freezed == actionTextUrdu ? _self.actionTextUrdu : actionTextUrdu // ignore: cast_nullable_to_non_nullable
as String?,responsiblePersonName: freezed == responsiblePersonName ? _self.responsiblePersonName : responsiblePersonName // ignore: cast_nullable_to_non_nullable
as String?,assignedToUid: freezed == assignedToUid ? _self.assignedToUid : assignedToUid // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeetingStatus,completionNotes: freezed == completionNotes ? _self.completionNotes : completionNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MeetingActionModel].
extension MeetingActionModelPatterns on MeetingActionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeetingActionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeetingActionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeetingActionModel value)  $default,){
final _that = this;
switch (_that) {
case _MeetingActionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeetingActionModel value)?  $default,){
final _that = this;
switch (_that) {
case _MeetingActionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String meetingId,  String actionText,  String? actionTextUrdu,  String? responsiblePersonName,  String? assignedToUid,  DateTime? deadline,  MeetingStatus status,  String? completionNotes,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeetingActionModel() when $default != null:
return $default(_that.id,_that.meetingId,_that.actionText,_that.actionTextUrdu,_that.responsiblePersonName,_that.assignedToUid,_that.deadline,_that.status,_that.completionNotes,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String meetingId,  String actionText,  String? actionTextUrdu,  String? responsiblePersonName,  String? assignedToUid,  DateTime? deadline,  MeetingStatus status,  String? completionNotes,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _MeetingActionModel():
return $default(_that.id,_that.meetingId,_that.actionText,_that.actionTextUrdu,_that.responsiblePersonName,_that.assignedToUid,_that.deadline,_that.status,_that.completionNotes,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String meetingId,  String actionText,  String? actionTextUrdu,  String? responsiblePersonName,  String? assignedToUid,  DateTime? deadline,  MeetingStatus status,  String? completionNotes,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _MeetingActionModel() when $default != null:
return $default(_that.id,_that.meetingId,_that.actionText,_that.actionTextUrdu,_that.responsiblePersonName,_that.assignedToUid,_that.deadline,_that.status,_that.completionNotes,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeetingActionModel extends MeetingActionModel {
  const _MeetingActionModel({required this.id, required this.meetingId, required this.actionText, this.actionTextUrdu, this.responsiblePersonName, this.assignedToUid, this.deadline, this.status = MeetingStatus.pending, this.completionNotes, required this.createdAt, required this.updatedAt, required this.createdBy}): super._();
  factory _MeetingActionModel.fromJson(Map<String, dynamic> json) => _$MeetingActionModelFromJson(json);

@override final  String id;
@override final  String meetingId;
@override final  String actionText;
@override final  String? actionTextUrdu;
@override final  String? responsiblePersonName;
@override final  String? assignedToUid;
@override final  DateTime? deadline;
@override@JsonKey() final  MeetingStatus status;
@override final  String? completionNotes;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of MeetingActionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeetingActionModelCopyWith<_MeetingActionModel> get copyWith => __$MeetingActionModelCopyWithImpl<_MeetingActionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeetingActionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeetingActionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.meetingId, meetingId) || other.meetingId == meetingId)&&(identical(other.actionText, actionText) || other.actionText == actionText)&&(identical(other.actionTextUrdu, actionTextUrdu) || other.actionTextUrdu == actionTextUrdu)&&(identical(other.responsiblePersonName, responsiblePersonName) || other.responsiblePersonName == responsiblePersonName)&&(identical(other.assignedToUid, assignedToUid) || other.assignedToUid == assignedToUid)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.status, status) || other.status == status)&&(identical(other.completionNotes, completionNotes) || other.completionNotes == completionNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meetingId,actionText,actionTextUrdu,responsiblePersonName,assignedToUid,deadline,status,completionNotes,createdAt,updatedAt,createdBy);

@override
String toString() {
  return 'MeetingActionModel(id: $id, meetingId: $meetingId, actionText: $actionText, actionTextUrdu: $actionTextUrdu, responsiblePersonName: $responsiblePersonName, assignedToUid: $assignedToUid, deadline: $deadline, status: $status, completionNotes: $completionNotes, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$MeetingActionModelCopyWith<$Res> implements $MeetingActionModelCopyWith<$Res> {
  factory _$MeetingActionModelCopyWith(_MeetingActionModel value, $Res Function(_MeetingActionModel) _then) = __$MeetingActionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String meetingId, String actionText, String? actionTextUrdu, String? responsiblePersonName, String? assignedToUid, DateTime? deadline, MeetingStatus status, String? completionNotes, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$MeetingActionModelCopyWithImpl<$Res>
    implements _$MeetingActionModelCopyWith<$Res> {
  __$MeetingActionModelCopyWithImpl(this._self, this._then);

  final _MeetingActionModel _self;
  final $Res Function(_MeetingActionModel) _then;

/// Create a copy of MeetingActionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? meetingId = null,Object? actionText = null,Object? actionTextUrdu = freezed,Object? responsiblePersonName = freezed,Object? assignedToUid = freezed,Object? deadline = freezed,Object? status = null,Object? completionNotes = freezed,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_MeetingActionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meetingId: null == meetingId ? _self.meetingId : meetingId // ignore: cast_nullable_to_non_nullable
as String,actionText: null == actionText ? _self.actionText : actionText // ignore: cast_nullable_to_non_nullable
as String,actionTextUrdu: freezed == actionTextUrdu ? _self.actionTextUrdu : actionTextUrdu // ignore: cast_nullable_to_non_nullable
as String?,responsiblePersonName: freezed == responsiblePersonName ? _self.responsiblePersonName : responsiblePersonName // ignore: cast_nullable_to_non_nullable
as String?,assignedToUid: freezed == assignedToUid ? _self.assignedToUid : assignedToUid // ignore: cast_nullable_to_non_nullable
as String?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MeetingStatus,completionNotes: freezed == completionNotes ? _self.completionNotes : completionNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
