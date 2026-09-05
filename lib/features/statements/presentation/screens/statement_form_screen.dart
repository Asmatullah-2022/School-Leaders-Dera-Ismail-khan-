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
import '../../data/models/statement_model.dart';

class _DataRow {
  _DataRow({String key = '', String value = ''})
    : keyController = TextEditingController(text: key),
      valueController = TextEditingController(text: value);

  final TextEditingController keyController;
  final TextEditingController valueController;

  void dispose() {
    keyController.dispose();
    valueController.dispose();
  }
}

class StatementFormScreen extends ConsumerStatefulWidget {
  const StatementFormScreen({super.key, this.existing});

  final StatementModel? existing;

  @override
  ConsumerState<StatementFormScreen> createState() => _StatementFormScreenState();
}

class _StatementFormScreenState extends ConsumerState<StatementFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _statementType;
  late final TextEditingController _period;

  SchoolModel? _selectedSchool;
  bool _schoolTouched = false;
  DateTime _periodStart = DateTime.now();
  DateTime? _periodEnd;
  final List<_DataRow> _dataRows = <_DataRow>[];
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final StatementModel? e = widget.existing;
    _statementType = TextEditingController(text: e?.statementType ?? '');
    _period = TextEditingController(text: e?.period ?? '');
    if (e != null) {
      _periodStart = e.periodStart;
      _periodEnd = e.periodEnd;
      for (final MapEntry<String, dynamic> entry in e.data.entries) {
        _dataRows.add(_DataRow(key: entry.key, value: '${entry.value}'));
      }
    }
    if (_dataRows.isEmpty) _dataRows.add(_DataRow());
  }

  @override
  void dispose() {
    _statementType.dispose();
    _period.dispose();
    for (final _DataRow row in _dataRows) {
      row.dispose();
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
    final Map<String, dynamic> data = <String, dynamic>{
      for (final _DataRow row in _dataRows)
        if (row.keyController.text.trim().isNotEmpty) row.keyController.text.trim(): row.valueController.text,
    };
    final StatementModel statement = StatementModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      statementType: _statementType.text.trim(),
      period: _period.text.trim(),
      periodStart: _periodStart,
      periodEnd: _periodEnd,
      data: data,
      status: widget.existing?.status ?? StatementStatus.draft,
      submittedByUid: widget.existing?.submittedByUid,
      submittedAt: widget.existing?.submittedAt,
      reviewedByUid: widget.existing?.reviewedByUid,
      reviewedAt: widget.existing?.reviewedAt,
      reviewNotes: widget.existing?.reviewNotes,
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(statementRepositoryProvider);
    if (_isEdit) {
      await repo.update(statement);
    } else {
      await repo.create(statement);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.statement_addStatement)),
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
              label: l10n.statement_statementType,
              controller: _statementType,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.statement_period,
              controller: _period,
              hintText: '2026-01',
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _periodStart,
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _periodStart = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.statement_periodStart),
                child: Text(DateFormat.yMMMd().format(_periodStart)),
              ),
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _periodEnd ?? _periodStart,
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _periodEnd = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.statement_periodEnd),
                child: Text(_periodEnd == null ? l10n.common_selectOption : DateFormat.yMMMd().format(_periodEnd!)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(l10n.statement_dataFields, style: Theme.of(context).textTheme.titleSmall),
                TextButton.icon(
                  onPressed: () => setState(() => _dataRows.add(_DataRow())),
                  icon: const Icon(Icons.add, size: 18),
                  label: Text(l10n.common_add),
                ),
              ],
            ),
            for (int i = 0; i < _dataRows.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: AppTextField(label: l10n.statement_fieldName, controller: _dataRows[i].keyController),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AppTextField(
                        label: l10n.statement_fieldValue,
                        controller: _dataRows[i].valueController,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: _dataRows.length == 1
                          ? null
                          : () => setState(() {
                              _dataRows[i].dispose();
                              _dataRows.removeAt(i);
                            }),
                    ),
                  ],
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
                  ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : Text(l10n.common_save),
            ),
          ],
        ),
      ),
    );
  }
}
