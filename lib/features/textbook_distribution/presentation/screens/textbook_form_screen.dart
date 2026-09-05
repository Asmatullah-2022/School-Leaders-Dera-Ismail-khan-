import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/photo_picker_field.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/presentation/widgets/school_picker.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/textbook_distribution_model.dart';

class TextbookFormScreen extends ConsumerStatefulWidget {
  const TextbookFormScreen({super.key, this.existing});

  final TextbookDistributionModel? existing;

  @override
  ConsumerState<TextbookFormScreen> createState() => _TextbookFormScreenState();
}

class _TextbookFormScreenState extends ConsumerState<TextbookFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _academicYear;
  late final TextEditingController _classGrade;
  late final TextEditingController _subject;
  late final TextEditingController _booksRequired;
  late final TextEditingController _booksAvailable;
  late final TextEditingController _booksDistributed;
  late final TextEditingController _studentsReceiving;
  late final TextEditingController _otherMaterials;
  late final TextEditingController _supportRequired;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  DateTime _distributionDate = DateTime.now();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final TextbookDistributionModel? e = widget.existing;
    _academicYear = TextEditingController(text: e?.academicYear ?? '');
    _classGrade = TextEditingController(text: e?.classGrade ?? '');
    _subject = TextEditingController(text: e?.subject ?? '');
    _booksRequired = TextEditingController(text: e?.booksRequired.toString() ?? '0');
    _booksAvailable = TextEditingController(text: e?.booksAvailable.toString() ?? '0');
    _booksDistributed = TextEditingController(text: e?.booksDistributed.toString() ?? '0');
    _studentsReceiving = TextEditingController(text: e?.studentsReceiving.toString() ?? '0');
    _otherMaterials = TextEditingController(text: e?.otherMaterials ?? '');
    _supportRequired = TextEditingController(text: e?.supportRequired ?? '');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) _distributionDate = e.distributionDate;
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _academicYear,
      _classGrade,
      _subject,
      _booksRequired,
      _booksAvailable,
      _booksDistributed,
      _studentsReceiving,
      _otherMaterials,
      _supportRequired,
      _remarks,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _schoolTouched = true);
    final bool formValid = _formKey.currentState?.validate() ?? false;
    if (_selectedSchool == null || !formValid) return;
    setState(() => _isSubmitting = true);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final String id = widget.existing?.id ?? OfflineWriteHelper.newId();
    final TextbookDistributionModel record = TextbookDistributionModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      academicYear: _academicYear.text.trim(),
      distributionDate: _distributionDate,
      classGrade: _classGrade.text.trim().isEmpty ? null : _classGrade.text.trim(),
      subject: _subject.text.trim().isEmpty ? null : _subject.text.trim(),
      booksRequired: int.tryParse(_booksRequired.text) ?? 0,
      booksAvailable: int.tryParse(_booksAvailable.text) ?? 0,
      booksDistributed: int.tryParse(_booksDistributed.text) ?? 0,
      studentsReceiving: int.tryParse(_studentsReceiving.text) ?? 0,
      otherMaterials: _otherMaterials.text.trim().isEmpty ? null : _otherMaterials.text.trim(),
      supportRequired: _supportRequired.text.trim().isEmpty ? null : _supportRequired.text.trim(),
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(textbookRepositoryProvider);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.textbook_addRecord)),
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
              label: l10n.textbook_academicYear,
              controller: _academicYear,
              hintText: '2025-26',
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _distributionDate,
                  firstDate: DateTime(2015),
                  lastDate: DateTime.now(),
                );
                if (picked != null) setState(() => _distributionDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.common_date),
                child: Text(DateFormat.yMMMd().format(_distributionDate)),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: AppTextField(label: l10n.textbook_classGrade, controller: _classGrade),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(label: l10n.textbook_subject, controller: _subject),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: AppTextField(
                    label: l10n.textbook_booksRequired,
                    controller: _booksRequired,
                    forceLtr: true,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.textbook_booksAvailable,
                    controller: _booksAvailable,
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
                    label: l10n.textbook_booksDistributed,
                    controller: _booksDistributed,
                    forceLtr: true,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.textbook_studentsReceiving,
                    controller: _studentsReceiving,
                    forceLtr: true,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.textbook_otherMaterials,
              controller: _otherMaterials,
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.textbook_supportRequired,
              controller: _supportRequired,
              maxLines: 2,
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
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(l10n.common_save),
            ),
          ],
        ),
      ),
    );
  }
}
