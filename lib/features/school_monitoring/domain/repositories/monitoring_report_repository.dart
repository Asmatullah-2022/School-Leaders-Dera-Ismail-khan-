import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/monitoring_report_model.dart';

abstract class MonitoringReportRepository {
  Stream<List<MonitoringReportModel>> watchByScope(ScopeFilter filter);

  Future<MonitoringReportModel?> getById(String id);

  Future<void> create(MonitoringReportModel report);

  Future<void> update(MonitoringReportModel report);

  Future<void> delete(String id);

  Future<void> queueEvidencePhoto(String reportId, String localFilePath);
}
