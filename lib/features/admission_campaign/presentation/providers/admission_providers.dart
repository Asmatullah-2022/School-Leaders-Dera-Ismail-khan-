import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../data/admission_campaign_repository_impl.dart';
import '../../data/models/admission_campaign_model.dart';
import '../../data/models/oosc_record_model.dart';
import '../../data/oosc_repository_impl.dart';
import '../../domain/repositories/admission_campaign_repository.dart';
import '../../domain/repositories/oosc_repository.dart';

final admissionCampaignRepositoryProvider = Provider<AdmissionCampaignRepository>((ref) {
  return AdmissionCampaignRepositoryImpl(ref.watch(firestoreProvider));
});

final scopedAdmissionCampaignsProvider = StreamProvider<List<AdmissionCampaignModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(admissionCampaignRepositoryProvider).watchByScope(filter);
});

final admissionCampaignByIdProvider = FutureProvider.family<AdmissionCampaignModel?, String>((
  ref,
  id,
) {
  return ref.watch(admissionCampaignRepositoryProvider).getById(id);
});

final ooscRepositoryProvider = Provider<OoscRepository>((ref) {
  return OoscRepositoryImpl(ref.watch(firestoreProvider));
});

final scopedOoscRecordsProvider = StreamProvider<List<OoscRecordModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(ooscRepositoryProvider).watchByScope(filter);
});

final ooscByCampaignProvider = StreamProvider.family<List<OoscRecordModel>, String>((
  ref,
  campaignId,
) {
  return ref.watch(ooscRepositoryProvider).watchByCampaign(campaignId);
});

final ooscByIdProvider = FutureProvider.family<OoscRecordModel?, String>((ref, id) {
  return ref.watch(ooscRepositoryProvider).getById(id);
});
