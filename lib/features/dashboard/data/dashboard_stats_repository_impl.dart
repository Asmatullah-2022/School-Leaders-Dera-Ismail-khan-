import '../domain/entities/dashboard_stats.dart';

/// Returns dashboard counters. Currently returns zeros — wired to real
/// scoped Firestore aggregation queries once the hierarchy and flagship
/// modules exist to aggregate from (see project task list step 17).
class DashboardStatsRepositoryImpl {
  Future<DashboardStats> fetchStats() async {
    return const DashboardStats();
  }
}
