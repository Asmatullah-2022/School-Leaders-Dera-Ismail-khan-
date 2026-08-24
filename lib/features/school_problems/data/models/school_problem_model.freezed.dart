// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_problem_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolProblemModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get title; String? get titleUrdu; ProblemCategory get category; String get description; String? get descriptionUrdu; ProblemPriority get priority; DateTime get dateReported; String? get requiredSupport; String? get assignedToUid; String? get assignedToName; DateTime? get expectedResolutionDate; ProblemStatus get status; String? get resolutionNotes; DateTime? get resolvedAt; List<String> get evidencePhotoUrls; List<String> get resolutionEvidenceUrls; String get reportedByUid; String get reportedByName; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of SchoolProblemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolProblemModelCopyWith<SchoolProblemModel> get copyWith => _$SchoolProblemModelCopyWithImpl<SchoolProblemModel>(this as SchoolProblemModel, _$identity);

  /// Serializes this SchoolProblemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolProblemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleUrdu, titleUrdu) || other.titleUrdu == titleUrdu)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.dateReported, dateReported) || other.dateReported == dateReported)&&(identical(other.requiredSupport, requiredSupport) || other.requiredSupport == requiredSupport)&&(identical(other.assignedToUid, assignedToUid) || other.assignedToUid == assignedToUid)&&(identical(other.assignedToName, assignedToName) || other.assignedToName == assignedToName)&&(identical(other.expectedResolutionDate, expectedResolutionDate) || other.expectedResolutionDate == expectedResolutionDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&const DeepCollectionEquality().equals(other.resolutionEvidenceUrls, resolutionEvidenceUrls)&&(identical(other.reportedByUid, reportedByUid) || other.reportedByUid == reportedByUid)&&(identical(other.reportedByName, reportedByName) || other.reportedByName == reportedByName)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,title,titleUrdu,category,description,descriptionUrdu,priority,dateReported,requiredSupport,assignedToUid,assignedToName,expectedResolutionDate,status,resolutionNotes,resolvedAt,const DeepCollectionEquality().hash(evidencePhotoUrls),const DeepCollectionEquality().hash(resolutionEvidenceUrls),reportedByUid,reportedByName,isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolProblemModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, title: $title, titleUrdu: $titleUrdu, category: $category, description: $description, descriptionUrdu: $descriptionUrdu, priority: $priority, dateReported: $dateReported, requiredSupport: $requiredSupport, assignedToUid: $assignedToUid, assignedToName: $assignedToName, expectedResolutionDate: $expectedResolutionDate, status: $status, resolutionNotes: $resolutionNotes, resolvedAt: $resolvedAt, evidencePhotoUrls: $evidencePhotoUrls, resolutionEvidenceUrls: $resolutionEvidenceUrls, reportedByUid: $reportedByUid, reportedByName: $reportedByName, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $SchoolProblemModelCopyWith<$Res>  {
  factory $SchoolProblemModelCopyWith(SchoolProblemModel value, $Res Function(SchoolProblemModel) _then) = _$SchoolProblemModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String title, String? titleUrdu, ProblemCategory category, String description, String? descriptionUrdu, ProblemPriority priority, DateTime dateReported, String? requiredSupport, String? assignedToUid, String? assignedToName, DateTime? expectedResolutionDate, ProblemStatus status, String? resolutionNotes, DateTime? resolvedAt, List<String> evidencePhotoUrls, List<String> resolutionEvidenceUrls, String reportedByUid, String reportedByName, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$SchoolProblemModelCopyWithImpl<$Res>
    implements $SchoolProblemModelCopyWith<$Res> {
  _$SchoolProblemModelCopyWithImpl(this._self, this._then);

  final SchoolProblemModel _self;
  final $Res Function(SchoolProblemModel) _then;

/// Create a copy of SchoolProblemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? title = null,Object? titleUrdu = freezed,Object? category = null,Object? description = null,Object? descriptionUrdu = freezed,Object? priority = null,Object? dateReported = null,Object? requiredSupport = freezed,Object? assignedToUid = freezed,Object? assignedToName = freezed,Object? expectedResolutionDate = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? resolvedAt = freezed,Object? evidencePhotoUrls = null,Object? resolutionEvidenceUrls = null,Object? reportedByUid = null,Object? reportedByName = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(SchoolProblemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleUrdu: freezed == titleUrdu ? _self.titleUrdu : titleUrdu // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ProblemCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as ProblemPriority,dateReported: null == dateReported ? _self.dateReported : dateReported // ignore: cast_nullable_to_non_nullable
as DateTime,requiredSupport: freezed == requiredSupport ? _self.requiredSupport : requiredSupport // ignore: cast_nullable_to_non_nullable
as String?,assignedToUid: freezed == assignedToUid ? _self.assignedToUid : assignedToUid // ignore: cast_nullable_to_non_nullable
as String?,assignedToName: freezed == assignedToName ? _self.assignedToName : assignedToName // ignore: cast_nullable_to_non_nullable
as String?,expectedResolutionDate: freezed == expectedResolutionDate ? _self.expectedResolutionDate : expectedResolutionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProblemStatus,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,resolutionEvidenceUrls: null == resolutionEvidenceUrls ? _self.resolutionEvidenceUrls : resolutionEvidenceUrls // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [SchoolProblemModel].
extension SchoolProblemModelPatterns on SchoolProblemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolProblemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolProblemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolProblemModel value)  $default,){
final _that = this;
switch (_that) {
case _SchoolProblemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolProblemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolProblemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String title,  String? titleUrdu,  ProblemCategory category,  String description,  String? descriptionUrdu,  ProblemPriority priority,  DateTime dateReported,  String? requiredSupport,  String? assignedToUid,  String? assignedToName,  DateTime? expectedResolutionDate,  ProblemStatus status,  String? resolutionNotes,  DateTime? resolvedAt,  List<String> evidencePhotoUrls,  List<String> resolutionEvidenceUrls,  String reportedByUid,  String reportedByName,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolProblemModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.title,_that.titleUrdu,_that.category,_that.description,_that.descriptionUrdu,_that.priority,_that.dateReported,_that.requiredSupport,_that.assignedToUid,_that.assignedToName,_that.expectedResolutionDate,_that.status,_that.resolutionNotes,_that.resolvedAt,_that.evidencePhotoUrls,_that.resolutionEvidenceUrls,_that.reportedByUid,_that.reportedByName,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String title,  String? titleUrdu,  ProblemCategory category,  String description,  String? descriptionUrdu,  ProblemPriority priority,  DateTime dateReported,  String? requiredSupport,  String? assignedToUid,  String? assignedToName,  DateTime? expectedResolutionDate,  ProblemStatus status,  String? resolutionNotes,  DateTime? resolvedAt,  List<String> evidencePhotoUrls,  List<String> resolutionEvidenceUrls,  String reportedByUid,  String reportedByName,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _SchoolProblemModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.title,_that.titleUrdu,_that.category,_that.description,_that.descriptionUrdu,_that.priority,_that.dateReported,_that.requiredSupport,_that.assignedToUid,_that.assignedToName,_that.expectedResolutionDate,_that.status,_that.resolutionNotes,_that.resolvedAt,_that.evidencePhotoUrls,_that.resolutionEvidenceUrls,_that.reportedByUid,_that.reportedByName,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String title,  String? titleUrdu,  ProblemCategory category,  String description,  String? descriptionUrdu,  ProblemPriority priority,  DateTime dateReported,  String? requiredSupport,  String? assignedToUid,  String? assignedToName,  DateTime? expectedResolutionDate,  ProblemStatus status,  String? resolutionNotes,  DateTime? resolvedAt,  List<String> evidencePhotoUrls,  List<String> resolutionEvidenceUrls,  String reportedByUid,  String reportedByName,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _SchoolProblemModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.title,_that.titleUrdu,_that.category,_that.description,_that.descriptionUrdu,_that.priority,_that.dateReported,_that.requiredSupport,_that.assignedToUid,_that.assignedToName,_that.expectedResolutionDate,_that.status,_that.resolutionNotes,_that.resolvedAt,_that.evidencePhotoUrls,_that.resolutionEvidenceUrls,_that.reportedByUid,_that.reportedByName,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolProblemModel extends SchoolProblemModel {
  const _SchoolProblemModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.title, this.titleUrdu, required this.category, required this.description, this.descriptionUrdu, this.priority = ProblemPriority.medium, required this.dateReported, this.requiredSupport, this.assignedToUid, this.assignedToName, this.expectedResolutionDate, this.status = ProblemStatus.open, this.resolutionNotes, this.resolvedAt,  List<String> evidencePhotoUrls = const <String>[],  List<String> resolutionEvidenceUrls = const <String>[], required this.reportedByUid, required this.reportedByName, this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,_resolutionEvidenceUrls = resolutionEvidenceUrls,super._();
  factory _SchoolProblemModel.fromJson(Map<String, dynamic> json) => _$SchoolProblemModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String title;
@override final  String? titleUrdu;
@override final  ProblemCategory category;
@override final  String description;
@override final  String? descriptionUrdu;
@override@JsonKey() final  ProblemPriority priority;
@override final  DateTime dateReported;
@override final  String? requiredSupport;
@override final  String? assignedToUid;
@override final  String? assignedToName;
@override final  DateTime? expectedResolutionDate;
@override@JsonKey() final  ProblemStatus status;
@override final  String? resolutionNotes;
@override final  DateTime? resolvedAt;
 final  List<String> _evidencePhotoUrls;
@override@JsonKey() List<String> get evidencePhotoUrls {
  if (_evidencePhotoUrls is EqualUnmodifiableListView) return _evidencePhotoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evidencePhotoUrls);
}

 final  List<String> _resolutionEvidenceUrls;
@override@JsonKey() List<String> get resolutionEvidenceUrls {
  if (_resolutionEvidenceUrls is EqualUnmodifiableListView) return _resolutionEvidenceUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_resolutionEvidenceUrls);
}

@override final  String reportedByUid;
@override final  String reportedByName;
@override@JsonKey() final  bool isSynced;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of SchoolProblemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolProblemModelCopyWith<_SchoolProblemModel> get copyWith => __$SchoolProblemModelCopyWithImpl<_SchoolProblemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolProblemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolProblemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleUrdu, titleUrdu) || other.titleUrdu == titleUrdu)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.dateReported, dateReported) || other.dateReported == dateReported)&&(identical(other.requiredSupport, requiredSupport) || other.requiredSupport == requiredSupport)&&(identical(other.assignedToUid, assignedToUid) || other.assignedToUid == assignedToUid)&&(identical(other.assignedToName, assignedToName) || other.assignedToName == assignedToName)&&(identical(other.expectedResolutionDate, expectedResolutionDate) || other.expectedResolutionDate == expectedResolutionDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolutionNotes, resolutionNotes) || other.resolutionNotes == resolutionNotes)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&const DeepCollectionEquality().equals(other._resolutionEvidenceUrls, _resolutionEvidenceUrls)&&(identical(other.reportedByUid, reportedByUid) || other.reportedByUid == reportedByUid)&&(identical(other.reportedByName, reportedByName) || other.reportedByName == reportedByName)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,title,titleUrdu,category,description,descriptionUrdu,priority,dateReported,requiredSupport,assignedToUid,assignedToName,expectedResolutionDate,status,resolutionNotes,resolvedAt,const DeepCollectionEquality().hash(_evidencePhotoUrls),const DeepCollectionEquality().hash(_resolutionEvidenceUrls),reportedByUid,reportedByName,isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SchoolProblemModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, title: $title, titleUrdu: $titleUrdu, category: $category, description: $description, descriptionUrdu: $descriptionUrdu, priority: $priority, dateReported: $dateReported, requiredSupport: $requiredSupport, assignedToUid: $assignedToUid, assignedToName: $assignedToName, expectedResolutionDate: $expectedResolutionDate, status: $status, resolutionNotes: $resolutionNotes, resolvedAt: $resolvedAt, evidencePhotoUrls: $evidencePhotoUrls, resolutionEvidenceUrls: $resolutionEvidenceUrls, reportedByUid: $reportedByUid, reportedByName: $reportedByName, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$SchoolProblemModelCopyWith<$Res> implements $SchoolProblemModelCopyWith<$Res> {
  factory _$SchoolProblemModelCopyWith(_SchoolProblemModel value, $Res Function(_SchoolProblemModel) _then) = __$SchoolProblemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String title, String? titleUrdu, ProblemCategory category, String description, String? descriptionUrdu, ProblemPriority priority, DateTime dateReported, String? requiredSupport, String? assignedToUid, String? assignedToName, DateTime? expectedResolutionDate, ProblemStatus status, String? resolutionNotes, DateTime? resolvedAt, List<String> evidencePhotoUrls, List<String> resolutionEvidenceUrls, String reportedByUid, String reportedByName, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$SchoolProblemModelCopyWithImpl<$Res>
    implements _$SchoolProblemModelCopyWith<$Res> {
  __$SchoolProblemModelCopyWithImpl(this._self, this._then);

  final _SchoolProblemModel _self;
  final $Res Function(_SchoolProblemModel) _then;

/// Create a copy of SchoolProblemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? title = null,Object? titleUrdu = freezed,Object? category = null,Object? description = null,Object? descriptionUrdu = freezed,Object? priority = null,Object? dateReported = null,Object? requiredSupport = freezed,Object? assignedToUid = freezed,Object? assignedToName = freezed,Object? expectedResolutionDate = freezed,Object? status = null,Object? resolutionNotes = freezed,Object? resolvedAt = freezed,Object? evidencePhotoUrls = null,Object? resolutionEvidenceUrls = null,Object? reportedByUid = null,Object? reportedByName = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_SchoolProblemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleUrdu: freezed == titleUrdu ? _self.titleUrdu : titleUrdu // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ProblemCategory,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as ProblemPriority,dateReported: null == dateReported ? _self.dateReported : dateReported // ignore: cast_nullable_to_non_nullable
as DateTime,requiredSupport: freezed == requiredSupport ? _self.requiredSupport : requiredSupport // ignore: cast_nullable_to_non_nullable
as String?,assignedToUid: freezed == assignedToUid ? _self.assignedToUid : assignedToUid // ignore: cast_nullable_to_non_nullable
as String?,assignedToName: freezed == assignedToName ? _self.assignedToName : assignedToName // ignore: cast_nullable_to_non_nullable
as String?,expectedResolutionDate: freezed == expectedResolutionDate ? _self.expectedResolutionDate : expectedResolutionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProblemStatus,resolutionNotes: freezed == resolutionNotes ? _self.resolutionNotes : resolutionNotes // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,resolutionEvidenceUrls: null == resolutionEvidenceUrls ? _self._resolutionEvidenceUrls : resolutionEvidenceUrls // ignore: cast_nullable_to_non_nullable
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
