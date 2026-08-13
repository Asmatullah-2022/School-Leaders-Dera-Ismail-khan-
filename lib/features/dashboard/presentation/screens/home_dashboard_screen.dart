import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/routing/route_names.dart';
import '../../../../core/widgets/stat_card.dart';
import '../../../auth/domain/entities/app_user.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../../notifications/presentation/screens/notification_list_screen.dart';
import '../providers/dashboard_providers.dart';

class HomeDashboardScreen extends ConsumerWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<AppUser?> userAsync = ref.watch(currentUserProvider);
    final AppUser? user = userAsync.valueOrNull;
    final dashboardStats = ref.watch(dashboardStatsProvider);

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 128,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications_outlined),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const NotificationListScreen()),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () => ref.read(authRepositoryProvider).signOut(),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsetsDirectional.only(start: 16, bottom: 16, end: 16),
            title: const Text(AppConstants.appName, style: TextStyle(fontSize: 16)),
            background: Container(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              padding: const EdgeInsets.fromLTRB(16, 56, 16, 48),
              alignment: AlignmentDirectional.bottomStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(l10n.districtLabel, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                  if (user != null)
                    Text(
                      '${user.displayName} · ${_roleLabel(l10n, user.role)}',
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.5,
                children: <Widget>[
                  StatCard(
                    label: l10n.dashboard_totalSchools,
                    value: dashboardStats.valueOrNull?.totalSchools.toString() ?? '—',
                    icon: Icons.apartment_outlined,
                  ),
                  StatCard(
                    label: l10n.dashboard_totalClusters,
                    value: dashboardStats.valueOrNull?.totalClusters.toString() ?? '—',
                    icon: Icons.hub_outlined,
                  ),
                  StatCard(
                    label: l10n.dashboard_totalEnrollment,
                    value: dashboardStats.valueOrNull?.totalEnrollment.toString() ?? '—',
                    icon: Icons.groups_outlined,
                  ),
                  StatCard(
                    label: l10n.dashboard_oosc,
                    value: dashboardStats.valueOrNull?.ooscCount.toString() ?? '—',
                    icon: Icons.person_search_outlined,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  StatCard(
                    label: l10n.dashboard_schoolsNeedingAttention,
                    value: dashboardStats.valueOrNull?.schoolsNeedingAttention.toString() ?? '—',
                    icon: Icons.warning_amber_outlined,
                    color: Colors.red,
                  ),
                  StatCard(
                    label: l10n.dashboard_pendingReports,
                    value: dashboardStats.valueOrNull?.pendingReports.toString() ?? '—',
                    icon: Icons.pending_actions_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(l10n.dashboard_quickActions, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.95,
                children: <Widget>[
                  _QuickAction(
                    icon: Icons.how_to_reg_outlined,
                    label: l10n.dashboard_qa_admission,
                    onTap: () => context.push(RoutePaths.admissionForm),
                  ),
                  _QuickAction(
                    icon: Icons.fact_check_outlined,
                    label: l10n.dashboard_qa_monitoring,
                    onTap: () => context.push(RoutePaths.monitoringForm),
                  ),
                  _QuickAction(
                    icon: Icons.report_problem_outlined,
                    label: l10n.dashboard_qa_problem,
                    onTap: () => context.push(RoutePaths.schoolProblemForm),
                  ),
                  _QuickAction(
                    icon: Icons.emergency_outlined,
                    label: l10n.dashboard_qa_emergency,
                    color: Colors.red,
                    onTap: () => context.push(RoutePaths.emergencyForm),
                  ),
                  _QuickAction(
                    icon: Icons.groups_2_outlined,
                    label: l10n.dashboard_qa_ptc,
                    onTap: () => context.push(RoutePaths.ptcForm),
                  ),
                  _QuickAction(
                    icon: Icons.diversity_3_outlined,
                    label: l10n.dashboard_qa_community,
                    onTap: () => context.push(RoutePaths.community),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }

  String _roleLabel(AppLocalizations l10n, AppRole role) => switch (role) {
        AppRole.superAdmin => l10n.role_superAdmin,
        AppRole.districtAdmin => l10n.role_districtAdmin,
        AppRole.subDivisionAdmin => l10n.role_subDivisionAdmin,
        AppRole.circleAdmin => l10n.role_circleAdmin,
        AppRole.schoolLeader => l10n.role_schoolLeader,
        AppRole.monitoringOfficer => l10n.role_monitoringOfficer,
      };
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({required this.icon, required this.label, required this.onTap, this.color});

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    final Color accent = color ?? scheme.primary;
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, color: accent, size: 28),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
