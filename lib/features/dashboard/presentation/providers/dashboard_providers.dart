import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/dashboard_stats.dart';
import '../../data/dashboard_stats_repository_impl.dart';

final Provider<DashboardStatsRepositoryImpl> dashboardStatsRepositoryProvider =
    Provider<DashboardStatsRepositoryImpl>((ref) => DashboardStatsRepositoryImpl());

/// Aggregated dashboard counters, scoped to the current user's hierarchy.
/// Wired to real Firestore counts once the hierarchy + flagship modules
/// exist (see `dashboard_stats_repository_impl.dart`).
final FutureProvider<DashboardStats> dashboardStatsProvider = FutureProvider<DashboardStats>((ref) {
  return ref.watch(dashboardStatsRepositoryProvider).fetchStats();
});
