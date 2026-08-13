import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/photo_picker_field.dart';
import '../../../hierarchy/data/models/school_model.dart';
import '../../../hierarchy/presentation/widgets/school_picker.dart';
import '../../data/models/oosc_record_model.dart';
import '../providers/admission_providers.dart';
import '../widgets/oosc_status_chip.dart';

class OoscFormScreen extends ConsumerStatefulWidget {
  const OoscFormScreen({super.key, this.existing, this.campaignId});

  final OoscRecordModel? existing;
  final String? campaignId;

  @override
  ConsumerState<OoscFormScreen> createState() => _OoscFormScreenState();
}

class _OoscFormScreenState extends ConsumerState<OoscFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _childName;
  late final TextEditingController _childNameUrdu;
  late final TextEditingController _age;
  late final TextEditingController _village;
  late final TextEditingController _parentGuardian;
  late final TextEditingController _contact;
  late final TextEditingController _reasonDetail;
  late final TextEditingController _previousSchool;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  OoscGender _gender = OoscGender.male;
  OoscReason _reason = OoscReason.other;
  OoscStatus _status = OoscStatus.identified;
  DateTime? _followUpDate;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final OoscRecordModel? e = widget.existing;
    _childName = TextEditingController(text: e?.childName ?? '');
    _childNameUrdu = TextEditingController(text: e?.childNameUrdu ?? '');
    _age = TextEditingController(text: e?.age.toString() ?? '');
    _village = TextEditingController(text: e?.village ?? '');
    _parentGuardian = TextEditingController(text: e?.parentGuardianName ?? '');
    _contact = TextEditingController(text: e?.contactPhone ?? '');
    _reasonDetail = TextEditingController(text: e?.reasonDetail ?? '');
    _previousSchool = TextEditingController(text: e?.previousSchool ?? '');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) {
      _gender = e.gender;
      _reason = e.reason;
      _status = e.status;
      _followUpDate = e.followUpDate;
    }
  }

  @override
  void dispose() {
    for (final c in [
      _childName, _childNameUrdu, _age, _village, _parentGuardian, _contact,
      _reasonDetail, _previousSchool, _remarks,
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
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final String id = widget.existing?.id ?? OfflineWriteHelper.newId();
    final OoscRecordModel record = OoscRecordModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      childName: _childName.text.trim(),
      childNameUrdu: _childNameUrdu.text.trim().isEmpty ? null : _childNameUrdu.text.trim(),
      gender: _gender,
      age: int.tryParse(_age.text) ?? AppConstants.minOoscAge,
      village: _village.text.trim().isEmpty ? null : _village.text.trim(),
      parentGuardianName: _parentGuardian.text.trim().isEmpty ? null : _parentGuardian.text.trim(),
      contactPhone: _contact.text.trim().isEmpty ? null : _contact.text.trim(),
      reason: _reason,
      reasonDetail: _reasonDetail.text.trim().isEmpty ? null : _reasonDetail.text.trim(),
      previousSchool: _previousSchool.text.trim().isEmpty ? null : _previousSchool.text.trim(),
      status: _status,
      followUpDate: _followUpDate,
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      campaignId: widget.existing?.campaignId ?? widget.campaignId,
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(ooscRepositoryProvider);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.oosc_addRecord)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            SchoolPicker(
              selectedSchoolId: _selectedSchool?.id ?? widget.existing?.schoolId,
              onChanged: (SchoolModel s) => setState(() => _selectedSchool = s),
              errorText: (_schoolTouched && _selectedSchool == null) ? l10n.validation_required : null,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.oosc_childName,
              controller: _childName,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.oosc_childNameUrdu, controller: _childNameUrdu),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: DropdownButtonFormField<OoscGender>(
                    initialValue: _gender,
                    decoration: InputDecoration(labelText: l10n.oosc_gender),
                    items: <DropdownMenuItem<OoscGender>>[
                      DropdownMenuItem(value: OoscGender.male, child: Text(l10n.oosc_male)),
                      DropdownMenuItem(value: OoscGender.female, child: Text(l10n.oosc_female)),
                    ],
                    onChanged: (v) => setState(() => _gender = v ?? _gender),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.oosc_age,
                    controller: _age,
                    forceLtr: true,
                    keyboardType: TextInputType.number,
                    validator: (v) {
                      final int? age = int.tryParse(v ?? '');
                      final String? key = Validators.age(
                        age,
                        min: AppConstants.minOoscAge,
                        max: AppConstants.maxOoscAge,
                      );
                      return key == null ? null : l10n.validation_invalidAge;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.oosc_village, controller: _village),
            const SizedBox(height: 12),
            AppTextField(label: l10n.oosc_parentGuardian, controller: _parentGuardian),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.oosc_contact,
              controller: _contact,
              forceLtr: true,
              keyboardType: TextInputType.phone,
              validator: (v) => Validators.phone(v) == null ? null : l10n.validation_invalidPhone,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<OoscReason>(
              initialValue: _reason,
              decoration: InputDecoration(labelText: l10n.oosc_reason),
              items: OoscReason.values.map((r) => DropdownMenuItem(value: r, child: Text(_reasonLabel(l10n, r)))).toList(),
              onChanged: (v) => setState(() => _reason = v ?? _reason),
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.oosc_reasonDetail, controller: _reasonDetail, maxLines: 2),
            const SizedBox(height: 12),
            AppTextField(label: l10n.oosc_previousSchool, controller: _previousSchool),
            const SizedBox(height: 12),
            DropdownButtonFormField<OoscStatus>(
              initialValue: _status,
              decoration: InputDecoration(labelText: l10n.oosc_status),
              items: OoscStatus.values
                  .map((s) => DropdownMenuItem(value: s, child: Text(OoscStatusChip.label(l10n, s))))
                  .toList(),
              onChanged: (v) => setState(() => _status = v ?? _status),
            ),
            const SizedBox(height: 12),
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
                decoration: InputDecoration(labelText: l10n.oosc_followUpDate),
                child: Text(_followUpDate != null ? DateFormat.yMMMd().format(_followUpDate!) : '—'),
              ),
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.common_remarks, controller: _remarks, maxLines: 3),
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
                  : Text(l10n.common_submit),
            ),
          ],
        ),
      ),
    );
  }

  String _reasonLabel(AppLocalizations l10n, OoscReason r) => switch (r) {
        OoscReason.labor => l10n.oosc_reason_labor,
        OoscReason.migration => l10n.oosc_reason_migration,
        OoscReason.disability => l10n.oosc_reason_disability,
        OoscReason.financial => l10n.oosc_reason_financial,
        OoscReason.distance => l10n.oosc_reason_distance,
        OoscReason.earlyMarriage => l10n.oosc_reason_earlyMarriage,
        OoscReason.other => l10n.oosc_reason_other,
      };
}
