// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
  uid: json['uid'] as String,
  email: json['email'] as String,
  displayName: json['displayName'] as String,
  displayNameUrdu: json['displayNameUrdu'] as String?,
  phone: json['phone'] as String?,
  role: _roleFromJson(json['role'] as String),
  districtId: json['districtId'] as String?,
  subDivisionId: json['subDivisionId'] as String?,
  circleId: json['circleId'] as String?,
  clusterId: json['clusterId'] as String?,
  schoolId: json['schoolId'] as String?,
  isActive: json['isActive'] as bool? ?? true,
  fcmTokens:
      (json['fcmTokens'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
  preferredLocale: json['preferredLocale'] as String? ?? 'en',
);

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
  'uid': instance.uid,
  'email': instance.email,
  'displayName': instance.displayName,
  'displayNameUrdu': instance.displayNameUrdu,
  'phone': instance.phone,
  'role': _roleToJson(instance.role),
  'districtId': instance.districtId,
  'subDivisionId': instance.subDivisionId,
  'circleId': instance.circleId,
  'clusterId': instance.clusterId,
  'schoolId': instance.schoolId,
  'isActive': instance.isActive,
  'fcmTokens': instance.fcmTokens,
  'preferredLocale': instance.preferredLocale,
};
