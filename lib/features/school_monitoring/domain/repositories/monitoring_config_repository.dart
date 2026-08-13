import '../../data/models/monitoring_config_model.dart';

abstract class MonitoringConfigRepository {
  Stream<MonitoringConfigModel> watch();

  Future<MonitoringConfigModel> get();

  Future<void> save(MonitoringConfigModel config, {required String updatedByUid});
}
