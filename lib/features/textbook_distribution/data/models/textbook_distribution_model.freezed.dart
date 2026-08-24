// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textbook_distribution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TextbookDistributionModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get academicYear; DateTime get distributionDate; String? get classGrade; String? get subject; int get booksRequired; int get booksAvailable; int get booksDistributed; int get studentsReceiving; String? get otherMaterials; String? get supportRequired; String? get remarks; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of TextbookDistributionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextbookDistributionModelCopyWith<TextbookDistributionModel> get copyWith => _$TextbookDistributionModelCopyWithImpl<TextbookDistributionModel>(this as TextbookDistributionModel, _$identity);

  /// Serializes this TextbookDistributionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextbookDistributionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.distributionDate, distributionDate) || other.distributionDate == distributionDate)&&(identical(other.classGrade, classGrade) || other.classGrade == classGrade)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.booksRequired, booksRequired) || other.booksRequired == booksRequired)&&(identical(other.booksAvailable, booksAvailable) || other.booksAvailable == booksAvailable)&&(identical(other.booksDistributed, booksDistributed) || other.booksDistributed == booksDistributed)&&(identical(other.studentsReceiving, studentsReceiving) || other.studentsReceiving == studentsReceiving)&&(identical(other.otherMaterials, otherMaterials) || other.otherMaterials == otherMaterials)&&(identical(other.supportRequired, supportRequired) || other.supportRequired == supportRequired)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,academicYear,distributionDate,classGrade,subject,booksRequired,booksAvailable,booksDistributed,studentsReceiving,otherMaterials,supportRequired,remarks,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'TextbookDistributionModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, academicYear: $academicYear, distributionDate: $distributionDate, classGrade: $classGrade, subject: $subject, booksRequired: $booksRequired, booksAvailable: $booksAvailable, booksDistributed: $booksDistributed, studentsReceiving: $studentsReceiving, otherMaterials: $otherMaterials, supportRequired: $supportRequired, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $TextbookDistributionModelCopyWith<$Res>  {
  factory $TextbookDistributionModelCopyWith(TextbookDistributionModel value, $Res Function(TextbookDistributionModel) _then) = _$TextbookDistributionModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String academicYear, DateTime distributionDate, String? classGrade, String? subject, int booksRequired, int booksAvailable, int booksDistributed, int studentsReceiving, String? otherMaterials, String? supportRequired, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$TextbookDistributionModelCopyWithImpl<$Res>
    implements $TextbookDistributionModelCopyWith<$Res> {
  _$TextbookDistributionModelCopyWithImpl(this._self, this._then);

  final TextbookDistributionModel _self;
  final $Res Function(TextbookDistributionModel) _then;

/// Create a copy of TextbookDistributionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? academicYear = null,Object? distributionDate = null,Object? classGrade = freezed,Object? subject = freezed,Object? booksRequired = null,Object? booksAvailable = null,Object? booksDistributed = null,Object? studentsReceiving = null,Object? otherMaterials = freezed,Object? supportRequired = freezed,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(TextbookDistributionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,distributionDate: null == distributionDate ? _self.distributionDate : distributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,classGrade: freezed == classGrade ? _self.classGrade : classGrade // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,booksRequired: null == booksRequired ? _self.booksRequired : booksRequired // ignore: cast_nullable_to_non_nullable
as int,booksAvailable: null == booksAvailable ? _self.booksAvailable : booksAvailable // ignore: cast_nullable_to_non_nullable
as int,booksDistributed: null == booksDistributed ? _self.booksDistributed : booksDistributed // ignore: cast_nullable_to_non_nullable
as int,studentsReceiving: null == studentsReceiving ? _self.studentsReceiving : studentsReceiving // ignore: cast_nullable_to_non_nullable
as int,otherMaterials: freezed == otherMaterials ? _self.otherMaterials : otherMaterials // ignore: cast_nullable_to_non_nullable
as String?,supportRequired: freezed == supportRequired ? _self.supportRequired : supportRequired // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TextbookDistributionModel].
extension TextbookDistributionModelPatterns on TextbookDistributionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TextbookDistributionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TextbookDistributionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TextbookDistributionModel value)  $default,){
final _that = this;
switch (_that) {
case _TextbookDistributionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TextbookDistributionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TextbookDistributionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String academicYear,  DateTime distributionDate,  String? classGrade,  String? subject,  int booksRequired,  int booksAvailable,  int booksDistributed,  int studentsReceiving,  String? otherMaterials,  String? supportRequired,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TextbookDistributionModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.academicYear,_that.distributionDate,_that.classGrade,_that.subject,_that.booksRequired,_that.booksAvailable,_that.booksDistributed,_that.studentsReceiving,_that.otherMaterials,_that.supportRequired,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String academicYear,  DateTime distributionDate,  String? classGrade,  String? subject,  int booksRequired,  int booksAvailable,  int booksDistributed,  int studentsReceiving,  String? otherMaterials,  String? supportRequired,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _TextbookDistributionModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.academicYear,_that.distributionDate,_that.classGrade,_that.subject,_that.booksRequired,_that.booksAvailable,_that.booksDistributed,_that.studentsReceiving,_that.otherMaterials,_that.supportRequired,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String academicYear,  DateTime distributionDate,  String? classGrade,  String? subject,  int booksRequired,  int booksAvailable,  int booksDistributed,  int studentsReceiving,  String? otherMaterials,  String? supportRequired,  String? remarks,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _TextbookDistributionModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.academicYear,_that.distributionDate,_that.classGrade,_that.subject,_that.booksRequired,_that.booksAvailable,_that.booksDistributed,_that.studentsReceiving,_that.otherMaterials,_that.supportRequired,_that.remarks,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TextbookDistributionModel extends TextbookDistributionModel {
  const _TextbookDistributionModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.academicYear, required this.distributionDate, this.classGrade, this.subject, this.booksRequired = 0, this.booksAvailable = 0, this.booksDistributed = 0, this.studentsReceiving = 0, this.otherMaterials, this.supportRequired, this.remarks,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _TextbookDistributionModel.fromJson(Map<String, dynamic> json) => _$TextbookDistributionModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String academicYear;
@override final  DateTime distributionDate;
@override final  String? classGrade;
@override final  String? subject;
@override@JsonKey() final  int booksRequired;
@override@JsonKey() final  int booksAvailable;
@override@JsonKey() final  int booksDistributed;
@override@JsonKey() final  int studentsReceiving;
@override final  String? otherMaterials;
@override final  String? supportRequired;
@override final  String? remarks;
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

/// Create a copy of TextbookDistributionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextbookDistributionModelCopyWith<_TextbookDistributionModel> get copyWith => __$TextbookDistributionModelCopyWithImpl<_TextbookDistributionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TextbookDistributionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextbookDistributionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.distributionDate, distributionDate) || other.distributionDate == distributionDate)&&(identical(other.classGrade, classGrade) || other.classGrade == classGrade)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.booksRequired, booksRequired) || other.booksRequired == booksRequired)&&(identical(other.booksAvailable, booksAvailable) || other.booksAvailable == booksAvailable)&&(identical(other.booksDistributed, booksDistributed) || other.booksDistributed == booksDistributed)&&(identical(other.studentsReceiving, studentsReceiving) || other.studentsReceiving == studentsReceiving)&&(identical(other.otherMaterials, otherMaterials) || other.otherMaterials == otherMaterials)&&(identical(other.supportRequired, supportRequired) || other.supportRequired == supportRequired)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,academicYear,distributionDate,classGrade,subject,booksRequired,booksAvailable,booksDistributed,studentsReceiving,otherMaterials,supportRequired,remarks,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'TextbookDistributionModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, academicYear: $academicYear, distributionDate: $distributionDate, classGrade: $classGrade, subject: $subject, booksRequired: $booksRequired, booksAvailable: $booksAvailable, booksDistributed: $booksDistributed, studentsReceiving: $studentsReceiving, otherMaterials: $otherMaterials, supportRequired: $supportRequired, remarks: $remarks, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$TextbookDistributionModelCopyWith<$Res> implements $TextbookDistributionModelCopyWith<$Res> {
  factory _$TextbookDistributionModelCopyWith(_TextbookDistributionModel value, $Res Function(_TextbookDistributionModel) _then) = __$TextbookDistributionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String academicYear, DateTime distributionDate, String? classGrade, String? subject, int booksRequired, int booksAvailable, int booksDistributed, int studentsReceiving, String? otherMaterials, String? supportRequired, String? remarks, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$TextbookDistributionModelCopyWithImpl<$Res>
    implements _$TextbookDistributionModelCopyWith<$Res> {
  __$TextbookDistributionModelCopyWithImpl(this._self, this._then);

  final _TextbookDistributionModel _self;
  final $Res Function(_TextbookDistributionModel) _then;

/// Create a copy of TextbookDistributionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? academicYear = null,Object? distributionDate = null,Object? classGrade = freezed,Object? subject = freezed,Object? booksRequired = null,Object? booksAvailable = null,Object? booksDistributed = null,Object? studentsReceiving = null,Object? otherMaterials = freezed,Object? supportRequired = freezed,Object? remarks = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_TextbookDistributionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,distributionDate: null == distributionDate ? _self.distributionDate : distributionDate // ignore: cast_nullable_to_non_nullable
as DateTime,classGrade: freezed == classGrade ? _self.classGrade : classGrade // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,booksRequired: null == booksRequired ? _self.booksRequired : booksRequired // ignore: cast_nullable_to_non_nullable
as int,booksAvailable: null == booksAvailable ? _self.booksAvailable : booksAvailable // ignore: cast_nullable_to_non_nullable
as int,booksDistributed: null == booksDistributed ? _self.booksDistributed : booksDistributed // ignore: cast_nullable_to_non_nullable
as int,studentsReceiving: null == studentsReceiving ? _self.studentsReceiving : studentsReceiving // ignore: cast_nullable_to_non_nullable
as int,otherMaterials: freezed == otherMaterials ? _self.otherMaterials : otherMaterials // ignore: cast_nullable_to_non_nullable
as String?,supportRequired: freezed == supportRequired ? _self.supportRequired : supportRequired // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
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
