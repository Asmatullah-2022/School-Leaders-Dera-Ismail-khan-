import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../../notifications/presentation/providers/notification_providers.dart';
import '../../data/emergency_report_repository_impl.dart';
import '../../data/models/emergency_report_model.dart';
import '../../domain/repositories/emergency_report_repository.dart';

final emergencyReportRepositoryProvider = Provider<EmergencyReportRepository>((ref) {
  return EmergencyReportRepositoryImpl(
    ref.watch(firestoreProvider),
    ref.watch(notificationRepositoryProvider),
  );
});

final scopedEmergencyReportsProvider = StreamProvider<List<EmergencyReportModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(emergencyReportRepositoryProvider).watchByScope(filter);
});

final emergencyReportByIdProvider = FutureProvider.family<EmergencyReportModel?, String>((ref, id) {
  return ref.watch(emergencyReportRepositoryProvider).getById(id);
});

/// Unresolved critical emergencies — surfaced prominently on the admin
/// dashboard per spec §27.
final activeCriticalEmergenciesProvider = Provider<List<EmergencyReportModel>>((ref) {
  final List<EmergencyReportModel> all =
      ref.watch(scopedEmergencyReportsProvider).valueOrNull ?? const <EmergencyReportModel>[];
  return all.where((e) => e.isActiveCritical).toList();
});
