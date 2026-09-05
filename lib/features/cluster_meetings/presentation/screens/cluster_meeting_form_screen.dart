import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/photo_picker_field.dart';
import '../../../hierarchy/presentation/widgets/hierarchy_picker.dart';
import '../../../scaffold_modules/presentation/providers/scaffold_module_providers.dart';
import '../../data/models/cluster_meeting_model.dart';
import '../widgets/meeting_status_labels.dart';

class ClusterMeetingFormScreen extends ConsumerStatefulWidget {
  const ClusterMeetingFormScreen({super.key, this.existing});

  final ClusterMeetingModel? existing;

  @override
  ConsumerState<ClusterMeetingFormScreen> createState() => _ClusterMeetingFormScreenState();
}

class _ClusterMeetingFormScreenState extends ConsumerState<ClusterMeetingFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _meetingTime;
  late final TextEditingController _venue;
  late final TextEditingController _chairperson;
  late final TextEditingController _participantsCount;
  late final TextEditingController _agenda;
  late final TextEditingController _agendaUrdu;
  late final TextEditingController _decisions;
  late final TextEditingController _minutes;

  String? _districtId;
  String? _subDivisionId;
  String? _circleId;
  String? _clusterId;
  bool _hierarchyTouched = false;
  DateTime _meetingDate = DateTime.now();
  MeetingStatus _status = MeetingStatus.pending;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final ClusterMeetingModel? e = widget.existing;
    _meetingTime = TextEditingController(text: e?.meetingTime ?? '');
    _venue = TextEditingController(text: e?.venue ?? '');
    _chairperson = TextEditingController(text: e?.chairperson ?? '');
    _participantsCount = TextEditingController(text: e?.participantsCount.toString() ?? '0');
    _agenda = TextEditingController(text: e?.agenda ?? '');
    _agendaUrdu = TextEditingController(text: e?.agendaUrdu ?? '');
    _decisions = TextEditingController(text: e?.decisions ?? '');
    _minutes = TextEditingController(text: e?.minutes ?? '');
    if (e != null) {
      _meetingDate = e.meetingDate;
      _status = e.status;
      _districtId = e.districtId;
      _subDivisionId = e.subDivisionId;
      _circleId = e.circleId;
      _clusterId = e.clusterId;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _meetingTime,
      _venue,
      _chairperson,
      _participantsCount,
      _agenda,
      _agendaUrdu,
      _decisions,
      _minutes,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _hierarchyTouched = true);
    final bool formValid = _formKey.currentState?.validate() ?? false;
    if (_clusterId == null ||
        _circleId == null ||
        _subDivisionId == null ||
        _districtId == null ||
        !formValid) {
      return;
    }
    setState(() => _isSubmitting = true);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final String id = widget.existing?.id ?? OfflineWriteHelper.newId();
    final ClusterMeetingModel meeting = ClusterMeetingModel(
      id: id,
      clusterId: _clusterId!,
      circleId: _circleId!,
      subDivisionId: _subDivisionId!,
      districtId: _districtId!,
      meetingDate: _meetingDate,
      meetingTime: _meetingTime.text.trim().isEmpty ? null : _meetingTime.text.trim(),
      venue: _venue.text.trim().isEmpty ? null : _venue.text.trim(),
      chairperson: _chairperson.text.trim().isEmpty ? null : _chairperson.text.trim(),
      participantsCount: int.tryParse(_participantsCount.text) ?? 0,
      participatingSchoolIds: widget.existing?.participatingSchoolIds ?? const <String>[],
      agenda: _agenda.text.trim().isEmpty ? null : _agenda.text.trim(),
      agendaUrdu: _agendaUrdu.text.trim().isEmpty ? null : _agendaUrdu.text.trim(),
      decisions: _decisions.text.trim().isEmpty ? null : _decisions.text.trim(),
      minutes: _minutes.text.trim().isEmpty ? null : _minutes.text.trim(),
      status: _status,
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(clusterMeetingRepositoryProvider);
    if (_isEdit) {
      await repo.update(meeting);
    } else {
      await repo.create(meeting);
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
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.clusterMeeting_addMeeting)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            HierarchyCascadePicker(
              initialDistrictId: _districtId,
              initialSubDivisionId: _subDivisionId,
              initialCircleId: _circleId,
              initialClusterId: _clusterId,
              onChanged: ({districtId, subDivisionId, circleId, clusterId}) => setState(() {
                _districtId = districtId;
                _subDivisionId = subDivisionId;
                _circleId = circleId;
                _clusterId = clusterId;
              }),
            ),
            if (_hierarchyTouched && _clusterId == null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  l10n.validation_required,
                  style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                ),
              ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _meetingDate,
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _meetingDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.common_date),
                child: Text(DateFormat.yMMMd().format(_meetingDate)),
              ),
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.clusterMeeting_meetingTime,
              controller: _meetingTime,
              hintText: '10:00 AM',
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.clusterMeeting_venue, controller: _venue),
            const SizedBox(height: 12),
            AppTextField(label: l10n.clusterMeeting_chairperson, controller: _chairperson),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.clusterMeeting_participantsCount,
              controller: _participantsCount,
              forceLtr: true,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<MeetingStatus>(
              isExpanded: true,
              initialValue: _status,
              decoration: InputDecoration(labelText: l10n.common_status),
              items: MeetingStatus.values
                  .map(
                    (s) => DropdownMenuItem<MeetingStatus>(
                      value: s,
                      child: Text(meetingStatusLabel(l10n, s)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _status = v ?? _status),
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.clusterMeeting_agenda, controller: _agenda, maxLines: 3),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.clusterMeeting_agendaUrdu,
              controller: _agendaUrdu,
              maxLines: 3,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.clusterMeeting_decisions, controller: _decisions, maxLines: 3),
            const SizedBox(height: 12),
            AppTextField(label: l10n.clusterMeeting_minutes, controller: _minutes, maxLines: 3),
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
