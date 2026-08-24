import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_activity_model.freezed.dart';
part 'community_activity_model.g.dart';

/// Spec §15 — والدین و کمیونٹی رابطہ (parent & community engagement).
enum CommunityActivityType {
  parentMeeting,
  communityMeeting,
  localCommunityEngagement,
  awarenessSession,
  enrollmentCounseling,
  ooscIdentification,
  reEnrollmentActivity,
  communitySupport,
  femaleParentEngagement,
}

@freezed
abstract class CommunityActivityModel with _$CommunityActivityModel {
  const factory CommunityActivityModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required CommunityActivityType activityType,
    required DateTime activityDate,
    @Default(0) int participantsCount,
    @Default(0) int femaleParticipantsCount,
    String? venue,
    String? description,
    String? descriptionUrdu,
    String? remarks,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _CommunityActivityModel;

  const CommunityActivityModel._();

  factory CommunityActivityModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityActivityModelFromJson(json);

  static const Set<String> dateFields = <String>{'activityDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'activityDate';
}
