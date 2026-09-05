import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/photo_picker_field.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/presentation/widgets/school_picker.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/school_functionality_model.dart';
import '../widgets/functionality_status_labels.dart';

class FunctionalityFormScreen extends ConsumerStatefulWidget {
  const FunctionalityFormScreen({super.key, this.existing});

  final SchoolFunctionalityModel? existing;

  @override
  ConsumerState<FunctionalityFormScreen> createState() => _FunctionalityFormScreenState();
}

class _FunctionalityFormScreenState extends ConsumerState<FunctionalityFormScreen> {
  late final TextEditingController _teachersPresent;
  late final TextEditingController _teachersTotal;
  late final TextEditingController _studentsPresent;
  late final TextEditingController _studentsTotal;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  bool _schoolTouched = false;
  DateTime _assessmentDate = DateTime.now();
  FunctionalityStatus _status = FunctionalityStatus.functional;

  bool _schoolOpen = true;
  bool _headTeacherPresent = false;
  bool _classesConducted = false;
  bool _teachingActivityObserved = false;
  bool _cleanlinessSatisfactory = false;
  bool _basicFacilitiesAvailable = false;
  bool _timetableDisplayed = false;
  bool _morningAssemblyHeld = false;
  bool _learningEnvironmentSatisfactory = false;

  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final SchoolFunctionalityModel? e = widget.existing;
    _teachersPresent = TextEditingController(text: e?.teachersPresent.toString() ?? '0');
    _teachersTotal = TextEditingController(text: e?.teachersTotal.toString() ?? '0');
    _studentsPresent = TextEditingController(text: e?.studentsPresent.toString() ?? '0');
    _studentsTotal = TextEditingController(text: e?.studentsTotal.toString() ?? '0');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) {
      _assessmentDate = e.assessmentDate;
      _status = e.overallStatus;
      _schoolOpen = e.schoolOpen;
      _headTeacherPresent = e.headTeacherPresent;
      _classesConducted = e.classesConducted;
      _teachingActivityObserved = e.teachingActivityObserved;
      _cleanlinessSatisfactory = e.cleanlinessSatisfactory;
      _basicFacilitiesAvailable = e.basicFacilitiesAvailable;
      _timetableDisplayed = e.timetableDisplayed;
      _morningAssemblyHeld = e.morningAssemblyHeld;
      _learningEnvironmentSatisfactory = e.learningEnvironmentSatisfactory;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _teachersPresent,
      _teachersTotal,
      _studentsPresent,
      _studentsTotal,
      _remarks,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _schoolTouched = true);
    if (_selectedSchool == null) return;
    setState(() => _isSubmitting = true);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final String id = widget.existing?.id ?? OfflineWriteHelper.newId();
    final SchoolFunctionalityModel record = SchoolFunctionalityModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      assessmentDate: _assessmentDate,
      schoolOpen: _schoolOpen,
      headTeacherPresent: _headTeacherPresent,
      teachersPresent: int.tryParse(_teachersPresent.text) ?? 0,
      teachersTotal: int.tryParse(_teachersTotal.text) ?? 0,
      studentsPresent: int.tryParse(_studentsPresent.text) ?? 0,
      studentsTotal: int.tryParse(_studentsTotal.text) ?? 0,
      classesConducted: _classesConducted,
      teachingActivityObserved: _teachingActivityObserved,
      cleanlinessSatisfactory: _cleanlinessSatisfactory,
      basicFacilitiesAvailable: _basicFacilitiesAvailable,
      timetableDisplayed: _timetableDisplayed,
      morningAssemblyHeld: _morningAssemblyHeld,
      learningEnvironmentSatisfactory: _learningEnvironmentSatisfactory,
      overallStatus: _status,
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(schoolFunctionalityRepositoryProvider);
    if (_isEdit) {
      await repo.update(record);
    } else {
      await repo.create(record);
    }
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
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.functionality_addAssessment)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          SchoolPicker(
            selectedSchoolId: _selectedSchool?.id ?? widget.existing?.schoolId,
            onChanged: (SchoolModel s) => setState(() => _selectedSchool = s),
            errorText: (_schoolTouched && _selectedSchool == null) ? l10n.validation_required : null,
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: _assessmentDate,
                firstDate: DateTime(2015),
                lastDate: DateTime.now(),
              );
              if (picked != null) setState(() => _assessmentDate = picked);
            },
            child: InputDecorator(
              decoration: InputDecoration(labelText: l10n.common_date),
              child: Text(DateFormat.yMMMd().format(_assessmentDate)),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.functionality_teachersPresent,
                  controller: _teachersPresent,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.functionality_teachersTotal,
                  controller: _teachersTotal,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.functionality_studentsPresent,
                  controller: _studentsPresent,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.functionality_studentsTotal,
                  controller: _studentsTotal,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _switch(l10n.functionality_schoolOpen, _schoolOpen, (v) => setState(() => _schoolOpen = v)),
          _switch(
            l10n.functionality_headTeacherPresent,
            _headTeacherPresent,
            (v) => setState(() => _headTeacherPresent = v),
          ),
          _switch(
            l10n.functionality_classesConducted,
            _classesConducted,
            (v) => setState(() => _classesConducted = v),
          ),
          _switch(
            l10n.functionality_teachingActivityObserved,
            _teachingActivityObserved,
            (v) => setState(() => _teachingActivityObserved = v),
          ),
          _switch(
            l10n.functionality_cleanlinessSatisfactory,
            _cleanlinessSatisfactory,
            (v) => setState(() => _cleanlinessSatisfactory = v),
          ),
          _switch(
            l10n.functionality_basicFacilitiesAvailable,
            _basicFacilitiesAvailable,
            (v) => setState(() => _basicFacilitiesAvailable = v),
          ),
          _switch(
            l10n.functionality_timetableDisplayed,
            _timetableDisplayed,
            (v) => setState(() => _timetableDisplayed = v),
          ),
          _switch(
            l10n.functionality_morningAssemblyHeld,
            _morningAssemblyHeld,
            (v) => setState(() => _morningAssemblyHeld = v),
          ),
          _switch(
            l10n.functionality_learningEnvironmentSatisfactory,
            _learningEnvironmentSatisfactory,
            (v) => setState(() => _learningEnvironmentSatisfactory = v),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<FunctionalityStatus>(
            initialValue: _status,
            decoration: InputDecoration(labelText: l10n.functionality_overallStatus),
            items: FunctionalityStatus.values
                .map(
                  (s) =>
                      DropdownMenuItem<FunctionalityStatus>(value: s, child: Text(functionalityStatusLabel(l10n, s))),
                )
                .toList(),
            onChanged: (v) => setState(() => _status = v ?? _status),
          ),
          const SizedBox(height: 12),
          AppTextField(label: l10n.common_remarks, controller: _remarks, maxLines: 2),
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
                ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(l10n.common_save),
          ),
        ],
      ),
    );
  }

  Widget _switch(String label, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(label),
      value: value,
      onChanged: onChanged,
    );
  }
}
