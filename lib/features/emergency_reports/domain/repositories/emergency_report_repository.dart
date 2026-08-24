import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/emergency_report_model.dart';

abstract class EmergencyReportRepository {
  Stream<List<EmergencyReportModel>> watchByScope(ScopeFilter filter);

  Future<EmergencyReportModel?> getById(String id);

  /// Creates the report and, on success, raises an in-app notification for
  /// the supervising tier so a critical emergency is never only visible to
  /// whoever filed it.
  Future<void> create(EmergencyReportModel report);

  Future<void> update(EmergencyReportModel report);

  Future<void> delete(String id);

  Future<void> queueEvidencePhoto(String reportId, String localFilePath);
}
