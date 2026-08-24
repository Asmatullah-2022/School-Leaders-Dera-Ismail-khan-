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
import '../../data/models/emergency_report_model.dart';
import '../providers/emergency_providers.dart';
import '../widgets/severity_badge.dart';

/// [quickMode] renders the trimmed SOS form (type + severity + one-line
/// description + photo) reachable from the dashboard, so an emergency can be
/// filed in seconds; the remaining fields can be filled in later by editing.
class EmergencyReportFormScreen extends ConsumerStatefulWidget {
  const EmergencyReportFormScreen({super.key, this.quickMode = false});

  final bool quickMode;

  @override
  ConsumerState<EmergencyReportFormScreen> createState() => _EmergencyReportFormScreenState();
}

class _EmergencyReportFormScreenState extends ConsumerState<EmergencyReportFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _description = TextEditingController();
  final TextEditingController _descriptionUrdu = TextEditingController();
  final TextEditingController _immediateAction = TextEditingController();
  final TextEditingController _requiredSupport = TextEditingController();
  final TextEditingController _contactPerson = TextEditingController();
  final TextEditingController _contactPhone = TextEditingController();
  final TextEditingController _casualties = TextEditingController();

  SchoolModel? _selectedSchool;
  EmergencyType _type = EmergencyType.other;
  EmergencySeverity _severity = EmergencySeverity.high;
  DateTime _occurredAt = DateTime.now();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _description,
      _descriptionUrdu,
      _immediateAction,
      _requiredSupport,
      _contactPerson,
      _contactPhone,
      _casualties,
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
    final DateTime now = DateTime.now();
    final String id = OfflineWriteHelper.newId();

    final EmergencyReportModel report = EmergencyReportModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      emergencyType: _type,
      severity: _severity,
      description: _description.text.trim(),
      descriptionUrdu: _descriptionUrdu.text.trim().isEmpty ? null : _descriptionUrdu.text.trim(),
      occurredAt: _occurredAt,
      immediateAction: _immediateAction.text.trim().isEmpty ? null : _immediateAction.text.trim(),
      requiredSupport: _requiredSupport.text.trim().isEmpty ? null : _requiredSupport.text.trim(),
      contactPersonName: _contactPerson.text.trim().isEmpty ? null : _contactPerson.text.trim(),
      contactPhone: _contactPhone.text.trim().isEmpty ? null : _contactPhone.text.trim(),
      casualties: int.tryParse(_casualties.text.trim()),
      latitude: _selectedSchool!.latitude,
      longitude: _selectedSchool!.longitude,
      reportedByUid: uid,
      reportedByName: user?.displayName ?? '',
      createdAt: now,
      updatedAt: now,
      createdBy: uid,
    );

    final repo = ref.read(emergencyReportRepositoryProvider);
    await repo.create(report);
    for (final String path in _newPhotoPaths) {
      await repo.queueEvidencePhoto(id, path);
    }
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.common_success_submitted)));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.quickMode ? l10n.emergency_quickReport : l10n.emergency_addReport),
        backgroundColor: Theme.of(context).colorScheme.error,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            SchoolPicker(
              selectedSchoolId: _selectedSchool?.id,
              onChanged: (SchoolModel s) => setState(() => _selectedSchool = s),
              errorText: (_schoolTouched && _selectedSchool == null) ? l10n.validation_required : null,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<EmergencyType>(
              initialValue: _type,
              decoration: InputDecoration(labelText: l10n.emergency_type),
              items: EmergencyType.values
                  .map((t) => DropdownMenuItem<EmergencyType>(
                        value: t,
                        child: Text(emergencyTypeLabel(l10n, t)),
                      ))
                  .toList(),
              onChanged: (v) => setState(() => _type = v ?? _type),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<EmergencySeverity>(
              initialValue: _severity,
              decoration: InputDecoration(labelText: l10n.emergency_severity),
              items: EmergencySeverity.values
                  .map((s) => DropdownMenuItem<EmergencySeverity>(
                        value: s,
                        child: Text(SeverityBadge.label(l10n, s)),
                      ))
                  .toList(),
              onChanged: (v) => setState(() => _severity = v ?? _severity),
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.emergency_description,
              controller: _description,
              maxLines: widget.quickMode ? 2 : 4,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            if (!widget.quickMode) ...<Widget>[
              const SizedBox(height: 12),
              AppTextField(
                label: l10n.emergency_descriptionUrdu,
                controller: _descriptionUrdu,
                maxLines: 3,
              ),
              const SizedBox(height: 12),
              InkWell(
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: _occurredAt,
                    firstDate: DateTime(2015),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) setState(() => _occurredAt = picked);
                },
                child: InputDecorator(
                  decoration: InputDecoration(labelText: l10n.emergency_occurredAt),
                  child: Text(DateFormat.yMMMd().format(_occurredAt)),
                ),
              ),
              const SizedBox(height: 20),
              SectionHeader(title: l10n.emergency_immediateAction),
              AppTextField(
                label: l10n.emergency_immediateAction,
                controller: _immediateAction,
                maxLines: 2,
              ),
              const SizedBox(height: 12),
              AppTextField(
                label: l10n.emergency_requiredSupport,
                controller: _requiredSupport,
                maxLines: 2,
              ),
              const SizedBox(height: 12),
              AppTextField(label: l10n.emergency_contactPerson, controller: _contactPerson),
              const SizedBox(height: 12),
              AppTextField(
                label: l10n.emergency_contactPhone,
                controller: _contactPhone,
                forceLtr: true,
                keyboardType: TextInputType.phone,
                validator: (v) => Validators.phone(v) == null ? null : l10n.validation_invalidPhone,
              ),
              const SizedBox(height: 12),
              AppTextField(
                label: l10n.emergency_casualties,
                controller: _casualties,
                forceLtr: true,
                keyboardType: TextInputType.number,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return null;
                  final int? parsed = int.tryParse(v.trim());
                  if (parsed == null) return l10n.validation_required;
                  return Validators.nonNegativeNumber(parsed) == null
                      ? null
                      : l10n.validation_nonNegative;
                },
              ),
            ],
            const SizedBox(height: 20),
            PhotoPickerField(
              localPaths: _newPhotoPaths,
              onChanged: (List<String> paths) => setState(() => _newPhotoPaths = paths),
            ),
            const SizedBox(height: 24),
            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.error),
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
}
