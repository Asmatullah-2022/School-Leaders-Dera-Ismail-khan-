// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'official_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfficialUpdateModel {

 String get id; String get title; String? get titleUrdu; String get description; String? get descriptionUrdu; UpdateCategory get category; UpdatePriority get priority; UpdateAudience get targetAudience; DateTime get publishDate; DateTime? get eventDate; String? get districtId; String? get subDivisionId; String? get circleId; String? get clusterId; String? get schoolId; String? get imageUrl; List<String> get attachmentUrls; bool get isPublished; String get publishedByUid; String get publishedByName; DateTime get createdAt; DateTime get updatedAt; String get createdBy;
/// Create a copy of OfficialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfficialUpdateModelCopyWith<OfficialUpdateModel> get copyWith => _$OfficialUpdateModelCopyWithImpl<OfficialUpdateModel>(this as OfficialUpdateModel, _$identity);

  /// Serializes this OfficialUpdateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfficialUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleUrdu, titleUrdu) || other.titleUrdu == titleUrdu)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.attachmentUrls, attachmentUrls)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.publishedByUid, publishedByUid) || other.publishedByUid == publishedByUid)&&(identical(other.publishedByName, publishedByName) || other.publishedByName == publishedByName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,titleUrdu,description,descriptionUrdu,category,priority,targetAudience,publishDate,eventDate,districtId,subDivisionId,circleId,clusterId,schoolId,imageUrl,const DeepCollectionEquality().hash(attachmentUrls),isPublished,publishedByUid,publishedByName,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'OfficialUpdateModel(id: $id, title: $title, titleUrdu: $titleUrdu, description: $description, descriptionUrdu: $descriptionUrdu, category: $category, priority: $priority, targetAudience: $targetAudience, publishDate: $publishDate, eventDate: $eventDate, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, imageUrl: $imageUrl, attachmentUrls: $attachmentUrls, isPublished: $isPublished, publishedByUid: $publishedByUid, publishedByName: $publishedByName, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $OfficialUpdateModelCopyWith<$Res>  {
  factory $OfficialUpdateModelCopyWith(OfficialUpdateModel value, $Res Function(OfficialUpdateModel) _then) = _$OfficialUpdateModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? titleUrdu, String description, String? descriptionUrdu, UpdateCategory category, UpdatePriority priority, UpdateAudience targetAudience, DateTime publishDate, DateTime? eventDate, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, String? imageUrl, List<String> attachmentUrls, bool isPublished, String publishedByUid, String publishedByName, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class _$OfficialUpdateModelCopyWithImpl<$Res>
    implements $OfficialUpdateModelCopyWith<$Res> {
  _$OfficialUpdateModelCopyWithImpl(this._self, this._then);

  final OfficialUpdateModel _self;
  final $Res Function(OfficialUpdateModel) _then;

/// Create a copy of OfficialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? titleUrdu = freezed,Object? description = null,Object? descriptionUrdu = freezed,Object? category = null,Object? priority = null,Object? targetAudience = null,Object? publishDate = null,Object? eventDate = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? imageUrl = freezed,Object? attachmentUrls = null,Object? isPublished = null,Object? publishedByUid = null,Object? publishedByName = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(OfficialUpdateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleUrdu: freezed == titleUrdu ? _self.titleUrdu : titleUrdu // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as UpdateCategory,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as UpdatePriority,targetAudience: null == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as UpdateAudience,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as DateTime,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrls: null == attachmentUrls ? _self.attachmentUrls : attachmentUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,publishedByUid: null == publishedByUid ? _self.publishedByUid : publishedByUid // ignore: cast_nullable_to_non_nullable
as String,publishedByName: null == publishedByName ? _self.publishedByName : publishedByName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OfficialUpdateModel].
extension OfficialUpdateModelPatterns on OfficialUpdateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfficialUpdateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfficialUpdateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfficialUpdateModel value)  $default,){
final _that = this;
switch (_that) {
case _OfficialUpdateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfficialUpdateModel value)?  $default,){
final _that = this;
switch (_that) {
case _OfficialUpdateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? titleUrdu,  String description,  String? descriptionUrdu,  UpdateCategory category,  UpdatePriority priority,  UpdateAudience targetAudience,  DateTime publishDate,  DateTime? eventDate,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String? imageUrl,  List<String> attachmentUrls,  bool isPublished,  String publishedByUid,  String publishedByName,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfficialUpdateModel() when $default != null:
return $default(_that.id,_that.title,_that.titleUrdu,_that.description,_that.descriptionUrdu,_that.category,_that.priority,_that.targetAudience,_that.publishDate,_that.eventDate,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.imageUrl,_that.attachmentUrls,_that.isPublished,_that.publishedByUid,_that.publishedByName,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? titleUrdu,  String description,  String? descriptionUrdu,  UpdateCategory category,  UpdatePriority priority,  UpdateAudience targetAudience,  DateTime publishDate,  DateTime? eventDate,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String? imageUrl,  List<String> attachmentUrls,  bool isPublished,  String publishedByUid,  String publishedByName,  DateTime createdAt,  DateTime updatedAt,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _OfficialUpdateModel():
return $default(_that.id,_that.title,_that.titleUrdu,_that.description,_that.descriptionUrdu,_that.category,_that.priority,_that.targetAudience,_that.publishDate,_that.eventDate,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.imageUrl,_that.attachmentUrls,_that.isPublished,_that.publishedByUid,_that.publishedByName,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? titleUrdu,  String description,  String? descriptionUrdu,  UpdateCategory category,  UpdatePriority priority,  UpdateAudience targetAudience,  DateTime publishDate,  DateTime? eventDate,  String? districtId,  String? subDivisionId,  String? circleId,  String? clusterId,  String? schoolId,  String? imageUrl,  List<String> attachmentUrls,  bool isPublished,  String publishedByUid,  String publishedByName,  DateTime createdAt,  DateTime updatedAt,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _OfficialUpdateModel() when $default != null:
return $default(_that.id,_that.title,_that.titleUrdu,_that.description,_that.descriptionUrdu,_that.category,_that.priority,_that.targetAudience,_that.publishDate,_that.eventDate,_that.districtId,_that.subDivisionId,_that.circleId,_that.clusterId,_that.schoolId,_that.imageUrl,_that.attachmentUrls,_that.isPublished,_that.publishedByUid,_that.publishedByName,_that.createdAt,_that.updatedAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfficialUpdateModel extends OfficialUpdateModel {
  const _OfficialUpdateModel({required this.id, required this.title, this.titleUrdu, required this.description, this.descriptionUrdu, required this.category, this.priority = UpdatePriority.normal, this.targetAudience = UpdateAudience.all, required this.publishDate, this.eventDate, this.districtId, this.subDivisionId, this.circleId, this.clusterId, this.schoolId, this.imageUrl,  List<String> attachmentUrls = const <String>[], this.isPublished = false, required this.publishedByUid, required this.publishedByName, required this.createdAt, required this.updatedAt, required this.createdBy}): _attachmentUrls = attachmentUrls,super._();
  factory _OfficialUpdateModel.fromJson(Map<String, dynamic> json) => _$OfficialUpdateModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? titleUrdu;
@override final  String description;
@override final  String? descriptionUrdu;
@override final  UpdateCategory category;
@override@JsonKey() final  UpdatePriority priority;
@override@JsonKey() final  UpdateAudience targetAudience;
@override final  DateTime publishDate;
@override final  DateTime? eventDate;
@override final  String? districtId;
@override final  String? subDivisionId;
@override final  String? circleId;
@override final  String? clusterId;
@override final  String? schoolId;
@override final  String? imageUrl;
 final  List<String> _attachmentUrls;
@override@JsonKey() List<String> get attachmentUrls {
  if (_attachmentUrls is EqualUnmodifiableListView) return _attachmentUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachmentUrls);
}

@override@JsonKey() final  bool isPublished;
@override final  String publishedByUid;
@override final  String publishedByName;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String createdBy;

/// Create a copy of OfficialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfficialUpdateModelCopyWith<_OfficialUpdateModel> get copyWith => __$OfficialUpdateModelCopyWithImpl<_OfficialUpdateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfficialUpdateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfficialUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleUrdu, titleUrdu) || other.titleUrdu == titleUrdu)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionUrdu, descriptionUrdu) || other.descriptionUrdu == descriptionUrdu)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.publishDate, publishDate) || other.publishDate == publishDate)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.districtId, districtId) || other.districtId == districtId)&&(identical(other.subDivisionId, subDivisionId) || other.subDivisionId == subDivisionId)&&(identical(other.circleId, circleId) || other.circleId == circleId)&&(identical(other.clusterId, clusterId) || other.clusterId == clusterId)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._attachmentUrls, _attachmentUrls)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.publishedByUid, publishedByUid) || other.publishedByUid == publishedByUid)&&(identical(other.publishedByName, publishedByName) || other.publishedByName == publishedByName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,titleUrdu,description,descriptionUrdu,category,priority,targetAudience,publishDate,eventDate,districtId,subDivisionId,circleId,clusterId,schoolId,imageUrl,const DeepCollectionEquality().hash(_attachmentUrls),isPublished,publishedByUid,publishedByName,createdAt,updatedAt,createdBy]);

@override
String toString() {
  return 'OfficialUpdateModel(id: $id, title: $title, titleUrdu: $titleUrdu, description: $description, descriptionUrdu: $descriptionUrdu, category: $category, priority: $priority, targetAudience: $targetAudience, publishDate: $publishDate, eventDate: $eventDate, districtId: $districtId, subDivisionId: $subDivisionId, circleId: $circleId, clusterId: $clusterId, schoolId: $schoolId, imageUrl: $imageUrl, attachmentUrls: $attachmentUrls, isPublished: $isPublished, publishedByUid: $publishedByUid, publishedByName: $publishedByName, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$OfficialUpdateModelCopyWith<$Res> implements $OfficialUpdateModelCopyWith<$Res> {
  factory _$OfficialUpdateModelCopyWith(_OfficialUpdateModel value, $Res Function(_OfficialUpdateModel) _then) = __$OfficialUpdateModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? titleUrdu, String description, String? descriptionUrdu, UpdateCategory category, UpdatePriority priority, UpdateAudience targetAudience, DateTime publishDate, DateTime? eventDate, String? districtId, String? subDivisionId, String? circleId, String? clusterId, String? schoolId, String? imageUrl, List<String> attachmentUrls, bool isPublished, String publishedByUid, String publishedByName, DateTime createdAt, DateTime updatedAt, String createdBy
});




}
/// @nodoc
class __$OfficialUpdateModelCopyWithImpl<$Res>
    implements _$OfficialUpdateModelCopyWith<$Res> {
  __$OfficialUpdateModelCopyWithImpl(this._self, this._then);

  final _OfficialUpdateModel _self;
  final $Res Function(_OfficialUpdateModel) _then;

/// Create a copy of OfficialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleUrdu = freezed,Object? description = null,Object? descriptionUrdu = freezed,Object? category = null,Object? priority = null,Object? targetAudience = null,Object? publishDate = null,Object? eventDate = freezed,Object? districtId = freezed,Object? subDivisionId = freezed,Object? circleId = freezed,Object? clusterId = freezed,Object? schoolId = freezed,Object? imageUrl = freezed,Object? attachmentUrls = null,Object? isPublished = null,Object? publishedByUid = null,Object? publishedByName = null,Object? createdAt = null,Object? updatedAt = null,Object? createdBy = null,}) {
  return _then(_OfficialUpdateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleUrdu: freezed == titleUrdu ? _self.titleUrdu : titleUrdu // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionUrdu: freezed == descriptionUrdu ? _self.descriptionUrdu : descriptionUrdu // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as UpdateCategory,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as UpdatePriority,targetAudience: null == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as UpdateAudience,publishDate: null == publishDate ? _self.publishDate : publishDate // ignore: cast_nullable_to_non_nullable
as DateTime,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,districtId: freezed == districtId ? _self.districtId : districtId // ignore: cast_nullable_to_non_nullable
as String?,subDivisionId: freezed == subDivisionId ? _self.subDivisionId : subDivisionId // ignore: cast_nullable_to_non_nullable
as String?,circleId: freezed == circleId ? _self.circleId : circleId // ignore: cast_nullable_to_non_nullable
as String?,clusterId: freezed == clusterId ? _self.clusterId : clusterId // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrls: null == attachmentUrls ? _self._attachmentUrls : attachmentUrls // ignore: cast_nullable_to_non_nullable
as List<String>,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,publishedByUid: null == publishedByUid ? _self.publishedByUid : publishedByUid // ignore: cast_nullable_to_non_nullable
as String,publishedByName: null == publishedByName ? _self.publishedByName : publishedByName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
