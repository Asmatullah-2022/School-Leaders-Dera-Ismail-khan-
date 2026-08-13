import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/admission_campaign_model.dart';

abstract class AdmissionCampaignRepository {
  Stream<List<AdmissionCampaignModel>> watchByScope(ScopeFilter filter);

  Future<AdmissionCampaignModel?> getById(String id);

  Future<void> create(AdmissionCampaignModel campaign);

  Future<void> update(AdmissionCampaignModel campaign);

  Future<void> delete(String id);

  Future<void> queueEvidencePhoto(String campaignId, String localFilePath);
}
