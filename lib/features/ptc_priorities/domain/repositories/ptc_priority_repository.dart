import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/ptc_priority_model.dart';

abstract class PtcPriorityRepository {
  Stream<List<PtcPriorityModel>> watchByScope(ScopeFilter filter);

  Future<PtcPriorityModel?> getById(String id);

  Future<void> create(PtcPriorityModel priority);

  Future<void> update(PtcPriorityModel priority);

  /// Persists a whole reordering in one batch so ranks can never be observed
  /// half-applied.
  Future<void> updateRanks(List<PtcPriorityModel> priorities);

  Future<void> delete(String id);

  Future<void> queueEvidencePhoto(String priorityId, String localFilePath);
}
