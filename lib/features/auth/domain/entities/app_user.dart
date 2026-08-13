import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/app_constants.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

AppRole _roleFromJson(String value) => AppRole.fromFirestoreValue(value);
String _roleToJson(AppRole role) => role.firestoreValue;

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String displayName,
    String? displayNameUrdu,
    String? phone,
    @JsonKey(fromJson: _roleFromJson, toJson: _roleToJson) required AppRole role,
    String? districtId,
    String? subDivisionId,
    String? circleId,
    String? clusterId,
    String? schoolId,
    @Default(true) bool isActive,
    @Default(<String>[]) List<String> fcmTokens,
    @Default('en') String preferredLocale,
  }) = _AppUser;

  const AppUser._();

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

  /// The narrowest non-null scope id for this user, used to build a
  /// [ScopeFilter] for every scoped Firestore query.
  String? get narrowestScopeId => schoolId ?? clusterId ?? circleId ?? subDivisionId ?? districtId;
}
