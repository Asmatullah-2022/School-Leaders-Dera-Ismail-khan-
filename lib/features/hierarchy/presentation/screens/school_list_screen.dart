import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/school_model.dart';
import '../providers/hierarchy_providers.dart';
import 'school_detail_screen.dart';
import 'school_form_screen.dart';

class SchoolListScreen extends ConsumerStatefulWidget {
  const SchoolListScreen({super.key});

  @override
  ConsumerState<SchoolListScreen> createState() => _SchoolListScreenState();
}

class _SchoolListScreenState extends ConsumerState<SchoolListScreen> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<SchoolModel>> schoolsAsync = ref.watch(scopedSchoolsProvider);
    final AppRole? role = ref.watch(currentRoleProvider);

    return AppScaffold(
      title: l10n.hierarchy_schools,
      floatingActionButton: (role != null && role.canManageHierarchy)
          ? FloatingActionButton.extended(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const SchoolFormScreen()),
              ),
              icon: const Icon(Icons.add),
              label: Text(l10n.hierarchy_addSchool),
            )
          : null,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: l10n.common_search,
                isDense: true,
              ),
              onChanged: (String v) => setState(() => _query = v.toLowerCase()),
            ),
          ),
          Expanded(
            child: schoolsAsync.when(
              loading: () => const LoadingIndicator(),
              error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
              data: (List<SchoolModel> schools) {
                final List<SchoolModel> filtered = _query.isEmpty
                    ? schools
                    : schools
                        .where((s) =>
                            s.name.toLowerCase().contains(_query) ||
                            s.emisCode.toLowerCase().contains(_query) ||
                            (s.village?.toLowerCase().contains(_query) ?? false))
                        .toList();
                if (filtered.isEmpty) {
                  return EmptyState(message: l10n.hierarchy_noSchools, icon: Icons.apartment_outlined);
                }
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: filtered.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 4),
                  itemBuilder: (BuildContext context, int index) {
                    final SchoolModel school = filtered[index];
                    return Card(
                      child: ListTile(
                        leading: CircleIcon(isActive: school.isActive),
                        title: Text(school.name),
                        subtitle: Text('${l10n.hierarchy_emisCode}: ${school.emisCode}'),
                        trailing: Text('${school.totalEnrollment}'),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(builder: (_) => SchoolDetailScreen(schoolId: school.id)),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isActive ? AppColors.success : Theme.of(context).colorScheme.errorContainer,
      child: const Icon(Icons.apartment, size: 18, color: Colors.white),
    );
  }
}
