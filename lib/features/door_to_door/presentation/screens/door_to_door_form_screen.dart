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
import '../../data/models/door_to_door_activity_model.dart';

class DoorToDoorFormScreen extends ConsumerStatefulWidget {
  const DoorToDoorFormScreen({super.key, this.existing});

  final DoorToDoorActivityModel? existing;

  @override
  ConsumerState<DoorToDoorFormScreen> createState() => _DoorToDoorFormScreenState();
}

class _DoorToDoorFormScreenState extends ConsumerState<DoorToDoorFormScreen> {
  late final TextEditingController _area;
  late final TextEditingController _teamMembers;
  late final TextEditingController _housesVisited;
  late final TextEditingController _childrenIdentified;
  late final TextEditingController _childrenEnrolled;
  late final TextEditingController _parentsContacted;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  DateTime _activityDate = DateTime.now();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final DoorToDoorActivityModel? e = widget.existing;
    _area = TextEditingController(text: e?.area ?? '');
    _teamMembers = TextEditingController(text: e?.teamMembers.join(', ') ?? '');
    _housesVisited = TextEditingController(text: e?.housesVisited.toString() ?? '0');
    _childrenIdentified = TextEditingController(text: e?.childrenIdentified.toString() ?? '0');
    _childrenEnrolled = TextEditingController(text: e?.childrenEnrolled.toString() ?? '0');
    _parentsContacted = TextEditingController(text: e?.parentsContacted.toString() ?? '0');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) _activityDate = e.activityDate;
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _area,
      _teamMembers,
      _housesVisited,
      _childrenIdentified,
      _childrenEnrolled,
      _parentsContacted,
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
    final DoorToDoorActivityModel activity = DoorToDoorActivityModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      activityDate: _activityDate,
      area: _area.text.trim().isEmpty ? null : _area.text.trim(),
      teamMembers: _teamMembers.text
          .split(',')
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toList(),
      housesVisited: int.tryParse(_housesVisited.text) ?? 0,
      childrenIdentified: int.tryParse(_childrenIdentified.text) ?? 0,
      childrenEnrolled: int.tryParse(_childrenEnrolled.text) ?? 0,
      parentsContacted: int.tryParse(_parentsContacted.text) ?? 0,
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(doorToDoorRepositoryProvider);
    if (_isEdit) {
      await repo.update(activity);
    } else {
      await repo.create(activity);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.doorToDoor_addActivity)),
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
                initialDate: _activityDate,
                firstDate: DateTime(2015),
                lastDate: DateTime.now(),
              );
              if (picked != null) setState(() => _activityDate = picked);
            },
            child: InputDecorator(
              decoration: InputDecoration(labelText: l10n.common_date),
              child: Text(DateFormat.yMMMd().format(_activityDate)),
            ),
          ),
          const SizedBox(height: 12),
          AppTextField(label: l10n.doorToDoor_area, controller: _area),
          const SizedBox(height: 12),
          AppTextField(label: l10n.doorToDoor_teamMembers, controller: _teamMembers),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.doorToDoor_housesVisited,
                  controller: _housesVisited,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.doorToDoor_childrenIdentified,
                  controller: _childrenIdentified,
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
                  label: l10n.doorToDoor_childrenEnrolled,
                  controller: _childrenEnrolled,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.doorToDoor_parentsContacted,
                  controller: _parentsContacted,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
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
                : Text(l10n.common_save),
          ),
        ],
      ),
    );
  }
}
