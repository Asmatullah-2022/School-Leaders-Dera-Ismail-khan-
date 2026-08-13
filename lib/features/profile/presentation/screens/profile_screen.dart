import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../auth/domain/entities/app_user.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<AppUser?> userAsync = ref.watch(currentUserProvider);

    return AppScaffold(
      title: l10n.profile_title,
      body: userAsync.when(
        loading: () => const LoadingIndicator(),
        error: (_, _) => EmptyState(message: l10n.common_error_unknown, icon: Icons.error_outline),
        data: (AppUser? user) {
          if (user == null) return EmptyState(message: l10n.common_error_auth);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 44,
                  child: Text(
                    user.displayName.isNotEmpty ? user.displayName[0].toUpperCase() : '?',
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(user.displayName, style: Theme.of(context).textTheme.titleLarge),
              ),
              Center(child: Text(user.email, style: Theme.of(context).textTheme.bodyMedium)),
              const SizedBox(height: 24),
              _InfoTile(label: l10n.profile_designation, value: _roleLabel(l10n, user.role)),
              if (user.phone != null) _InfoTile(label: l10n.profile_mobile, value: user.phone!),
              if (user.schoolId != null) _InfoTile(label: l10n.common_school, value: user.schoolId!),
              if (user.clusterId != null) _InfoTile(label: l10n.common_cluster, value: user.clusterId!),
              if (user.circleId != null) _InfoTile(label: l10n.common_circle, value: user.circleId!),
              if (user.subDivisionId != null) _InfoTile(label: l10n.common_subDivision, value: user.subDivisionId!),
              if (user.districtId != null) _InfoTile(label: l10n.common_district, value: user.districtId!),
            ],
          );
        },
      ),
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

class _InfoTile extends StatelessWidget {
  const _InfoTile({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label, style: Theme.of(context).textTheme.bodySmall),
      subtitle: Text(value, style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
