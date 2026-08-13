import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/school_model.dart';
import '../providers/hierarchy_providers.dart';
import 'school_form_screen.dart';

class SchoolDetailScreen extends ConsumerWidget {
  const SchoolDetailScreen({super.key, required this.schoolId});

  final String schoolId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<SchoolModel?> schoolAsync = ref.watch(schoolByIdProvider(schoolId));
    final AppRole? role = ref.watch(currentRoleProvider);

    return AppScaffold(
      title: l10n.hierarchy_schools,
      actions: <Widget>[
        if (role != null && role.canManageHierarchy)
          schoolAsync.maybeWhen(
            data: (SchoolModel? s) => s == null
                ? const SizedBox.shrink()
                : IconButton(
                    icon: const Icon(Icons.edit_outlined),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute<void>(builder: (_) => SchoolFormScreen(existing: s)),
                    ),
                  ),
            orElse: () => const SizedBox.shrink(),
          ),
      ],
      body: schoolAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (SchoolModel? school) {
          if (school == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Text(school.name, style: Theme.of(context).textTheme.headlineSmall),
              if (school.nameUrdu != null) Text(school.nameUrdu!, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 4),
              Chip(label: Text('${l10n.hierarchy_emisCode}: ${school.emisCode}')),
              const SizedBox(height: 16),
              _row(context, l10n.hierarchy_village, school.village ?? '—'),
              _row(context, l10n.hierarchy_schoolLevel, school.level.name),
              _row(context, l10n.hierarchy_schoolType, school.gender.name),
              _row(context, l10n.hierarchy_headTeacher, school.headTeacherName ?? '—'),
              _row(context, l10n.profile_mobile, school.contactPhone ?? '—'),
              const Divider(height: 32),
              _row(context, l10n.hierarchy_teachers, '${school.teachersCount}'),
              _row(context, l10n.hierarchy_boys, '${school.boysCount}'),
              _row(context, l10n.hierarchy_girls, '${school.girlsCount}'),
              _row(context, l10n.hierarchy_totalEnrollment, '${school.totalEnrollment}'),
              _row(context, l10n.hierarchy_classrooms, '${school.classrooms}'),
              _row(context, l10n.hierarchy_toilets, '${school.toilets}'),
              const Divider(height: 32),
              Text(l10n.hierarchy_facilities, style: Theme.of(context).textTheme.titleSmall),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: <Widget>[
                  if (school.drinkingWater) Chip(label: Text(l10n.hierarchy_drinkingWater)),
                  if (school.electricity) Chip(label: Text(l10n.hierarchy_electricity)),
                  if (school.boundaryWall) Chip(label: Text(l10n.hierarchy_boundaryWall)),
                  if (school.eceRoom) Chip(label: Text(l10n.hierarchy_eceRoom)),
                  if (school.playground) Chip(label: Text(l10n.hierarchy_playground)),
                  if (school.furniture) Chip(label: Text(l10n.hierarchy_furniture)),
                  if (school.library) Chip(label: Text(l10n.hierarchy_library)),
                  if (school.itFacilities) Chip(label: Text(l10n.hierarchy_itFacilities)),
                ],
              ),
              const SizedBox(height: 16),
              _row(context, l10n.hierarchy_buildingCondition, school.buildingCondition.name),
              if (school.latitude != null && school.longitude != null)
                _row(context, l10n.hierarchy_location, '${school.latitude}, ${school.longitude}'),
            ],
          );
        },
      ),
    );
  }

  Widget _row(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 140, child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
          Expanded(child: Text(value, style: Theme.of(context).textTheme.bodyLarge)),
        ],
      ),
    );
  }
}
