import 'package:freezed_annotation/freezed_annotation.dart';

part 'cluster_meeting_model.freezed.dart';
part 'cluster_meeting_model.g.dart';

/// Spec §20 — کلسٹر وائز اجلاس (cluster-wise meeting).
enum MeetingStatus { pending, inProgress, completed }

@freezed
abstract class ClusterMeetingModel with _$ClusterMeetingModel {
  const factory ClusterMeetingModel({
    required String id,
    /// Cluster meetings are scoped at cluster level; [schoolId] stays null so
    /// the shared ScopeFilter resolves them for everyone in the cluster.
    String? schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required DateTime meetingDate,
    String? meetingTime,
    String? venue,
    String? chairperson,
    @Default(0) int participantsCount,
    @Default(<String>[]) List<String> participatingSchoolIds,
    String? agenda,
    String? agendaUrdu,
    String? decisions,
    String? minutes,
    @Default(MeetingStatus.pending) MeetingStatus status,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _ClusterMeetingModel;

  const ClusterMeetingModel._();

  factory ClusterMeetingModel.fromJson(Map<String, dynamic> json) =>
      _$ClusterMeetingModelFromJson(json);

  static const Set<String> dateFields = <String>{'meetingDate', 'createdAt', 'updatedAt'};
  static const String orderByField = 'meetingDate';
}

/// Action items agreed at a meeting, stored in the
/// `cluster_meetings/{id}/meeting_actions` subcollection.
@freezed
abstract class MeetingActionModel with _$MeetingActionModel {
  const factory MeetingActionModel({
    required String id,
    required String meetingId,
    required String actionText,
    String? actionTextUrdu,
    String? responsiblePersonName,
    String? assignedToUid,
    DateTime? deadline,
    @Default(MeetingStatus.pending) MeetingStatus status,
    String? completionNotes,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _MeetingActionModel;

  const MeetingActionModel._();

  factory MeetingActionModel.fromJson(Map<String, dynamic> json) =>
      _$MeetingActionModelFromJson(json);

  static const Set<String> dateFields = <String>{'deadline', 'createdAt', 'updatedAt'};
}
