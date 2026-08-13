// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionCampaignModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get academicYear; int get targetEnrollment; int get previousEnrollment; int get currentEnrollment; int get newAdmissionsBoys; int get newAdmissionsGirls; int get ooscIdentified; int get ooscReenrolled; int get doorToDoorVisits; int get parentMeetings; int get communityMeetings; int get banners; int get posters; int get socialMediaActivities; int get freeTextbooksDistributed; String? get otherSupport; String? get remarks; String? get remarksUrdu; DateTime get date; CampaignStatus get status; double get achievementPercentage; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of AdmissionCampaignModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionCampaignModelCopyWith<AdmissionCampaignModel> get copyWith => _$AdmissionCampaignModelCopyWithImpl<AdmissionCampaignModel>(this as AdmissionCampaignModel, _$identity);

  /// Serializes this AdmissionCampaignModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionCampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.targetEnrollment, targetEnrollment) || other.targetEnrollment == targetEnrollment)&&(identical(other.previousEnrollment, previousEnrollment) || other.previousEnrollment == previousEnrollment)&&(identical(other.currentEnrollment, currentEnrollment) || other.currentEnrollment == currentEnrollment)&&(identical(other.newAdmissionsBoys, newAdmissionsBoys) || other.newAdmissionsBoys == newAdmissionsBoys)&&(identical(other.newAdmissionsGirls, newAdmissionsGirls) || other.newAdmissionsGirls == newAdmissionsGirls)&&(identical(other.ooscIdentified, ooscIdentified) || other.ooscIdentified == ooscIdentified)&&(identical(other.ooscReenrolled, ooscReenrolled) || other.ooscReenrolled == ooscReenrolled)&&(identical(other.doorToDoorVisits, doorToDoorVisits) || other.doorToDoorVisits == doorToDoorVisits)&&(identical(other.parentMeetings, parentMeetings) || other.parentMeetings == parentMeetings)&&(identical(other.communityMeetings, communityMeetings) || other.communityMeetings == communityMeetings)&&(identical(other.banners, banners) || other.banners == banners)&&(identical(other.posters, posters) || other.posters == posters)&&(identical(other.socialMediaActivities, socialMediaActivities) || other.socialMediaActivities == socialMediaActivities)&&(identical(other.freeTextbooksDistributed, freeTextbooksDistributed) || other.freeTextbooksDistributed == freeTextbooksDistributed)&&(identical(other.otherSupport, otherSupport) || other.otherSupport == otherSupport)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.remarksUrdu, remarksUrdu) || other.remarksUrdu == remarksUrdu)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.achievementPercentage, achievementPercentage) || other.achievementPercentage == achievementPercentage)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,academicYear,targetEnrollment,previousEnrollment,currentEnrollment,newAdmissionsBoys,newAdmissionsGirls,ooscIdentified,ooscReenrolled,doorToDoorVisits,parentMeetings,communityMeetings,banners,posters,socialMediaActivities,freeTextbooksDistributed,otherSupport,remarks,remarksUrdu,date,status,achievementPercentage,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'AdmissionCampaignModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, academicYear: $academicYear, targetEnrollment: $targetEnrollment, previousEnrollment: $previousEnrollment, currentEnrollment: $currentEnrollment, newAdmissionsBoys: $newAdmissionsBoys, newAdmissionsGirls: $newAdmissionsGirls, ooscIdentified: $ooscIdentified, ooscReenrolled: $ooscReenrolled, doorToDoorVisits: $doorToDoorVisits, parentMeetings: $parentMeetings, communityMeetings: $communityMeetings, banners: $banners, posters: $posters, socialMediaActivities: $socialMediaActivities, freeTextbooksDistributed: $freeTextbooksDistributed, otherSupport: $otherSupport, remarks: $remarks, remarksUrdu: $remarksUrdu, date: $date, status: $status, achievementPercentage: $achievementPercentage, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $AdmissionCampaignModelCopyWith<$Res>  {
  factory $AdmissionCampaignModelCopyWith(AdmissionCampaignModel value, $Res Function(AdmissionCampaignModel) _then) = _$AdmissionCampaignModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String academicYear, int targetEnrollment, int previousEnrollment, int currentEnrollment, int newAdmissionsBoys, int newAdmissionsGirls, int ooscIdentified, int ooscReenrolled, int doorToDoorVisits, int parentMeetings, int communityMeetings, int banners, int posters, int socialMediaActivities, int freeTextbooksDistributed, String? otherSupport, String? remarks, String? remarksUrdu, DateTime date, CampaignStatus status, double achievementPercentage, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$AdmissionCampaignModelCopyWithImpl<$Res>
    implements $AdmissionCampaignModelCopyWith<$Res> {
  _$AdmissionCampaignModelCopyWithImpl(this._self, this._then);

  final AdmissionCampaignModel _self;
  final $Res Function(AdmissionCampaignModel) _then;

/// Create a copy of AdmissionCampaignModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? academicYear = null,Object? targetEnrollment = null,Object? previousEnrollment = null,Object? currentEnrollment = null,Object? newAdmissionsBoys = null,Object? newAdmissionsGirls = null,Object? ooscIdentified = null,Object? ooscReenrolled = null,Object? doorToDoorVisits = null,Object? parentMeetings = null,Object? communityMeetings = null,Object? banners = null,Object? posters = null,Object? socialMediaActivities = null,Object? freeTextbooksDistributed = null,Object? otherSupport = freezed,Object? remarks = freezed,Object? remarksUrdu = freezed,Object? date = null,Object? status = null,Object? achievementPercentage = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(AdmissionCampaignModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,targetEnrollment: null == targetEnrollment ? _self.targetEnrollment : targetEnrollment // ignore: cast_nullable_to_non_nullable
as int,previousEnrollment: null == previousEnrollment ? _self.previousEnrollment : previousEnrollment // ignore: cast_nullable_to_non_nullable
as int,currentEnrollment: null == currentEnrollment ? _self.currentEnrollment : currentEnrollment // ignore: cast_nullable_to_non_nullable
as int,newAdmissionsBoys: null == newAdmissionsBoys ? _self.newAdmissionsBoys : newAdmissionsBoys // ignore: cast_nullable_to_non_nullable
as int,newAdmissionsGirls: null == newAdmissionsGirls ? _self.newAdmissionsGirls : newAdmissionsGirls // ignore: cast_nullable_to_non_nullable
as int,ooscIdentified: null == ooscIdentified ? _self.ooscIdentified : ooscIdentified // ignore: cast_nullable_to_non_nullable
as int,ooscReenrolled: null == ooscReenrolled ? _self.ooscReenrolled : ooscReenrolled // ignore: cast_nullable_to_non_nullable
as int,doorToDoorVisits: null == doorToDoorVisits ? _self.doorToDoorVisits : doorToDoorVisits // ignore: cast_nullable_to_non_nullable
as int,parentMeetings: null == parentMeetings ? _self.parentMeetings : parentMeetings // ignore: cast_nullable_to_non_nullable
as int,communityMeetings: null == communityMeetings ? _self.communityMeetings : communityMeetings // ignore: cast_nullable_to_non_nullable
as int,banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as int,posters: null == posters ? _self.posters : posters // ignore: cast_nullable_to_non_nullable
as int,socialMediaActivities: null == socialMediaActivities ? _self.socialMediaActivities : socialMediaActivities // ignore: cast_nullable_to_non_nullable
as int,freeTextbooksDistributed: null == freeTextbooksDistributed ? _self.freeTextbooksDistributed : freeTextbooksDistributed // ignore: cast_nullable_to_non_nullable
as int,otherSupport: freezed == otherSupport ? _self.otherSupport : otherSupport // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,remarksUrdu: freezed == remarksUrdu ? _self.remarksUrdu : remarksUrdu // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,achievementPercentage: null == achievementPercentage ? _self.achievementPercentage : achievementPercentage // ignore: cast_nullable_to_non_nullable
as double,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionCampaignModel].
extension AdmissionCampaignModelPatterns on AdmissionCampaignModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionCampaignModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionCampaignModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionCampaignModel value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionCampaignModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionCampaignModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionCampaignModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String academicYear,  int targetEnrollment,  int previousEnrollment,  int currentEnrollment,  int newAdmissionsBoys,  int newAdmissionsGirls,  int ooscIdentified,  int ooscReenrolled,  int doorToDoorVisits,  int parentMeetings,  int communityMeetings,  int banners,  int posters,  int socialMediaActivities,  int freeTextbooksDistributed,  String? otherSupport,  String? remarks,  String? remarksUrdu,  DateTime date,  CampaignStatus status,  double achievementPercentage,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionCampaignModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.academicYear,_that.targetEnrollment,_that.previousEnrollment,_that.currentEnrollment,_that.newAdmissionsBoys,_that.newAdmissionsGirls,_that.ooscIdentified,_that.ooscReenrolled,_that.doorToDoorVisits,_that.parentMeetings,_that.communityMeetings,_that.banners,_that.posters,_that.socialMediaActivities,_that.freeTextbooksDistributed,_that.otherSupport,_that.remarks,_that.remarksUrdu,_that.date,_that.status,_that.achievementPercentage,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String academicYear,  int targetEnrollment,  int previousEnrollment,  int currentEnrollment,  int newAdmissionsBoys,  int newAdmissionsGirls,  int ooscIdentified,  int ooscReenrolled,  int doorToDoorVisits,  int parentMeetings,  int communityMeetings,  int banners,  int posters,  int socialMediaActivities,  int freeTextbooksDistributed,  String? otherSupport,  String? remarks,  String? remarksUrdu,  DateTime date,  CampaignStatus status,  double achievementPercentage,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _AdmissionCampaignModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.academicYear,_that.targetEnrollment,_that.previousEnrollment,_that.currentEnrollment,_that.newAdmissionsBoys,_that.newAdmissionsGirls,_that.ooscIdentified,_that.ooscReenrolled,_that.doorToDoorVisits,_that.parentMeetings,_that.communityMeetings,_that.banners,_that.posters,_that.socialMediaActivities,_that.freeTextbooksDistributed,_that.otherSupport,_that.remarks,_that.remarksUrdu,_that.date,_that.status,_that.achievementPercentage,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String academicYear,  int targetEnrollment,  int previousEnrollment,  int currentEnrollment,  int newAdmissionsBoys,  int newAdmissionsGirls,  int ooscIdentified,  int ooscReenrolled,  int doorToDoorVisits,  int parentMeetings,  int communityMeetings,  int banners,  int posters,  int socialMediaActivities,  int freeTextbooksDistributed,  String? otherSupport,  String? remarks,  String? remarksUrdu,  DateTime date,  CampaignStatus status,  double achievementPercentage,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionCampaignModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.academicYear,_that.targetEnrollment,_that.previousEnrollment,_that.currentEnrollment,_that.newAdmissionsBoys,_that.newAdmissionsGirls,_that.ooscIdentified,_that.ooscReenrolled,_that.doorToDoorVisits,_that.parentMeetings,_that.communityMeetings,_that.banners,_that.posters,_that.socialMediaActivities,_that.freeTextbooksDistributed,_that.otherSupport,_that.remarks,_that.remarksUrdu,_that.date,_that.status,_that.achievementPercentage,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionCampaignModel extends AdmissionCampaignModel {
  const _AdmissionCampaignModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.academicYear, required this.targetEnrollment, this.previousEnrollment = 0, this.currentEnrollment = 0, this.newAdmissionsBoys = 0, this.newAdmissionsGirls = 0, this.ooscIdentified = 0, this.ooscReenrolled = 0, this.doorToDoorVisits = 0, this.parentMeetings = 0, this.communityMeetings = 0, this.banners = 0, this.posters = 0, this.socialMediaActivities = 0, this.freeTextbooksDistributed = 0, this.otherSupport, this.remarks, this.remarksUrdu, required this.date, this.status = CampaignStatus.active, this.achievementPercentage = 0.0,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _AdmissionCampaignModel.fromJson(Map<String, dynamic> json) => _$AdmissionCampaignModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String academicYear;
@override final  int targetEnrollment;
@override@JsonKey() final  int previousEnrollment;
@override@JsonKey() final  int currentEnrollment;
@override@JsonKey() final  int newAdmissionsBoys;
@override@JsonKey() final  int newAdmissionsGirls;
@override@JsonKey() final  int ooscIdentified;
@override@JsonKey() final  int ooscReenrolled;
@override@JsonKey() final  int doorToDoorVisits;
@override@JsonKey() final  int parentMeetings;
@override@JsonKey() final  int communityMeetings;
@override@JsonKey() final  int banners;
@override@JsonKey() final  int posters;
@override@JsonKey() final  int socialMediaActivities;
@override@JsonKey() final  int freeTextbooksDistributed;
@override final  String? otherSupport;
@override final  String? remarks;
@override final  String? remarksUrdu;
@override final  DateTime date;
@override@JsonKey() final  CampaignStatus status;
@override@JsonKey() final  double achievementPercentage;
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

/// Create a copy of AdmissionCampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionCampaignModelCopyWith<_AdmissionCampaignModel> get copyWith => __$AdmissionCampaignModelCopyWithImpl<_AdmissionCampaignModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionCampaignModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionCampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.targetEnrollment, targetEnrollment) || other.targetEnrollment == targetEnrollment)&&(identical(other.previousEnrollment, previousEnrollment) || other.previousEnrollment == previousEnrollment)&&(identical(other.currentEnrollment, currentEnrollment) || other.currentEnrollment == currentEnrollment)&&(identical(other.newAdmissionsBoys, newAdmissionsBoys) || other.newAdmissionsBoys == newAdmissionsBoys)&&(identical(other.newAdmissionsGirls, newAdmissionsGirls) || other.newAdmissionsGirls == newAdmissionsGirls)&&(identical(other.ooscIdentified, ooscIdentified) || other.ooscIdentified == ooscIdentified)&&(identical(other.ooscReenrolled, ooscReenrolled) || other.ooscReenrolled == ooscReenrolled)&&(identical(other.doorToDoorVisits, doorToDoorVisits) || other.doorToDoorVisits == doorToDoorVisits)&&(identical(other.parentMeetings, parentMeetings) || other.parentMeetings == parentMeetings)&&(identical(other.communityMeetings, communityMeetings) || other.communityMeetings == communityMeetings)&&(identical(other.banners, banners) || other.banners == banners)&&(identical(other.posters, posters) || other.posters == posters)&&(identical(other.socialMediaActivities, socialMediaActivities) || other.socialMediaActivities == socialMediaActivities)&&(identical(other.freeTextbooksDistributed, freeTextbooksDistributed) || other.freeTextbooksDistributed == freeTextbooksDistributed)&&(identical(other.otherSupport, otherSupport) || other.otherSupport == otherSupport)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.remarksUrdu, remarksUrdu) || other.remarksUrdu == remarksUrdu)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.achievementPercentage, achievementPercentage) || other.achievementPercentage == achievementPercentage)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,academicYear,targetEnrollment,previousEnrollment,currentEnrollment,newAdmissionsBoys,newAdmissionsGirls,ooscIdentified,ooscReenrolled,doorToDoorVisits,parentMeetings,communityMeetings,banners,posters,socialMediaActivities,freeTextbooksDistributed,otherSupport,remarks,remarksUrdu,date,status,achievementPercentage,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'AdmissionCampaignModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, academicYear: $academicYear, targetEnrollment: $targetEnrollment, previousEnrollment: $previousEnrollment, currentEnrollment: $currentEnrollment, newAdmissionsBoys: $newAdmissionsBoys, newAdmissionsGirls: $newAdmissionsGirls, ooscIdentified: $ooscIdentified, ooscReenrolled: $ooscReenrolled, doorToDoorVisits: $doorToDoorVisits, parentMeetings: $parentMeetings, communityMeetings: $communityMeetings, banners: $banners, posters: $posters, socialMediaActivities: $socialMediaActivities, freeTextbooksDistributed: $freeTextbooksDistributed, otherSupport: $otherSupport, remarks: $remarks, remarksUrdu: $remarksUrdu, date: $date, status: $status, achievementPercentage: $achievementPercentage, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$AdmissionCampaignModelCopyWith<$Res> implements $AdmissionCampaignModelCopyWith<$Res> {
  factory _$AdmissionCampaignModelCopyWith(_AdmissionCampaignModel value, $Res Function(_AdmissionCampaignModel) _then) = __$AdmissionCampaignModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String academicYear, int targetEnrollment, int previousEnrollment, int currentEnrollment, int newAdmissionsBoys, int newAdmissionsGirls, int ooscIdentified, int ooscReenrolled, int doorToDoorVisits, int parentMeetings, int communityMeetings, int banners, int posters, int socialMediaActivities, int freeTextbooksDistributed, String? otherSupport, String? remarks, String? remarksUrdu, DateTime date, CampaignStatus status, double achievementPercentage, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$AdmissionCampaignModelCopyWithImpl<$Res>
    implements _$AdmissionCampaignModelCopyWith<$Res> {
  __$AdmissionCampaignModelCopyWithImpl(this._self, this._then);

  final _AdmissionCampaignModel _self;
  final $Res Function(_AdmissionCampaignModel) _then;

/// Create a copy of AdmissionCampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? academicYear = null,Object? targetEnrollment = null,Object? previousEnrollment = null,Object? currentEnrollment = null,Object? newAdmissionsBoys = null,Object? newAdmissionsGirls = null,Object? ooscIdentified = null,Object? ooscReenrolled = null,Object? doorToDoorVisits = null,Object? parentMeetings = null,Object? communityMeetings = null,Object? banners = null,Object? posters = null,Object? socialMediaActivities = null,Object? freeTextbooksDistributed = null,Object? otherSupport = freezed,Object? remarks = freezed,Object? remarksUrdu = freezed,Object? date = null,Object? status = null,Object? achievementPercentage = null,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_AdmissionCampaignModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,targetEnrollment: null == targetEnrollment ? _self.targetEnrollment : targetEnrollment // ignore: cast_nullable_to_non_nullable
as int,previousEnrollment: null == previousEnrollment ? _self.previousEnrollment : previousEnrollment // ignore: cast_nullable_to_non_nullable
as int,currentEnrollment: null == currentEnrollment ? _self.currentEnrollment : currentEnrollment // ignore: cast_nullable_to_non_nullable
as int,newAdmissionsBoys: null == newAdmissionsBoys ? _self.newAdmissionsBoys : newAdmissionsBoys // ignore: cast_nullable_to_non_nullable
as int,newAdmissionsGirls: null == newAdmissionsGirls ? _self.newAdmissionsGirls : newAdmissionsGirls // ignore: cast_nullable_to_non_nullable
as int,ooscIdentified: null == ooscIdentified ? _self.ooscIdentified : ooscIdentified // ignore: cast_nullable_to_non_nullable
as int,ooscReenrolled: null == ooscReenrolled ? _self.ooscReenrolled : ooscReenrolled // ignore: cast_nullable_to_non_nullable
as int,doorToDoorVisits: null == doorToDoorVisits ? _self.doorToDoorVisits : doorToDoorVisits // ignore: cast_nullable_to_non_nullable
as int,parentMeetings: null == parentMeetings ? _self.parentMeetings : parentMeetings // ignore: cast_nullable_to_non_nullable
as int,communityMeetings: null == communityMeetings ? _self.communityMeetings : communityMeetings // ignore: cast_nullable_to_non_nullable
as int,banners: null == banners ? _self.banners : banners // ignore: cast_nullable_to_non_nullable
as int,posters: null == posters ? _self.posters : posters // ignore: cast_nullable_to_non_nullable
as int,socialMediaActivities: null == socialMediaActivities ? _self.socialMediaActivities : socialMediaActivities // ignore: cast_nullable_to_non_nullable
as int,freeTextbooksDistributed: null == freeTextbooksDistributed ? _self.freeTextbooksDistributed : freeTextbooksDistributed // ignore: cast_nullable_to_non_nullable
as int,otherSupport: freezed == otherSupport ? _self.otherSupport : otherSupport // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,remarksUrdu: freezed == remarksUrdu ? _self.remarksUrdu : remarksUrdu // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,achievementPercentage: null == achievementPercentage ? _self.achievementPercentage : achievementPercentage // ignore: cast_nullable_to_non_nullable
as double,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
