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
import '../../data/models/community_activity_model.dart';
import '../widgets/community_activity_labels.dart';

class CommunityActivityFormScreen extends ConsumerStatefulWidget {
  const CommunityActivityFormScreen({super.key, this.existing});

  final CommunityActivityModel? existing;

  @override
  ConsumerState<CommunityActivityFormScreen> createState() => _CommunityActivityFormScreenState();
}

class _CommunityActivityFormScreenState extends ConsumerState<CommunityActivityFormScreen> {
  late final TextEditingController _participants;
  late final TextEditingController _femaleParticipants;
  late final TextEditingController _venue;
  late final TextEditingController _description;
  late final TextEditingController _descriptionUrdu;
  late final TextEditingController _remarks;

  SchoolModel? _selectedSchool;
  CommunityActivityType _type = CommunityActivityType.parentMeeting;
  DateTime _activityDate = DateTime.now();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final CommunityActivityModel? e = widget.existing;
    _participants = TextEditingController(text: e?.participantsCount.toString() ?? '0');
    _femaleParticipants = TextEditingController(text: e?.femaleParticipantsCount.toString() ?? '0');
    _venue = TextEditingController(text: e?.venue ?? '');
    _description = TextEditingController(text: e?.description ?? '');
    _descriptionUrdu = TextEditingController(text: e?.descriptionUrdu ?? '');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    if (e != null) {
      _type = e.activityType;
      _activityDate = e.activityDate;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _participants,
      _femaleParticipants,
      _venue,
      _description,
      _descriptionUrdu,
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
    final CommunityActivityModel activity = CommunityActivityModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      activityType: _type,
      activityDate: _activityDate,
      participantsCount: int.tryParse(_participants.text) ?? 0,
      femaleParticipantsCount: int.tryParse(_femaleParticipants.text) ?? 0,
      venue: _venue.text.trim().isEmpty ? null : _venue.text.trim(),
      description: _description.text.trim().isEmpty ? null : _description.text.trim(),
      descriptionUrdu: _descriptionUrdu.text.trim().isEmpty ? null : _descriptionUrdu.text.trim(),
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(communityActivityRepositoryProvider);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.community_addActivity)),
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
          DropdownButtonFormField<CommunityActivityType>(
            isExpanded: true,
            initialValue: _type,
            decoration: InputDecoration(labelText: l10n.community_activityType),
            items: CommunityActivityType.values
                .map(
                  (t) => DropdownMenuItem<CommunityActivityType>(
                    value: t,
                    child: Text(communityActivityTypeLabel(l10n, t)),
                  ),
                )
                .toList(),
            onChanged: (v) => setState(() => _type = v ?? _type),
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
          Row(
            children: <Widget>[
              Expanded(
                child: AppTextField(
                  label: l10n.community_participants,
                  controller: _participants,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                  validator: (v) => Validators.nonNegativeNumber(int.tryParse(v ?? '')) == null
                      ? null
                      : l10n.validation_nonNegative,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppTextField(
                  label: l10n.community_femaleParticipants,
                  controller: _femaleParticipants,
                  forceLtr: true,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          AppTextField(label: l10n.community_venue, controller: _venue),
          const SizedBox(height: 12),
          AppTextField(label: l10n.update_description, controller: _description, maxLines: 3),
          const SizedBox(height: 12),
          AppTextField(
            label: l10n.update_descriptionUrdu,
            controller: _descriptionUrdu,
            maxLines: 3,
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
