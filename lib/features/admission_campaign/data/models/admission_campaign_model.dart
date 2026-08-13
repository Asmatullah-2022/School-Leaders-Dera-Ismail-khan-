import 'package:freezed_annotation/freezed_annotation.dart';

part 'admission_campaign_model.freezed.dart';
part 'admission_campaign_model.g.dart';

enum CampaignStatus { planned, active, completed }

@freezed
abstract class AdmissionCampaignModel with _$AdmissionCampaignModel {
  const factory AdmissionCampaignModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String academicYear,
    required int targetEnrollment,
    @Default(0) int previousEnrollment,
    @Default(0) int currentEnrollment,
    @Default(0) int newAdmissionsBoys,
    @Default(0) int newAdmissionsGirls,
    @Default(0) int ooscIdentified,
    @Default(0) int ooscReenrolled,
    @Default(0) int doorToDoorVisits,
    @Default(0) int parentMeetings,
    @Default(0) int communityMeetings,
    @Default(0) int banners,
    @Default(0) int posters,
    @Default(0) int socialMediaActivities,
    @Default(0) int freeTextbooksDistributed,
    String? otherSupport,
    String? remarks,
    String? remarksUrdu,
    required DateTime date,
    @Default(CampaignStatus.active) CampaignStatus status,
    @Default(0.0) double achievementPercentage,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _AdmissionCampaignModel;

  const AdmissionCampaignModel._();

  factory AdmissionCampaignModel.fromJson(Map<String, dynamic> json) =>
      _$AdmissionCampaignModelFromJson(json);

  static const Set<String> dateFields = <String>{'date', 'createdAt', 'updatedAt'};

  int get newAdmissionsTotal => newAdmissionsBoys + newAdmissionsGirls;
}
