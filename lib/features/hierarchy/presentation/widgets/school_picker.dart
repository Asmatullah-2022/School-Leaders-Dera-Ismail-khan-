import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/school_model.dart';
import '../providers/hierarchy_providers.dart';

/// Searchable school selector, scoped to the current user's hierarchy
/// (a school_leader effectively sees only their own school; admins see
/// every school within their assigned scope). Used by every flagship
/// module's form to select which school a record belongs to.
class SchoolPicker extends ConsumerWidget {
  const SchoolPicker({
    super.key,
    required this.selectedSchoolId,
    required this.onChanged,
    this.errorText,
  });

  final String? selectedSchoolId;
  final ValueChanged<SchoolModel> onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<SchoolModel>> schoolsAsync = ref.watch(scopedSchoolsProvider);

    return schoolsAsync.when(
      loading: () => const LinearProgressIndicator(),
      error: (_, _) => Text(l10n.common_error_unknown),
      data: (List<SchoolModel> schools) {
        if (schools.length == 1) {
          final SchoolModel only = schools.first;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (selectedSchoolId != only.id) onChanged(only);
          });
          return InputDecorator(
            decoration: InputDecoration(labelText: l10n.hierarchy_selectSchool),
            child: Text(only.name),
          );
        }
        return Autocomplete<SchoolModel>(
          displayStringForOption: (SchoolModel s) => '${s.name} (${s.emisCode})',
          optionsBuilder: (TextEditingValue value) {
            if (value.text.isEmpty) return schools;
            final String query = value.text.toLowerCase();
            return schools.where(
              (SchoolModel s) =>
                  s.name.toLowerCase().contains(query) || s.emisCode.toLowerCase().contains(query),
            );
          },
          onSelected: onChanged,
          fieldViewBuilder: (context, controller, focusNode, onSubmit) {
            if (selectedSchoolId != null && controller.text.isEmpty) {
              final SchoolModel? match =
                  schools.where((s) => s.id == selectedSchoolId).cast<SchoolModel?>().firstOrNull;
              if (match != null) controller.text = '${match.name} (${match.emisCode})';
            }
            return TextFormField(
              controller: controller,
              focusNode: focusNode,
              decoration: InputDecoration(
                labelText: l10n.hierarchy_selectSchool,
                errorText: errorText,
                prefixIcon: const Icon(Icons.apartment_outlined),
              ),
            );
          },
        );
      },
    );
  }
}
