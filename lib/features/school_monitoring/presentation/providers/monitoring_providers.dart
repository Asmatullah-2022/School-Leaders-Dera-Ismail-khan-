import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../data/models/monitoring_config_model.dart';
import '../../data/models/monitoring_report_model.dart';
import '../../data/monitoring_config_repository_impl.dart';
import '../../data/monitoring_report_repository_impl.dart';
import '../../domain/repositories/monitoring_config_repository.dart';
import '../../domain/repositories/monitoring_report_repository.dart';

final monitoringConfigRepositoryProvider = Provider<MonitoringConfigRepository>((ref) {
  return MonitoringConfigRepositoryImpl(ref.watch(firestoreProvider));
});

final monitoringConfigProvider = StreamProvider<MonitoringConfigModel>((ref) {
  return ref.watch(monitoringConfigRepositoryProvider).watch();
});

final monitoringReportRepositoryProvider = Provider<MonitoringReportRepository>((ref) {
  return MonitoringReportRepositoryImpl(ref.watch(firestoreProvider));
});

final scopedMonitoringReportsProvider = StreamProvider<List<MonitoringReportModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(monitoringReportRepositoryProvider).watchByScope(filter);
});

final monitoringReportByIdProvider = FutureProvider.family<MonitoringReportModel?, String>((
  ref,
  id,
) {
  return ref.watch(monitoringReportRepositoryProvider).getById(id);
});
