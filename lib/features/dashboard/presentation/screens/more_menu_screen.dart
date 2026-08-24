import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/routing/route_names.dart';

class MoreMenuScreen extends ConsumerWidget {
  const MoreMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AppRole? role = ref.watch(currentRoleProvider);

    final List<_MenuEntry> entries = <_MenuEntry>[
      _MenuEntry(Icons.how_to_reg_outlined, l10n.more_admission, RoutePaths.admission),
      _MenuEntry(Icons.groups_2_outlined, l10n.more_ptc, RoutePaths.ptc),
      _MenuEntry(Icons.event_note_outlined, l10n.more_clusterMeetings, RoutePaths.clusterMeetings),
      _MenuEntry(Icons.child_care_outlined, l10n.more_ece, RoutePaths.ece),
      _MenuEntry(Icons.cleaning_services_outlined, l10n.more_cleanliness, RoutePaths.cleanliness),
      _MenuEntry(Icons.park_outlined, l10n.more_plantation, RoutePaths.plantation),
      _MenuEntry(Icons.diversity_3_outlined, l10n.more_community, RoutePaths.community),
      _MenuEntry(
        Icons.report_problem_outlined,
        l10n.more_schoolProblems,
        RoutePaths.schoolProblems,
      ),
      _MenuEntry(Icons.emergency_outlined, l10n.more_emergency, RoutePaths.emergency),
      _MenuEntry(Icons.campaign_outlined, l10n.more_officialUpdates, RoutePaths.officialUpdates),
      _MenuEntry(Icons.notifications_outlined, l10n.more_notifications, RoutePaths.notifications),
      if (role != null && role.canManageHierarchy) ...<_MenuEntry>[
        _MenuEntry(Icons.map_outlined, l10n.hierarchy_districts, RoutePaths.districts),
        _MenuEntry(Icons.map_outlined, l10n.hierarchy_subDivisions, RoutePaths.subDivisions),
        _MenuEntry(Icons.map_outlined, l10n.hierarchy_circles, RoutePaths.circles),
        _MenuEntry(Icons.hub_outlined, l10n.hierarchy_clusters, RoutePaths.clusters),
      ],
      if (role != null && role.isAdmin)
        _MenuEntry(
          Icons.manage_accounts_outlined,
          l10n.more_adminManagement,
          RoutePaths.adminUsers,
        ),
      if (role == AppRole.superAdmin || role == AppRole.districtAdmin)
        _MenuEntry(Icons.history_edu_outlined, l10n.more_auditLog, RoutePaths.auditLog),
      _MenuEntry(Icons.person_outline, l10n.more_profile, RoutePaths.profile),
      _MenuEntry(Icons.settings_outlined, l10n.more_settings, RoutePaths.settings),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(l10n.nav_more)),
      body: ListView.separated(
        itemCount: entries.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (BuildContext context, int index) {
          final _MenuEntry entry = entries[index];
          return ListTile(
            leading: Icon(entry.icon),
            title: Text(entry.label),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push(entry.route),
          );
        },
      ),
    );
  }
}

class _MenuEntry {
  const _MenuEntry(this.icon, this.label, this.route);
  final IconData icon;
  final String label;
  final String route;
}
