// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media_campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialMediaCampaignModel {

 String get id; String get schoolId; String get clusterId; String get circleId; String get subDivisionId; String get districtId; String get campaignTitle; SocialPlatform get platform; DateTime get postDate; String? get description; String? get descriptionUrdu; String? get postUrl;/// Reach/engagement are optional — platforms don't always expose them.
 int? get reach; int? get engagement; List<String> get evidencePhotoUrls; bool get isSynced; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of SocialMediaCampaignModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialMediaCampaignModelCopyWith<SocialMediaCampaignModel> get copyWith => _$SocialMediaCampaignModelCopyWithImpl<SocialMediaCampaignModel>(this as SocialMediaCampaignModel, _$identity);

  /// Serializes this SocialMediaCampaignModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialMediaCampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.postDate, postDate) || other.postDate == postDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.postUrl, postUrl) || other.postUrl == postUrl)&&(identical(other.reach, reach) || other.reach == reach)&&(identical(other.engagement, engagement) || other.engagement == engagement)&&const DeepCollectionEquality().equals(other.evidencePhotoUrls, evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,campaignTitle,platform,postDate,description,descriptionUrdu,postUrl,reach,engagement,const DeepCollectionEquality().hash(evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SocialMediaCampaignModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, campaignTitle: $campaignTitle, platform: $platform, postDate: $postDate, description: $description, descriptionUrdu: $descriptionUrdu, postUrl: $postUrl, reach: $reach, engagement: $engagement, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $SocialMediaCampaignModelCopyWith<$Res>  {
  factory $SocialMediaCampaignModelCopyWith(SocialMediaCampaignModel value, $Res Function(SocialMediaCampaignModel) _then) = _$SocialMediaCampaignModelCopyWithImpl;
@useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String campaignTitle, SocialPlatform platform, DateTime postDate, String? description, String? descriptionUrdu, String? postUrl, int? reach, int? engagement, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$SocialMediaCampaignModelCopyWithImpl<$Res>
    implements $SocialMediaCampaignModelCopyWith<$Res> {
  _$SocialMediaCampaignModelCopyWithImpl(this._self, this._then);

  final SocialMediaCampaignModel _self;
  final $Res Function(SocialMediaCampaignModel) _then;

/// Create a copy of SocialMediaCampaignModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? campaignTitle = null,Object? platform = null,Object? postDate = null,Object? description = freezed,Object? descriptionUrdu = freezed,Object? postUrl = freezed,Object? reach = freezed,Object? engagement = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(SocialMediaCampaignModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,campaignTitle: null == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as SocialPlatform,postDate: null == postDate ? _self.postDate : postDate // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,postUrl: freezed == postUrl ? _self.postUrl : postUrl // ignore: cast_nullable_to_non_nullable
as String?,reach: freezed == reach ? _self.reach : reach // ignore: cast_nullable_to_non_nullable
as int?,engagement: freezed == engagement ? _self.engagement : engagement // ignore: cast_nullable_to_non_nullable
as int?,evidencePhotoUrls: null == evidencePhotoUrls ? _self.evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialMediaCampaignModel].
extension SocialMediaCampaignModelPatterns on SocialMediaCampaignModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialMediaCampaignModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialMediaCampaignModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialMediaCampaignModel value)  $default,){
final _that = this;
switch (_that) {
case _SocialMediaCampaignModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialMediaCampaignModel value)?  $default,){
final _that = this;
switch (_that) {
case _SocialMediaCampaignModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String campaignTitle,  SocialPlatform platform,  DateTime postDate,  String? description,  String? descriptionUrdu,  String? postUrl,  int? reach,  int? engagement,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialMediaCampaignModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.campaignTitle,_that.platform,_that.postDate,_that.description,_that.descriptionUrdu,_that.postUrl,_that.reach,_that.engagement,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String campaignTitle,  SocialPlatform platform,  DateTime postDate,  String? description,  String? descriptionUrdu,  String? postUrl,  int? reach,  int? engagement,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _SocialMediaCampaignModel():
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.campaignTitle,_that.platform,_that.postDate,_that.description,_that.descriptionUrdu,_that.postUrl,_that.reach,_that.engagement,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String schoolId,  String clusterId,  String circleId,  String subDivisionId,  String districtId,  String campaignTitle,  SocialPlatform platform,  DateTime postDate,  String? description,  String? descriptionUrdu,  String? postUrl,  int? reach,  int? engagement,  List<String> evidencePhotoUrls,  bool isSynced,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _SocialMediaCampaignModel() when $default != null:
return $default(_that.id,_that.schoolId,_that.clusterId,_that.circleId,_that.subDivisionId,_that.districtId,_that.campaignTitle,_that.platform,_that.postDate,_that.description,_that.descriptionUrdu,_that.postUrl,_that.reach,_that.engagement,_that.evidencePhotoUrls,_that.isSynced,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialMediaCampaignModel extends SocialMediaCampaignModel {
  const _SocialMediaCampaignModel({required this.id, required this.schoolId, required this.clusterId, required this.circleId, required this.subDivisionId, required this.districtId, required this.campaignTitle, required this.platform, required this.postDate, this.description, this.descriptionUrdu, this.postUrl, this.reach, this.engagement,  List<String> evidencePhotoUrls = const <String>[], this.isSynced = true, required this.createdAt, required this.updatedAt, required this.createdBy}): _evidencePhotoUrls = evidencePhotoUrls,super._();
  factory _SocialMediaCampaignModel.fromJson(Map<String, dynamic> json) => _$SocialMediaCampaignModelFromJson(json);

@override final  String id;
@override final  String schoolId;
@override final  String clusterId;
@override final  String circleId;
@override final  String subDivisionId;
@override final  String districtId;
@override final  String campaignTitle;
@override final  SocialPlatform platform;
@override final  DateTime postDate;
@override final  String? description;
@override final  String? descriptionUrdu;
@override final  String? postUrl;
/// Reach/engagement are optional — platforms don't always expose them.
@override final  int? reach;
@override final  int? engagement;
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

/// Create a copy of SocialMediaCampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialMediaCampaignModelCopyWith<_SocialMediaCampaignModel> get copyWith => __$SocialMediaCampaignModelCopyWithImpl<_SocialMediaCampaignModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialMediaCampaignModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialMediaCampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.postDate, postDate) || other.postDate == postDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.postUrl, postUrl) || other.postUrl == postUrl)&&(identical(other.reach, reach) || other.reach == reach)&&(identical(other.engagement, engagement) || other.engagement == engagement)&&const DeepCollectionEquality().equals(other._evidencePhotoUrls, _evidencePhotoUrls)&&(identical(other.isSynced, isSynced) || other.isSynced == isSynced)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,schoolId,clusterId,circleId,subDivisionId,districtId,campaignTitle,platform,postDate,description,descriptionUrdu,postUrl,reach,engagement,const DeepCollectionEquality().hash(_evidencePhotoUrls),isSynced,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'SocialMediaCampaignModel(id: $id, schoolId: $schoolId, clusterId: $clusterId, circleId: $circleId, subDivisionId: $subDivisionId, districtId: $districtId, campaignTitle: $campaignTitle, platform: $platform, postDate: $postDate, description: $description, descriptionUrdu: $descriptionUrdu, postUrl: $postUrl, reach: $reach, engagement: $engagement, evidencePhotoUrls: $evidencePhotoUrls, isSynced: $isSynced, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$SocialMediaCampaignModelCopyWith<$Res> implements $SocialMediaCampaignModelCopyWith<$Res> {
  factory _$SocialMediaCampaignModelCopyWith(_SocialMediaCampaignModel value, $Res Function(_SocialMediaCampaignModel) _then) = __$SocialMediaCampaignModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String schoolId, String clusterId, String circleId, String subDivisionId, String districtId, String campaignTitle, SocialPlatform platform, DateTime postDate, String? description, String? descriptionUrdu, String? postUrl, int? reach, int? engagement, List<String> evidencePhotoUrls, bool isSynced, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$SocialMediaCampaignModelCopyWithImpl<$Res>
    implements _$SocialMediaCampaignModelCopyWith<$Res> {
  __$SocialMediaCampaignModelCopyWithImpl(this._self, this._then);

  final _SocialMediaCampaignModel _self;
  final $Res Function(_SocialMediaCampaignModel) _then;

/// Create a copy of SocialMediaCampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? schoolId = null,Object? clusterId = null,Object? circleId = null,Object? subDivisionId = null,Object? districtId = null,Object? campaignTitle = null,Object? platform = null,Object? postDate = null,Object? description = freezed,Object? descriptionUrdu = freezed,Object? postUrl = freezed,Object? reach = freezed,Object? engagement = freezed,Object? evidencePhotoUrls = null,Object? isSynced = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_SocialMediaCampaignModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,clusterId: null == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String,circleId: null == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String,subDivisionId: null == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String,districtId: null == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String,campaignTitle: null == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as SocialPlatform,postDate: null == postDate ? _self.postDate : postDate // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,postUrl: freezed == postUrl ? _self.postUrl : postUrl // ignore: cast_nullable_to_non_nullable
as String?,reach: freezed == reach ? _self.reach : reach // ignore: cast_nullable_to_non_nullable
as int?,engagement: freezed == engagement ? _self.engagement : engagement // ignore: cast_nullable_to_non_nullable
as int?,evidencePhotoUrls: null == evidencePhotoUrls ? _self._evidencePhotoUrls : evidencePhotoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isSynced: null == isSynced ? _self.isSynced : isSynced // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
