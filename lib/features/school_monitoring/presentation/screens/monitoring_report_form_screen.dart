import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../../../core/widgets/photo_picker_field.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/presentation/widgets/school_picker.dart';
import '../../data/models/monitoring_config_model.dart';
import '../../data/models/monitoring_report_model.dart';
import '../../data/models/scoring_criterion_model.dart';
import '../../domain/usecases/calculate_weighted_score.dart';
import '../providers/monitoring_providers.dart';
import '../widgets/criterion_slider_field.dart';
import '../widgets/grade_badge.dart';

class MonitoringReportFormScreen extends ConsumerStatefulWidget {
  const MonitoringReportFormScreen({super.key});

  @override
  ConsumerState<MonitoringReportFormScreen> createState() => _MonitoringReportFormScreenState();
}

class _MonitoringReportFormScreenState extends ConsumerState<MonitoringReportFormScreen> {
  SchoolModel? _selectedSchool;
  DateTime _visitDate = DateTime.now();
  List<CriterionScoreModel> _scores = <CriterionScoreModel>[];
  final Set<String> _touched = <String>{};
  final TextEditingController _remarks = TextEditingController();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;
  bool _initializedFromConfig = false;

  @override
  void dispose() {
    _remarks.dispose();
    super.dispose();
  }

  void _initFromConfig(MonitoringConfigModel config) {
    if (_initializedFromConfig) return;
    _initializedFromConfig = true;
    _scores = <CriterionScoreModel>[
      for (final ScoringCriterionModel c in config.criteria)
        CriterionScoreModel(
          criterionId: c.id,
          label: c.label,
          labelUrdu: c.labelUrdu,
          weight: c.weight,
          maxScore: c.maxScore,
          achievedScore: 0,
        ),
    ];
  }

  Future<void> _submit(MonitoringReportStatus status) async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _schoolTouched = true);
    final bool allCriteriaTouched = _touched.length == _scores.length;
    if (_selectedSchool == null ||
        (status == MonitoringReportStatus.submitted && !allCriteriaTouched)) {
      if (!allCriteriaTouched && status == MonitoringReportStatus.submitted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(l10n.validation_required)));
      }
      setState(() {});
      return;
    }
    setState(() => _isSubmitting = true);
    final gradeBands = ref.read(monitoringConfigProvider).valueOrNull?.gradeBands ?? const [];
    final result = calculateMonitoringScore(_scores, gradeBands);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final String name = ref.read(currentUserProvider).valueOrNull?.displayName ?? '';
    final DateTime now = DateTime.now();
    final String id = OfflineWriteHelper.newId();
    final MonitoringReportModel report = MonitoringReportModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      visitDate: _visitDate,
      monitoredByUid: uid,
      monitoredByName: name,
      criteriaScores: _scores,
      totalWeightedScore: result.totalScore,
      grade: result.grade,
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      status: status,
      createdAt: now,
      updatedAt: now,
      createdBy: uid,
    );
    final repo = ref.read(monitoringReportRepositoryProvider);
    await repo.create(report);
    for (final String path in _newPhotoPaths) {
      await repo.queueEvidencePhoto(id, path);
    }
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.common_success_saved)));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final configAsync = ref.watch(monitoringConfigProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.monitoring_addReport)),
      body: configAsync.when(
        loading: () => const LoadingIndicator(),
        error: (_, _) => Center(child: Text(l10n.common_error_unknown)),
        data: (MonitoringConfigModel config) {
          _initFromConfig(config);
          final result = calculateMonitoringScore(_scores, config.gradeBands);
          return ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              SchoolPicker(
                selectedSchoolId: _selectedSchool?.id,
                onChanged: (SchoolModel s) => setState(() => _selectedSchool = s),
                errorText: (_schoolTouched && _selectedSchool == null)
                    ? l10n.validation_required
                    : null,
              ),
              const SizedBox(height: 12),
              InkWell(
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: _visitDate,
                    firstDate: DateTime(2015),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) setState(() => _visitDate = picked);
                },
                child: InputDecorator(
                  decoration: InputDecoration(labelText: l10n.monitoring_visitDate),
                  child: Text(DateFormat.yMMMd().format(_visitDate)),
                ),
              ),
              const SizedBox(height: 20),
              SectionHeader(title: l10n.monitoring_criteria),
              for (final CriterionScoreModel c in _scores)
                CriterionSliderField(
                  criterion: c,
                  onChanged: (double v) => setState(() {
                    _touched.add(c.criterionId);
                    _scores = _scores
                        .map(
                          (s) => s.criterionId == c.criterionId ? s.copyWith(achievedScore: v) : s,
                        )
                        .toList();
                  }),
                ),
              const SizedBox(height: 16),
              Center(
                child: GradeBadge(grade: result.grade, score: result.totalScore),
              ),
              const SizedBox(height: 20),
              AppTextField(label: l10n.common_remarks, controller: _remarks, maxLines: 3),
              const SizedBox(height: 20),
              PhotoPickerField(
                localPaths: _newPhotoPaths,
                onChanged: (List<String> paths) => setState(() => _newPhotoPaths = paths),
              ),
              const SizedBox(height: 24),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _isSubmitting ? null : () => _submit(MonitoringReportStatus.draft),
                      child: Text(l10n.common_save),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: _isSubmitting
                          ? null
                          : () => _submit(MonitoringReportStatus.submitted),
                      child: _isSubmitting
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(l10n.common_submit),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
