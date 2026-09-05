import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/photo_picker_field.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/presentation/widgets/school_picker.dart';
import '../../data/models/school_problem_model.dart';
import '../providers/school_problem_providers.dart';
import '../widgets/priority_chip.dart';
import '../widgets/problem_labels.dart';

class SchoolProblemFormScreen extends ConsumerStatefulWidget {
  const SchoolProblemFormScreen({super.key, this.existing});

  final SchoolProblemModel? existing;

  @override
  ConsumerState<SchoolProblemFormScreen> createState() => _SchoolProblemFormScreenState();
}

class _SchoolProblemFormScreenState extends ConsumerState<SchoolProblemFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _title;
  late final TextEditingController _titleUrdu;
  late final TextEditingController _description;
  late final TextEditingController _descriptionUrdu;
  late final TextEditingController _requiredSupport;
  late final TextEditingController _assignedTo;

  SchoolModel? _selectedSchool;
  ProblemCategory _category = ProblemCategory.infrastructure;
  ProblemPriority _priority = ProblemPriority.medium;
  DateTime _dateReported = DateTime.now();
  DateTime? _expectedResolution;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final SchoolProblemModel? e = widget.existing;
    _title = TextEditingController(text: e?.title ?? '');
    _titleUrdu = TextEditingController(text: e?.titleUrdu ?? '');
    _description = TextEditingController(text: e?.description ?? '');
    _descriptionUrdu = TextEditingController(text: e?.descriptionUrdu ?? '');
    _requiredSupport = TextEditingController(text: e?.requiredSupport ?? '');
    _assignedTo = TextEditingController(text: e?.assignedToName ?? '');
    if (e != null) {
      _category = e.category;
      _priority = e.priority;
      _dateReported = e.dateReported;
      _expectedResolution = e.expectedResolutionDate;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _title,
      _titleUrdu,
      _description,
      _descriptionUrdu,
      _requiredSupport,
      _assignedTo,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _schoolTouched = true);
    final bool valid = (_formKey.currentState?.validate() ?? false) && _selectedSchool != null;
    if (!valid) {
      setState(() {});
      return;
    }
    setState(() => _isSubmitting = true);
    final user = ref.read(currentUserProvider).valueOrNull;
    final String uid = user?.uid ?? 'unknown';
    final String name = user?.displayName ?? '';
    final DateTime now = DateTime.now();
    final String id = widget.existing?.id ?? OfflineWriteHelper.newId();

    final SchoolProblemModel problem = SchoolProblemModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      title: _title.text.trim(),
      titleUrdu: _titleUrdu.text.trim().isEmpty ? null : _titleUrdu.text.trim(),
      category: _category,
      description: _description.text.trim(),
      descriptionUrdu: _descriptionUrdu.text.trim().isEmpty ? null : _descriptionUrdu.text.trim(),
      priority: _priority,
      dateReported: _dateReported,
      requiredSupport: _requiredSupport.text.trim().isEmpty ? null : _requiredSupport.text.trim(),
      assignedToUid: widget.existing?.assignedToUid,
      assignedToName: _assignedTo.text.trim().isEmpty ? null : _assignedTo.text.trim(),
      expectedResolutionDate: _expectedResolution,
      // Status transitions are made from the detail screen (role-gated);
      // creating or editing the description never changes the workflow state.
      status: widget.existing?.status ?? ProblemStatus.open,
      resolutionNotes: widget.existing?.resolutionNotes,
      resolvedAt: widget.existing?.resolvedAt,
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      resolutionEvidenceUrls: widget.existing?.resolutionEvidenceUrls ?? const <String>[],
      reportedByUid: widget.existing?.reportedByUid ?? uid,
      reportedByName: widget.existing?.reportedByName ?? name,
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );

    final repo = ref.read(schoolProblemRepositoryProvider);
    if (_isEdit) {
      await repo.update(problem);
    } else {
      await repo.create(problem);
    }
    for (final String path in _newPhotoPaths) {
      await repo.queueEvidencePhoto(id, path);
    }
    if (!mounted) return;
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(l10n.common_success_submitted)));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.problem_addProblem)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            SchoolPicker(
              selectedSchoolId: _selectedSchool?.id ?? widget.existing?.schoolId,
              onChanged: (SchoolModel s) => setState(() => _selectedSchool = s),
              errorText: (_schoolTouched && _selectedSchool == null)
                  ? l10n.validation_required
                  : null,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.problem_title,
              controller: _title,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.problem_titleUrdu, controller: _titleUrdu),
            const SizedBox(height: 12),
            DropdownButtonFormField<ProblemCategory>(
              isExpanded: true,
              initialValue: _category,
              decoration: InputDecoration(labelText: l10n.problem_category),
              items: ProblemCategory.values
                  .map(
                    (c) => DropdownMenuItem<ProblemCategory>(
                      value: c,
                      child: Text(problemCategoryLabel(l10n, c)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _category = v ?? _category),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<ProblemPriority>(
              isExpanded: true,
              initialValue: _priority,
              decoration: InputDecoration(labelText: l10n.problem_priority),
              items: ProblemPriority.values
                  .map(
                    (p) => DropdownMenuItem<ProblemPriority>(
                      value: p,
                      child: Text(PriorityChip.label(l10n, p)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _priority = v ?? _priority),
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.problem_description,
              controller: _description,
              maxLines: 4,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.problem_descriptionUrdu,
              controller: _descriptionUrdu,
              maxLines: 3,
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _dateReported,
                  firstDate: DateTime(2015),
                  lastDate: DateTime.now(),
                );
                if (picked != null) setState(() => _dateReported = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.problem_dateReported),
                child: Text(DateFormat.yMMMd().format(_dateReported)),
              ),
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.problem_requiredSupport),
            AppTextField(
              label: l10n.problem_requiredSupport,
              controller: _requiredSupport,
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.problem_assignedTo, controller: _assignedTo),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _expectedResolution ?? DateTime.now(),
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _expectedResolution = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.problem_expectedResolution),
                child: Text(
                  _expectedResolution != null
                      ? DateFormat.yMMMd().format(_expectedResolution!)
                      : '—',
                ),
              ),
            ),
            const SizedBox(height: 20),
            PhotoPickerField(
              localPaths: _newPhotoPaths,
              existingUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
              onChanged: (List<String> paths) => setState(() => _newPhotoPaths = paths),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _isSubmitting ? null : _submit,
              child: _isSubmitting
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(l10n.common_submit),
            ),
          ],
        ),
      ),
    );
  }
}
