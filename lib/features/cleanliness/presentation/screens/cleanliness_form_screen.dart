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
import '../../data/models/cleanliness_model.dart';

class CleanlinessFormScreen extends ConsumerStatefulWidget {
  const CleanlinessFormScreen({super.key, this.existing});

  final CleanlinessModel? existing;

  @override
  ConsumerState<CleanlinessFormScreen> createState() => _CleanlinessFormScreenState();
}

class _CleanlinessFormScreenState extends ConsumerState<CleanlinessFormScreen> {
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  bool _schoolTouched = false;
  DateTime _inspectionDate = DateTime.now();

  bool _classroomsClean = false;
  bool _courtyardClean = false;
  bool _toiletsClean = false;
  bool _drinkingWaterAreaClean = false;
  bool _wasteManagedProperly = false;
  bool _furnitureClean = false;
  bool _schoolWallsClean = false;
  bool _boundaryClean = false;
  bool _dailyCleaningDone = false;
  bool _weeklyCleaningDone = false;

  List<String> _newBeforePhotoPaths = <String>[];
  List<String> _newAfterPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final CleanlinessModel? e = widget.existing;
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) {
      _inspectionDate = e.inspectionDate;
      _classroomsClean = e.classroomsClean;
      _courtyardClean = e.courtyardClean;
      _toiletsClean = e.toiletsClean;
      _drinkingWaterAreaClean = e.drinkingWaterAreaClean;
      _wasteManagedProperly = e.wasteManagedProperly;
      _furnitureClean = e.furnitureClean;
      _schoolWallsClean = e.schoolWallsClean;
      _boundaryClean = e.boundaryClean;
      _dailyCleaningDone = e.dailyCleaningDone;
      _weeklyCleaningDone = e.weeklyCleaningDone;
    }
  }

  @override
  void dispose() {
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
    final CleanlinessModel record = CleanlinessModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      inspectionDate: _inspectionDate,
      classroomsClean: _classroomsClean,
      courtyardClean: _courtyardClean,
      toiletsClean: _toiletsClean,
      drinkingWaterAreaClean: _drinkingWaterAreaClean,
      wasteManagedProperly: _wasteManagedProperly,
      furnitureClean: _furnitureClean,
      schoolWallsClean: _schoolWallsClean,
      boundaryClean: _boundaryClean,
      dailyCleaningDone: _dailyCleaningDone,
      weeklyCleaningDone: _weeklyCleaningDone,
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      beforePhotoUrls: widget.existing?.beforePhotoUrls ?? const <String>[],
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(cleanlinessRepositoryProvider);
    if (_isEdit) {
      await repo.update(record);
    } else {
      await repo.create(record);
    }
    for (final String path in _newBeforePhotoPaths) {
      await repo.queueEvidencePhoto(id, path, storageField: 'beforePhotoUrls');
    }
    for (final String path in _newAfterPhotoPaths) {
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.cleanliness_addInspection)),
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
                initialDate: _inspectionDate,
                firstDate: DateTime(2015),
                lastDate: DateTime.now(),
              );
              if (picked != null) setState(() => _inspectionDate = picked);
            },
            child: InputDecorator(
              decoration: InputDecoration(labelText: l10n.common_date),
              child: Text(DateFormat.yMMMd().format(_inspectionDate)),
            ),
          ),
          const SizedBox(height: 8),
          _switch(
            l10n.cleanliness_classroomsClean,
            _classroomsClean,
            (v) => setState(() => _classroomsClean = v),
          ),
          _switch(
            l10n.cleanliness_courtyardClean,
            _courtyardClean,
            (v) => setState(() => _courtyardClean = v),
          ),
          _switch(
            l10n.cleanliness_toiletsClean,
            _toiletsClean,
            (v) => setState(() => _toiletsClean = v),
          ),
          _switch(
            l10n.cleanliness_drinkingWaterAreaClean,
            _drinkingWaterAreaClean,
            (v) => setState(() => _drinkingWaterAreaClean = v),
          ),
          _switch(
            l10n.cleanliness_wasteManagedProperly,
            _wasteManagedProperly,
            (v) => setState(() => _wasteManagedProperly = v),
          ),
          _switch(
            l10n.cleanliness_furnitureClean,
            _furnitureClean,
            (v) => setState(() => _furnitureClean = v),
          ),
          _switch(
            l10n.cleanliness_schoolWallsClean,
            _schoolWallsClean,
            (v) => setState(() => _schoolWallsClean = v),
          ),
          _switch(
            l10n.cleanliness_boundaryClean,
            _boundaryClean,
            (v) => setState(() => _boundaryClean = v),
          ),
          _switch(
            l10n.cleanliness_dailyCleaningDone,
            _dailyCleaningDone,
            (v) => setState(() => _dailyCleaningDone = v),
          ),
          _switch(
            l10n.cleanliness_weeklyCleaningDone,
            _weeklyCleaningDone,
            (v) => setState(() => _weeklyCleaningDone = v),
          ),
          const SizedBox(height: 12),
          AppTextField(label: l10n.common_remarks, controller: _remarks, maxLines: 2),
          const SizedBox(height: 20),
          Text(l10n.cleanliness_beforePhotos, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          PhotoPickerField(
            localPaths: _newBeforePhotoPaths,
            existingUrls: widget.existing?.beforePhotoUrls ?? const <String>[],
            onChanged: (List<String> paths) => setState(() => _newBeforePhotoPaths = paths),
          ),
          const SizedBox(height: 20),
          Text(l10n.cleanliness_afterPhotos, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          PhotoPickerField(
            localPaths: _newAfterPhotoPaths,
            existingUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
            onChanged: (List<String> paths) => setState(() => _newAfterPhotoPaths = paths),
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
