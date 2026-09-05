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
import '../../data/models/ptc_priority_model.dart';
import '../providers/ptc_providers.dart';
import '../widgets/ptc_labels.dart';

class PtcPriorityFormScreen extends ConsumerStatefulWidget {
  const PtcPriorityFormScreen({super.key, this.existing});

  final PtcPriorityModel? existing;

  @override
  ConsumerState<PtcPriorityFormScreen> createState() => _PtcPriorityFormScreenState();
}

class _PtcPriorityFormScreenState extends ConsumerState<PtcPriorityFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _title;
  late final TextEditingController _titleUrdu;
  late final TextEditingController _proposedAction;
  late final TextEditingController _estimatedCost;
  late final TextEditingController _availableFunds;
  late final TextEditingController _decision;
  late final TextEditingController _responsiblePerson;

  SchoolModel? _selectedSchool;
  PtcCategory _category = PtcCategory.other;
  PtcPriorityLevel _level = PtcPriorityLevel.medium;
  PtcStatus _status = PtcStatus.proposed;
  DateTime _meetingDate = DateTime.now();
  DateTime? _targetDate;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final PtcPriorityModel? e = widget.existing;
    _title = TextEditingController(text: e?.priorityTitle ?? '');
    _titleUrdu = TextEditingController(text: e?.priorityTitleUrdu ?? '');
    _proposedAction = TextEditingController(text: e?.proposedAction ?? '');
    _estimatedCost = TextEditingController(text: e?.estimatedCost.toStringAsFixed(0) ?? '0');
    _availableFunds = TextEditingController(text: e?.availableFunds.toStringAsFixed(0) ?? '0');
    _decision = TextEditingController(text: e?.decision ?? '');
    _responsiblePerson = TextEditingController(text: e?.responsiblePersonName ?? '');
    if (e != null) {
      _category = e.category;
      _level = e.priorityLevel;
      _status = e.status;
      _meetingDate = e.meetingDate;
      _targetDate = e.targetDate;
    }
    for (final c in <TextEditingController>[_estimatedCost, _availableFunds]) {
      c.addListener(() => setState(() {}));
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _title,
      _titleUrdu,
      _proposedAction,
      _estimatedCost,
      _availableFunds,
      _decision,
      _responsiblePerson,
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

    // A brand-new priority lands at the end of its meeting's list; drag to
    // reorder afterwards (ranks are renumbered by the list screen).
    final int nextRank =
        widget.existing?.rank ??
        ((ref.read(scopedPtcPrioritiesProvider).valueOrNull ?? const <PtcPriorityModel>[])
                .where(
                  (p) =>
                      p.schoolId == _selectedSchool!.id &&
                      DateFormat('yyyy-MM-dd').format(p.meetingDate) ==
                          DateFormat('yyyy-MM-dd').format(_meetingDate),
                )
                .length +
            1);

    final PtcPriorityModel priority = PtcPriorityModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      meetingDate: _meetingDate,
      priorityTitle: _title.text.trim(),
      priorityTitleUrdu: _titleUrdu.text.trim().isEmpty ? null : _titleUrdu.text.trim(),
      rank: nextRank,
      category: _category,
      priorityLevel: _level,
      proposedAction: _proposedAction.text.trim().isEmpty ? null : _proposedAction.text.trim(),
      estimatedCost: double.tryParse(_estimatedCost.text) ?? 0,
      availableFunds: double.tryParse(_availableFunds.text) ?? 0,
      decision: _decision.text.trim().isEmpty ? null : _decision.text.trim(),
      responsiblePersonName: _responsiblePerson.text.trim().isEmpty
          ? null
          : _responsiblePerson.text.trim(),
      targetDate: _targetDate,
      status: _status,
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );

    final repo = ref.read(ptcPriorityRepositoryProvider);
    if (_isEdit) {
      await repo.update(priority);
    } else {
      await repo.create(priority);
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
    final double cost = double.tryParse(_estimatedCost.text) ?? 0;
    final double funds = double.tryParse(_availableFunds.text) ?? 0;
    final double required = (cost - funds) > 0 ? cost - funds : 0;

    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.ptc_addPriority)),
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
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _meetingDate,
                  firstDate: DateTime(2015),
                  lastDate: DateTime.now(),
                );
                if (picked != null) setState(() => _meetingDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.ptc_meetingDate),
                child: Text(DateFormat.yMMMd().format(_meetingDate)),
              ),
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.ptc_priorityTitle,
              controller: _title,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.ptc_priorityTitleUrdu, controller: _titleUrdu),
            const SizedBox(height: 12),
            DropdownButtonFormField<PtcCategory>(
              isExpanded: true,
              initialValue: _category,
              decoration: InputDecoration(labelText: l10n.ptc_category),
              items: PtcCategory.values
                  .map(
                    (c) => DropdownMenuItem<PtcCategory>(
                      value: c,
                      child: Text(ptcCategoryLabel(l10n, c)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _category = v ?? _category),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<PtcPriorityLevel>(
              isExpanded: true,
              initialValue: _level,
              decoration: InputDecoration(labelText: l10n.ptc_priorityLevel),
              items: PtcPriorityLevel.values
                  .map(
                    (p) => DropdownMenuItem<PtcPriorityLevel>(
                      value: p,
                      child: Text(ptcPriorityLevelLabel(l10n, p)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _level = v ?? _level),
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.ptc_estimatedCost),
            Row(
              children: <Widget>[
                Expanded(
                  child: AppTextField(
                    label: l10n.ptc_estimatedCost,
                    controller: _estimatedCost,
                    forceLtr: true,
                    keyboardType: TextInputType.number,
                    validator: (v) {
                      final double? parsed = double.tryParse(v ?? '');
                      return Validators.nonNegativeNumber(parsed) == null
                          ? null
                          : l10n.validation_nonNegative;
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.ptc_availableFunds,
                    controller: _availableFunds,
                    forceLtr: true,
                    keyboardType: TextInputType.number,
                    validator: (v) {
                      final double? parsed = double.tryParse(v ?? '');
                      return Validators.nonNegativeNumber(parsed) == null
                          ? null
                          : l10n.validation_nonNegative;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            InputDecorator(
              decoration: InputDecoration(labelText: l10n.ptc_requiredFunds),
              child: Text(
                required.toStringAsFixed(0),
                style: Theme.of(context).textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            AppTextField(label: l10n.ptc_proposedAction, controller: _proposedAction, maxLines: 2),
            const SizedBox(height: 12),
            AppTextField(label: l10n.ptc_decision, controller: _decision, maxLines: 2),
            const SizedBox(height: 12),
            AppTextField(label: l10n.ptc_responsiblePerson, controller: _responsiblePerson),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _targetDate ?? DateTime.now(),
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _targetDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.ptc_targetDate),
                child: Text(_targetDate != null ? DateFormat.yMMMd().format(_targetDate!) : '—'),
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<PtcStatus>(
              isExpanded: true,
              initialValue: _status,
              decoration: InputDecoration(labelText: l10n.common_status),
              items: PtcStatus.values
                  .map(
                    (s) =>
                        DropdownMenuItem<PtcStatus>(value: s, child: Text(ptcStatusLabel(l10n, s))),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _status = v ?? _status),
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
                  : Text(l10n.common_save),
            ),
          ],
        ),
      ),
    );
  }
}
