import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/school_functionality_model.dart';
import '../widgets/functionality_status_labels.dart';
import 'functionality_detail_screen.dart';
import 'functionality_form_screen.dart';

class FunctionalityListScreen extends ConsumerWidget {
  const FunctionalityListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<SchoolFunctionalityModel>> async = ref.watch(
      scopedSchoolFunctionalityProvider,
    );

    return AppScaffold(
      title: l10n.functionality_title,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const FunctionalityFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.functionality_addAssessment),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<SchoolFunctionalityModel> items) {
          if (items.isEmpty) {
            return EmptyState(
              message: l10n.functionality_noAssessments,
              icon: Icons.fact_check_outlined,
            );
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final SchoolFunctionalityModel f = items[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: functionalityStatusColor(f.overallStatus)
                        .withValues(alpha: 0.15),
                    child: Icon(
                      Icons.school_outlined,
                      color: functionalityStatusColor(f.overallStatus),
                    ),
                  ),
                  title: Text(functionalityStatusLabel(l10n, f.overallStatus)),
                  subtitle: Text(DateFormat.yMMMd().format(f.assessmentDate)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => FunctionalityDetailScreen(recordId: f.id),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
