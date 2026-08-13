import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/oosc_record_model.dart';

abstract class OoscRepository {
  Stream<List<OoscRecordModel>> watchByScope(ScopeFilter filter);

  Stream<List<OoscRecordModel>> watchByCampaign(String campaignId);

  Future<OoscRecordModel?> getById(String id);

  Future<void> create(OoscRecordModel record);

  Future<void> update(OoscRecordModel record);

  Future<void> delete(String id);

  Future<void> queueEvidencePhoto(String recordId, String localFilePath);
}
