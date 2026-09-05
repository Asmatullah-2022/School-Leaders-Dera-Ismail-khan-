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
import '../../data/models/plantation_model.dart';

class PlantationFormScreen extends ConsumerStatefulWidget {
  const PlantationFormScreen({super.key, this.existing});

  final PlantationModel? existing;

  @override
  ConsumerState<PlantationFormScreen> createState() => _PlantationFormScreenState();
}

class _PlantationFormScreenState extends ConsumerState<PlantationFormScreen> {
  late final TextEditingController _treesPlanted;
  late final TextEditingController _treeTypes;
  late final TextEditingController _studentsInvolved;
  late final TextEditingController _teachersInvolved;
  late final TextEditingController _communityMembersInvolved;
  late final TextEditingController _location;
  late final TextEditingController _survivalRate;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  bool _schoolTouched = false;
  DateTime _plantationDate = DateTime.now();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final PlantationModel? e = widget.existing;
    _treesPlanted = TextEditingController(text: e?.treesPlanted.toString() ?? '0');
    _treeTypes = TextEditingController(text: e?.treeTypes.join(', ') ?? '');
    _studentsInvolved = TextEditingController(text: e?.studentsInvolved.toString() ?? '0');
    _teachersInvolved = TextEditingController(text: e?.teachersInvolved.toString() ?? '0');
    _communityMembersInvolved = TextEditingController(
      text: e?.communityMembersInvolved.toString() ?? '0',
    );
    _location = TextEditingController(text: e?.location ?? '');
    _survivalRate = TextEditingController(text: e?.survivalRatePercent?.toString() ?? '');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) _plantationDate = e.plantationDate;
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _treesPlanted,
      _treeTypes,
      _studentsInvolved,
      _teachersInvolved,
      _communityMembersInvolved,
      _location,
      _survivalRate,
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
    final List<String> treeTypes = _treeTypes.text
        .split(',')
        .map((String s) => s.trim())
        .where((String s) => s.isNotEmpty)
        .toList();
    final PlantationModel record = PlantationModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      plantationDate: _plantationDate,
      treesPlanted: int.tryParse(_treesPlanted.text) ?? 0,
      treeTypes: treeTypes,
      studentsInvolved: int.tryParse(_studentsInvolved.text) ?? 0,
      teachersInvolved: int.tryParse(_teachersInvolved.text) ?? 0,
      communityMembersInvolved: int.tryParse(_communityMembersInvolved.text) ?? 0,
      location: _location.text.trim().isEmpty ? null : _location.text.trim(),
      survivalRatePercent: double.tryParse(_survivalRate.text),
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(plantationRepositoryProvider);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.plantation_addActivity)),
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
                initialDate: _plantationDate,
                firstDate: DateTime(2015),
                lastDate: DateTime.now(),
              );
              if (picked != null) setState(() => _plantationDate = picked);
            },
            child: InputDecorator(
              decoration: InputDecoration(labelText: l10n.common_date),
              child: Text(DateFormat.yMMMd().format(_plantationDate)),
            ),
          ),
          const SizedBox(height: 12),
          AppTextField(
            label: l10n.plantation_treesPlanted,
            controller: _treesPlanted,
            forceLtr: true,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 12),
          AppTextField(
            label: l10n.plantation_treeTypes,
            controller: _treeTypes,
            hintText: l10n.plantation_treeTypesHint,
          ),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.plantation_studentsInvolved,
                  controller: _studentsInvolved,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.plantation_teachersInvolved,
                  controller: _teachersInvolved,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          AppTextField(
            label: l10n.plantation_communityMembersInvolved,
            controller: _communityMembersInvolved,
            forceLtr: true,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 12),
          AppTextField(label: l10n.advertisement_location, controller: _location),
          const SizedBox(height: 12),
          AppTextField(
            label: l10n.plantation_survivalRate,
            controller: _survivalRate,
            forceLtr: true,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            suffixText: '%',
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
}
