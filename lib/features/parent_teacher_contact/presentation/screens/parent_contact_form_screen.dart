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
import '../../data/models/parent_contact_model.dart';
import '../widgets/parent_contact_labels.dart';

class ParentContactFormScreen extends ConsumerStatefulWidget {
  const ParentContactFormScreen({super.key, this.existing});

  final ParentContactModel? existing;

  @override
  ConsumerState<ParentContactFormScreen> createState() => _ParentContactFormScreenState();
}

class _ParentContactFormScreenState extends ConsumerState<ParentContactFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _parentName;
  late final TextEditingController _studentName;
  late final TextEditingController _contactNumber;
  late final TextEditingController _purpose;
  late final TextEditingController _discussion;
  late final TextEditingController _result;

  SchoolModel? _selectedSchool;
  ContactMethod _method = ContactMethod.schoolVisit;
  DateTime _contactDate = DateTime.now();
  bool _followUpRequired = false;
  DateTime? _followUpDate;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final ParentContactModel? e = widget.existing;
    _parentName = TextEditingController(text: e?.parentName ?? '');
    _studentName = TextEditingController(text: e?.studentName ?? '');
    _contactNumber = TextEditingController(text: e?.contactNumber ?? '');
    _purpose = TextEditingController(text: e?.purpose ?? '');
    _discussion = TextEditingController(text: e?.discussion ?? '');
    _result = TextEditingController(text: e?.result ?? '');
    if (e != null) {
      _method = e.contactMethod;
      _contactDate = e.contactDate;
      _followUpRequired = e.followUpRequired;
      _followUpDate = e.followUpDate;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _parentName,
      _studentName,
      _contactNumber,
      _purpose,
      _discussion,
      _result,
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
    final ParentContactModel contact = ParentContactModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      parentName: _parentName.text.trim(),
      studentName: _studentName.text.trim(),
      contactNumber: _contactNumber.text.trim().isEmpty ? null : _contactNumber.text.trim(),
      contactDate: _contactDate,
      contactMethod: _method,
      purpose: _purpose.text.trim().isEmpty ? null : _purpose.text.trim(),
      discussion: _discussion.text.trim().isEmpty ? null : _discussion.text.trim(),
      followUpRequired: _followUpRequired,
      followUpDate: _followUpRequired ? _followUpDate : null,
      result: _result.text.trim().isEmpty ? null : _result.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(parentContactRepositoryProvider);
    if (_isEdit) {
      await repo.update(contact);
    } else {
      await repo.create(contact);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.parentContact_addContact)),
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
              label: l10n.parentContact_parentName,
              controller: _parentName,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.parentContact_studentName,
              controller: _studentName,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.parentContact_contactNumber,
              controller: _contactNumber,
              forceLtr: true,
              keyboardType: TextInputType.phone,
              validator: (v) => Validators.phone(v) == null ? null : l10n.validation_invalidPhone,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<ContactMethod>(
              initialValue: _method,
              decoration: InputDecoration(labelText: l10n.parentContact_contactMethod),
              items: ContactMethod.values
                  .map(
                    (m) => DropdownMenuItem<ContactMethod>(
                      value: m,
                      child: Text(contactMethodLabel(l10n, m)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _method = v ?? _method),
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _contactDate,
                  firstDate: DateTime(2015),
                  lastDate: DateTime.now(),
                );
                if (picked != null) setState(() => _contactDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.common_date),
                child: Text(DateFormat.yMMMd().format(_contactDate)),
              ),
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.parentContact_purpose, controller: _purpose, maxLines: 2),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.parentContact_discussion,
              controller: _discussion,
              maxLines: 3,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.parentContact_result, controller: _result, maxLines: 2),
            const SizedBox(height: 8),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l10n.parentContact_followUpRequired),
              value: _followUpRequired,
              onChanged: (v) => setState(() {
                _followUpRequired = v;
                if (!v) _followUpDate = null;
              }),
            ),
            if (_followUpRequired) ...<Widget>[
              InkWell(
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: _followUpDate ?? DateTime.now(),
                    firstDate: DateTime(2015),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null) setState(() => _followUpDate = picked);
                },
                child: InputDecorator(
                  decoration: InputDecoration(labelText: l10n.parentContact_followUpDate),
                  child: Text(
                    _followUpDate == null
                        ? l10n.common_selectOption
                        : DateFormat.yMMMd().format(_followUpDate!),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 8),
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
