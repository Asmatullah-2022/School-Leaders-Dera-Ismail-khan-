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
import '../../data/models/school_opening_model.dart';

class SchoolOpeningFormScreen extends ConsumerStatefulWidget {
  const SchoolOpeningFormScreen({super.key, this.existing});

  final SchoolOpeningModel? existing;

  @override
  ConsumerState<SchoolOpeningFormScreen> createState() => _SchoolOpeningFormScreenState();
}

class _SchoolOpeningFormScreenState extends ConsumerState<SchoolOpeningFormScreen> {
  late final TextEditingController _openingTime;
  late final TextEditingController _closingTime;
  late final TextEditingController _teachersPresent;
  late final TextEditingController _studentsPresent;
  late final TextEditingController _reasonIfClosed;
  late final TextEditingController _actionRequired;

  SchoolModel? _selectedSchool;
  bool _schoolTouched = false;
  DateTime _checkDate = DateTime.now();
  bool _isOpen = true;
  bool _headTeacherPresent = false;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final SchoolOpeningModel? e = widget.existing;
    _openingTime = TextEditingController(text: e?.openingTime ?? '');
    _closingTime = TextEditingController(text: e?.closingTime ?? '');
    _teachersPresent = TextEditingController(text: e?.teachersPresent.toString() ?? '0');
    _studentsPresent = TextEditingController(text: e?.studentsPresent.toString() ?? '0');
    _reasonIfClosed = TextEditingController(text: e?.reasonIfClosed ?? '');
    _actionRequired = TextEditingController(text: e?.actionRequired ?? '');
    if (e != null) {
      _checkDate = e.checkDate;
      _isOpen = e.isOpen;
      _headTeacherPresent = e.headTeacherPresent;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _openingTime,
      _closingTime,
      _teachersPresent,
      _studentsPresent,
      _reasonIfClosed,
      _actionRequired,
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
    final SchoolOpeningModel record = SchoolOpeningModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      checkDate: _checkDate,
      isOpen: _isOpen,
      openingTime: _openingTime.text.trim().isEmpty ? null : _openingTime.text.trim(),
      closingTime: _closingTime.text.trim().isEmpty ? null : _closingTime.text.trim(),
      headTeacherPresent: _headTeacherPresent,
      teachersPresent: int.tryParse(_teachersPresent.text) ?? 0,
      studentsPresent: int.tryParse(_studentsPresent.text) ?? 0,
      reasonIfClosed: _isOpen ? null : (_reasonIfClosed.text.trim().isEmpty ? null : _reasonIfClosed.text.trim()),
      actionRequired: _actionRequired.text.trim().isEmpty ? null : _actionRequired.text.trim(),
      verifiedByUid: widget.existing?.verifiedByUid ?? uid,
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(schoolOpeningRepositoryProvider);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.schoolOpening_addCheck)),
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
                initialDate: _checkDate,
                firstDate: DateTime(2015),
                lastDate: DateTime.now(),
              );
              if (picked != null) setState(() => _checkDate = picked);
            },
            child: InputDecorator(
              decoration: InputDecoration(labelText: l10n.common_date),
              child: Text(DateFormat.yMMMd().format(_checkDate)),
            ),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.schoolOpening_isOpen),
            value: _isOpen,
            onChanged: (v) => setState(() => _isOpen = v),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.functionality_headTeacherPresent),
            value: _headTeacherPresent,
            onChanged: (v) => setState(() => _headTeacherPresent = v),
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.schoolOpening_openingTime,
                  controller: _openingTime,
                  hintText: '08:00 AM',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.schoolOpening_closingTime,
                  controller: _closingTime,
                  hintText: '02:00 PM',
                ),
              ),
            ],
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
                  label: l10n.functionality_studentsPresent,
                  controller: _studentsPresent,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          if (!_isOpen) ...<Widget>[
            const SizedBox(height: 12),
            AppTextField(label: l10n.schoolOpening_reasonIfClosed, controller: _reasonIfClosed, maxLines: 2),
          ],
          const SizedBox(height: 12),
          AppTextField(label: l10n.schoolOpening_actionRequired, controller: _actionRequired, maxLines: 2),
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
}
