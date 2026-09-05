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
import 'functionality_form_screen.dart';

class FunctionalityDetailScreen extends ConsumerWidget {
  const FunctionalityDetailScreen({super.key, required this.recordId});

  final String recordId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<SchoolFunctionalityModel?> async = ref.watch(
      schoolFunctionalityByIdProvider(recordId),
    );

    return AppScaffold(
      title: l10n.functionality_title,
      actions: <Widget>[
        async.maybeWhen(
          data: (SchoolFunctionalityModel? f) => f == null
              ? const SizedBox.shrink()
              : IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => FunctionalityFormScreen(existing: f)),
                  ),
                ),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (SchoolFunctionalityModel? f) {
          if (f == null) return EmptyState(message: l10n.common_error_notFound);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      DateFormat.yMMMd().format(f.assessmentDate),
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Chip(
                    label: Text(functionalityStatusLabel(l10n, f.overallStatus)),
                    backgroundColor: functionalityStatusColor(f.overallStatus)
                        .withValues(alpha: 0.15),
                    labelStyle: TextStyle(color: functionalityStatusColor(f.overallStatus)),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _row(
                context,
                l10n.functionality_teachersPresent,
                '${f.teachersPresent} / ${f.teachersTotal}  (${(f.teacherAttendanceRate * 100).toStringAsFixed(0)}%)',
              ),
              _row(
                context,
                l10n.functionality_studentsPresent,
                '${f.studentsPresent} / ${f.studentsTotal}  (${(f.studentAttendanceRate * 100).toStringAsFixed(0)}%)',
              ),
              const SizedBox(height: 12),
              _checkRow(context, l10n.functionality_schoolOpen, f.schoolOpen),
              _checkRow(context, l10n.functionality_headTeacherPresent, f.headTeacherPresent),
              _checkRow(context, l10n.functionality_classesConducted, f.classesConducted),
              _checkRow(
                context,
                l10n.functionality_teachingActivityObserved,
                f.teachingActivityObserved,
              ),
              _checkRow(
                context,
                l10n.functionality_cleanlinessSatisfactory,
                f.cleanlinessSatisfactory,
              ),
              _checkRow(
                context,
                l10n.functionality_basicFacilitiesAvailable,
                f.basicFacilitiesAvailable,
              ),
              _checkRow(context, l10n.functionality_timetableDisplayed, f.timetableDisplayed),
              _checkRow(context, l10n.functionality_morningAssemblyHeld, f.morningAssemblyHeld),
              _checkRow(
                context,
                l10n.functionality_learningEnvironmentSatisfactory,
                f.learningEnvironmentSatisfactory,
              ),
              if (f.remarks != null) ...<Widget>[
                const SizedBox(height: 8),
                _row(context, l10n.common_remarks, f.remarks!),
              ],
              if (f.evidencePhotoUrls.isNotEmpty) ...<Widget>[
                const SizedBox(height: 16),
                Text(l10n.common_photos, style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: <Widget>[
                    for (final String url in f.evidencePhotoUrls)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(url, width: 80, height: 80, fit: BoxFit.cover),
                      ),
                  ],
                ),
              ],
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
          SizedBox(width: 150, child: Text(label, style: Theme.of(context).textTheme.bodySmall)),
          Expanded(child: Text(value, style: Theme.of(context).textTheme.bodyLarge)),
        ],
      ),
    );
  }

  Widget _checkRow(BuildContext context, String label, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: <Widget>[
          Icon(
            value ? Icons.check_circle : Icons.cancel,
            color: value ? Colors.green : Colors.red,
            size: 18,
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(label, style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
