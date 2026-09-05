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
import '../../data/models/ece_monitoring_model.dart';
import '../widgets/ece_status_labels.dart';

class EceMonitoringFormScreen extends ConsumerStatefulWidget {
  const EceMonitoringFormScreen({super.key, this.existing});

  final EceMonitoringModel? existing;

  @override
  ConsumerState<EceMonitoringFormScreen> createState() => _EceMonitoringFormScreenState();
}

class _EceMonitoringFormScreenState extends ConsumerState<EceMonitoringFormScreen> {
  late final TextEditingController _childrenEnrolled;
  late final TextEditingController _childrenPresent;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  bool _schoolTouched = false;
  DateTime _visitDate = DateTime.now();
  EceStatus _status = EceStatus.needsImprovement;

  bool _eceRoomAvailable = false;
  bool _functional = false;
  bool _teacherAvailable = false;
  bool _furnitureAdequate = false;
  bool _learningMaterialsAvailable = false;
  bool _toysAvailable = false;
  bool _learningCornersSetUp = false;
  bool _decorationAdequate = false;
  bool _cleanlinessSatisfactory = false;
  bool _safetySatisfactory = false;

  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final EceMonitoringModel? e = widget.existing;
    _childrenEnrolled = TextEditingController(text: e?.childrenEnrolled.toString() ?? '0');
    _childrenPresent = TextEditingController(text: e?.childrenPresent.toString() ?? '0');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) {
      _visitDate = e.visitDate;
      _status = e.status;
      _eceRoomAvailable = e.eceRoomAvailable;
      _functional = e.functional;
      _teacherAvailable = e.teacherAvailable;
      _furnitureAdequate = e.furnitureAdequate;
      _learningMaterialsAvailable = e.learningMaterialsAvailable;
      _toysAvailable = e.toysAvailable;
      _learningCornersSetUp = e.learningCornersSetUp;
      _decorationAdequate = e.decorationAdequate;
      _cleanlinessSatisfactory = e.cleanlinessSatisfactory;
      _safetySatisfactory = e.safetySatisfactory;
    }
  }

  @override
  void dispose() {
    _childrenEnrolled.dispose();
    _childrenPresent.dispose();
    _remarks.dispose();
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
    final EceMonitoringModel record = EceMonitoringModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      visitDate: _visitDate,
      eceRoomAvailable: _eceRoomAvailable,
      functional: _functional,
      teacherAvailable: _teacherAvailable,
      furnitureAdequate: _furnitureAdequate,
      learningMaterialsAvailable: _learningMaterialsAvailable,
      toysAvailable: _toysAvailable,
      learningCornersSetUp: _learningCornersSetUp,
      decorationAdequate: _decorationAdequate,
      cleanlinessSatisfactory: _cleanlinessSatisfactory,
      safetySatisfactory: _safetySatisfactory,
      childrenEnrolled: int.tryParse(_childrenEnrolled.text) ?? 0,
      childrenPresent: int.tryParse(_childrenPresent.text) ?? 0,
      status: _status,
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(eceMonitoringRepositoryProvider);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.ece_addVisit)),
      body: ListView(
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
                initialDate: _visitDate,
                firstDate: DateTime(2015),
                lastDate: DateTime.now(),
              );
              if (picked != null) setState(() => _visitDate = picked);
            },
            child: InputDecorator(
              decoration: InputDecoration(labelText: l10n.common_date),
              child: Text(DateFormat.yMMMd().format(_visitDate)),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.ece_childrenEnrolled,
                  controller: _childrenEnrolled,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.ece_childrenPresent,
                  controller: _childrenPresent,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _switch(
            l10n.ece_eceRoomAvailable,
            _eceRoomAvailable,
            (v) => setState(() => _eceRoomAvailable = v),
          ),
          _switch(l10n.ece_functional, _functional, (v) => setState(() => _functional = v)),
          _switch(
            l10n.ece_teacherAvailable,
            _teacherAvailable,
            (v) => setState(() => _teacherAvailable = v),
          ),
          _switch(
            l10n.ece_furnitureAdequate,
            _furnitureAdequate,
            (v) => setState(() => _furnitureAdequate = v),
          ),
          _switch(
            l10n.ece_learningMaterialsAvailable,
            _learningMaterialsAvailable,
            (v) => setState(() => _learningMaterialsAvailable = v),
          ),
          _switch(
            l10n.ece_toysAvailable,
            _toysAvailable,
            (v) => setState(() => _toysAvailable = v),
          ),
          _switch(
            l10n.ece_learningCornersSetUp,
            _learningCornersSetUp,
            (v) => setState(() => _learningCornersSetUp = v),
          ),
          _switch(
            l10n.ece_decorationAdequate,
            _decorationAdequate,
            (v) => setState(() => _decorationAdequate = v),
          ),
          _switch(
            l10n.ece_cleanlinessSatisfactory,
            _cleanlinessSatisfactory,
            (v) => setState(() => _cleanlinessSatisfactory = v),
          ),
          _switch(
            l10n.ece_safetySatisfactory,
            _safetySatisfactory,
            (v) => setState(() => _safetySatisfactory = v),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<EceStatus>(
            initialValue: _status,
            decoration: InputDecoration(labelText: l10n.common_status),
            items: EceStatus.values
                .map(
                  (s) =>
                      DropdownMenuItem<EceStatus>(value: s, child: Text(eceStatusLabel(l10n, s))),
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
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
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
