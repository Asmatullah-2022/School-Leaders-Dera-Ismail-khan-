// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmergencyReportModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; EmergencyType get emergencyType; EmergencySeverity get severity; String get description; String? get descriptionUrdu; DateTime get occurredAt; String? get immediateAction; String? get requiredSupport; String? get contactPersonName; String? get contactPhone; int? get casualties; EmergencyStatus get status; String? get resolutionNotes; DateTime? get resolvedAt; double? get latitude; double? get longitude; List<String> get evidencePhotoUrls; String get reportedByUid; String get reportedByName; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of EmergencyReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmergencyReportModelCopyWith<EmergencyReportModel> get copyWith => _$EmergencyReportModelCopyWithImpl<EmergencyReportModel>(this as EmergencyReportModel, _$identity);

  /// Serializes this EmergencyReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmergencyReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.emergencyType, emergencyType) || other.emergencyType == emergencyType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.immediateAction, immediateAction) || other.immediateAction == immediateAction)&&(identical(other.requiredSupport, requiredSupport) || other.requiredSupport == requiredSupport)&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.casualties, casualties) || other.casualties == casualties)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.reportedByUid, reportedByUid) || other.reportedByUid == reportedByUid)&&(identical(other.reportedByName, reportedByName) || other.reportedByName == reportedByName)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,emergencyType,severity,description,descriptionUrdu,occurredAt,immediateAction,requiredSupport,contactPersonName,contactPhone,casualties,status,resolutionNotes,resolvedAt,latitude,longitude,const DeepCollectionEquality().hash(evidencePhotoUrls),reportedByUid,reportedByName,isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'EmergencyReportModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, emergencyType: $emergencyType, severity: $severity, description: $description, descriptionUrdu: $descriptionUrdu, occurredAt: $occurredAt, immediateAction: $immediateAction, requiredSupport: $requiredSupport, contactPersonName: $contactPersonName, contactPhone: $contactPhone, casualties: $casualties, status: $status, resolutionNotes: $resolutionNotes, resolvedAt: $resolvedAt, latitude: $latitude, longitude: $longitude, evidencePhotoUrls: $evidencePhotoUrls, reportedByUid: $reportedByUid, reportedByName: $reportedByName, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $EmergencyReportModelCopyWith<$Res>  {
  factory $EmergencyReportModelCopyWith(EmergencyReportModel value, $Res Function(EmergencyReportModel) _then) = _$EmergencyReportModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, EmergencyType emergencyType, EmergencySeverity severity, String description, String? descriptionUrdu, DateTime occurredAt, String? immediateAction, String? requiredSupport, String? contactPersonName, String? contactPhone, int? casualties, EmergencyStatus status, String? resolutionNotes, DateTime? resolvedAt, double? latitude, double? longitude, List<String> evidencePhotoUrls, String reportedByUid, String reportedByName, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$EmergencyReportModelCopyWithImpl<$Res>
    implements $EmergencyReportModelCopyWith<$Res> {
  _$EmergencyReportModelCopyWithImpl(this._self, this._then);

  final EmergencyReportModel _self;
  final $Res Function(EmergencyReportModel) _then;

/// Create a copy of EmergencyReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? emergencyType = null,Object? severity = null,Object? description = null,Object? descriptionUrdu = freezed,Object? occurredAt = null,Object? immediateAction = freezed,Object? requiredSupport = freezed,Object? contactPersonName = freezed,Object? contactPhone = freezed,Object? casualties = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? resolvedAt = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? evidencePhotoUrls = null,Object? reportedByUid = null,Object? reportedByName = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(EmergencyReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,emergencyType: null == emergencyType ? _self.emergencyType : emergencyType // ignore: cast_nullable_to_non_nullable
as EmergencyType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as EmergencySeverity,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,immediateAction: freezed == immediateAction ? _self.immediateAction : immediateAction // ignore: cast_nullable_to_non_nullable
as String?,requiredSupport: freezed == requiredSupport ? _self.requiredSupport : requiredSupport // ignore: cast_nullable_to_non_nullable
as String?,contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,casualties: freezed == casualties ? _self.casualties : casualties // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmergencyStatus,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,reportedByUid: null == reportedByUid ? _self.reportedByUid : reportedByUid // ignore: cast_nullable_to_non_nullable
as String,reportedByName: null == reportedByName ? _self.reportedByName : reportedByName // ignore: cast_nullable_to_non_nullable
as String,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmergencyReportModel].
extension EmergencyReportModelPatterns on EmergencyReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmergencyReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmergencyReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmergencyReportModel value)  $default,){
final _that = this;
switch (_that) {
case _EmergencyReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmergencyReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmergencyReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  EmergencyType emergencyType,  EmergencySeverity severity,  String description,  String? descriptionUrdu,  DateTime occurredAt,  String? immediateAction,  String? requiredSupport,  String? contactPersonName,  String? contactPhone,  int? casualties,  EmergencyStatus status,  String? resolutionNotes,  DateTime? resolvedAt,  double? latitude,  double? longitude,  List<String> evidencePhotoUrls,  String reportedByUid,  String reportedByName,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmergencyReportModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.emergencyType,_that.severity,_that.description,_that.descriptionUrdu,_that.occurredAt,_that.immediateAction,_that.requiredSupport,_that.contactPersonName,_that.contactPhone,_that.casualties,_that.status,_that.resolutionNotes,_that.resolvedAt,_that.latitude,_that.longitude,_that.evidencePhotoUrls,_that.reportedByUid,_that.reportedByName,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  EmergencyType emergencyType,  EmergencySeverity severity,  String description,  String? descriptionUrdu,  DateTime occurredAt,  String? immediateAction,  String? requiredSupport,  String? contactPersonName,  String? contactPhone,  int? casualties,  EmergencyStatus status,  String? resolutionNotes,  DateTime? resolvedAt,  double? latitude,  double? longitude,  List<String> evidencePhotoUrls,  String reportedByUid,  String reportedByName,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _EmergencyReportModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.emergencyType,_that.severity,_that.description,_that.descriptionUrdu,_that.occurredAt,_that.immediateAction,_that.requiredSupport,_that.contactPersonName,_that.contactPhone,_that.casualties,_that.status,_that.resolutionNotes,_that.resolvedAt,_that.latitude,_that.longitude,_that.evidencePhotoUrls,_that.reportedByUid,_that.reportedByName,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  EmergencyType emergencyType,  EmergencySeverity severity,  String description,  String? descriptionUrdu,  DateTime occurredAt,  String? immediateAction,  String? requiredSupport,  String? contactPersonName,  String? contactPhone,  int? casualties,  EmergencyStatus status,  String? resolutionNotes,  DateTime? resolvedAt,  double? latitude,  double? longitude,  List<String> evidencePhotoUrls,  String reportedByUid,  String reportedByName,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _EmergencyReportModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.emergencyType,_that.severity,_that.description,_that.descriptionUrdu,_that.occurredAt,_that.immediateAction,_that.requiredSupport,_that.contactPersonName,_that.contactPhone,_that.casualties,_that.status,_that.resolutionNotes,_that.resolvedAt,_that.latitude,_that.longitude,_that.evidencePhotoUrls,_that.reportedByUid,_that.reportedByName,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmergencyReportModel extends EmergencyReportModel {
  const _EmergencyReportModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.emergencyType, required this.severity, required this.description, this.descriptionUrdu, required this.occurredAt, this.immediateAction, this.requiredSupport, this.contactPersonName, this.contactPhone, this.casualties, this.status = EmergencyStatus.open, this.resolutionNotes, this.resolvedAt, this.latitude, this.longitude,  List<String> evidencePhotoUrls = const <String>[], required this.reportedByUid, required this.reportedByName, this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _EmergencyReportModel.fromJson(Map<String, dynamic> json) => _$EmergencyReportModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  EmergencyType emergencyType;
@override final  EmergencySeverity severity;
@override final  String description;
@override final  String? descriptionUrdu;
@override final  DateTime occurredAt;
@override final  String? immediateAction;
@override final  String? requiredSupport;
@override final  String? contactPersonName;
@override final  String? contactPhone;
@override final  int? casualties;
@override@JsonKey() final  EmergencyStatus status;
@override final  String? resolutionNotes;
@override final  DateTime? resolvedAt;
@override final  double? latitude;
@override final  double? longitude;
 final  List<String> _evidencePhotoUrls;
@override@JsonKey() List<String> get evidencePhotoUrls {
  if (_evidencePhotoUrls is EqualUnmodifiableListView) return _evidencePhotoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidencePhotoUrls);
}

@override final  String reportedByUid;
@override final  String reportedByName;
@override@JsonKey() final  bool isSynced;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of EmergencyReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmergencyReportModelCopyWith<_EmergencyReportModel> get copyWith => __$EmergencyReportModelCopyWithImpl<_EmergencyReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmergencyReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmergencyReportModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.emergencyType, emergencyType) || other.emergencyType == emergencyType)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.immediateAction, immediateAction) || other.immediateAction == immediateAction)&&(identical(other.requiredSupport, requiredSupport) || other.requiredSupport == requiredSupport)&&(identical(other.contactPersonName, contactPersonName) || other.contactPersonName == contactPersonName)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.casualties, casualties) || other.casualties == casualties)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.reportedByUid, reportedByUid) || other.reportedByUid == reportedByUid)&&(identical(other.reportedByName, reportedByName) || other.reportedByName == reportedByName)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,emergencyType,severity,description,descriptionUrdu,occurredAt,immediateAction,requiredSupport,contactPersonName,contactPhone,casualties,status,resolutionNotes,resolvedAt,latitude,longitude,const DeepCollectionEquality().hash(_evidencePhotoUrls),reportedByUid,reportedByName,isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'EmergencyReportModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, emergencyType: $emergencyType, severity: $severity, description: $description, descriptionUrdu: $descriptionUrdu, occurredAt: $occurredAt, immediateAction: $immediateAction, requiredSupport: $requiredSupport, contactPersonName: $contactPersonName, contactPhone: $contactPhone, casualties: $casualties, status: $status, resolutionNotes: $resolutionNotes, resolvedAt: $resolvedAt, latitude: $latitude, longitude: $longitude, evidencePhotoUrls: $evidencePhotoUrls, reportedByUid: $reportedByUid, reportedByName: $reportedByName, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$EmergencyReportModelCopyWith<$Res> implements $EmergencyReportModelCopyWith<$Res> {
  factory _$EmergencyReportModelCopyWith(_EmergencyReportModel value, $Res Function(_EmergencyReportModel) _then) = __$EmergencyReportModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, EmergencyType emergencyType, EmergencySeverity severity, String description, String? descriptionUrdu, DateTime occurredAt, String? immediateAction, String? requiredSupport, String? contactPersonName, String? contactPhone, int? casualties, EmergencyStatus status, String? resolutionNotes, DateTime? resolvedAt, double? latitude, double? longitude, List<String> evidencePhotoUrls, String reportedByUid, String reportedByName, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$EmergencyReportModelCopyWithImpl<$Res>
    implements _$EmergencyReportModelCopyWith<$Res> {
  __$EmergencyReportModelCopyWithImpl(this._self, this._then);

  final _EmergencyReportModel _self;
  final $Res Function(_EmergencyReportModel) _then;

/// Create a copy of EmergencyReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? emergencyType = null,Object? severity = null,Object? description = null,Object? descriptionUrdu = freezed,Object? occurredAt = null,Object? immediateAction = freezed,Object? requiredSupport = freezed,Object? contactPersonName = freezed,Object? contactPhone = freezed,Object? casualties = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? resolvedAt = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? evidencePhotoUrls = null,Object? reportedByUid = null,Object? reportedByName = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_EmergencyReportModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,emergencyType: null == emergencyType ? _self.emergencyType : emergencyType // ignore: cast_nullable_to_non_nullable
as EmergencyType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as EmergencySeverity,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,immediateAction: freezed == immediateAction ? _self.immediateAction : immediateAction // ignore: cast_nullable_to_non_nullable
as String?,requiredSupport: freezed == requiredSupport ? _self.requiredSupport : requiredSupport // ignore: cast_nullable_to_non_nullable
as String?,contactPersonName: freezed == contactPersonName ? _self.contactPersonName : contactPersonName // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,casualties: freezed == casualties ? _self.casualties : casualties // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmergencyStatus,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,reportedByUid: null == reportedByUid ? _self.reportedByUid : reportedByUid // ignore: cast_nullable_to_non_nullable
as String,reportedByName: null == reportedByName ? _self.reportedByName : reportedByName // ignore: cast_nullable_to_non_nullable
as String,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
