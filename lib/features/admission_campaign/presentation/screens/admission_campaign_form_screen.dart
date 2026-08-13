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
import '../../data/models/admission_campaign_model.dart';
import '../../domain/usecases/calculate_achievement_percentage.dart';
import '../providers/admission_providers.dart';
import '../widgets/achievement_gauge.dart';

class AdmissionCampaignFormScreen extends ConsumerStatefulWidget {
  const AdmissionCampaignFormScreen({super.key, this.existing});

  final AdmissionCampaignModel? existing;

  @override
  ConsumerState<AdmissionCampaignFormScreen> createState() => _AdmissionCampaignFormScreenState();
}

class _AdmissionCampaignFormScreenState extends ConsumerState<AdmissionCampaignFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _academicYear;
  late final TextEditingController _target;
  late final TextEditingController _previousEnrollment;
  late final TextEditingController _currentEnrollment;
  late final TextEditingController _boys;
  late final TextEditingController _girls;
  late final TextEditingController _ooscIdentified;
  late final TextEditingController _ooscReenrolled;
  late final TextEditingController _doorToDoor;
  late final TextEditingController _parentMeetings;
  late final TextEditingController _communityMeetings;
  late final TextEditingController _banners;
  late final TextEditingController _posters;
  late final TextEditingController _socialMedia;
  late final TextEditingController _textbooks;
  late final TextEditingController _otherSupport;
  late final TextEditingController _remarks;
  late final TextEditingController _remarksUrdu;

  SchoolModel? _selectedSchool;
  DateTime _date = DateTime.now();
  CampaignStatus _status = CampaignStatus.active;
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final AdmissionCampaignModel? e = widget.existing;
    _academicYear = TextEditingController(text: e?.academicYear ?? _defaultAcademicYear());
    _target = TextEditingController(text: e?.targetEnrollment.toString() ?? '');
    _previousEnrollment = TextEditingController(text: e?.previousEnrollment.toString() ?? '0');
    _currentEnrollment = TextEditingController(text: e?.currentEnrollment.toString() ?? '0');
    _boys = TextEditingController(text: e?.newAdmissionsBoys.toString() ?? '0');
    _girls = TextEditingController(text: e?.newAdmissionsGirls.toString() ?? '0');
    _ooscIdentified = TextEditingController(text: e?.ooscIdentified.toString() ?? '0');
    _ooscReenrolled = TextEditingController(text: e?.ooscReenrolled.toString() ?? '0');
    _doorToDoor = TextEditingController(text: e?.doorToDoorVisits.toString() ?? '0');
    _parentMeetings = TextEditingController(text: e?.parentMeetings.toString() ?? '0');
    _communityMeetings = TextEditingController(text: e?.communityMeetings.toString() ?? '0');
    _banners = TextEditingController(text: e?.banners.toString() ?? '0');
    _posters = TextEditingController(text: e?.posters.toString() ?? '0');
    _socialMedia = TextEditingController(text: e?.socialMediaActivities.toString() ?? '0');
    _textbooks = TextEditingController(text: e?.freeTextbooksDistributed.toString() ?? '0');
    _otherSupport = TextEditingController(text: e?.otherSupport ?? '');
    _remarks = TextEditingController(text: e?.remarks ?? '');
    _remarksUrdu = TextEditingController(text: e?.remarksUrdu ?? '');
    if (e != null) {
      _date = e.date;
      _status = e.status;
    }
    for (final c in [_target, _currentEnrollment]) {
      c.addListener(() => setState(() {}));
    }
  }

  String _defaultAcademicYear() {
    final int y = DateTime.now().year;
    return '$y-${y + 1}';
  }

  @override
  void dispose() {
    for (final c in [
      _academicYear, _target, _previousEnrollment, _currentEnrollment, _boys, _girls,
      _ooscIdentified, _ooscReenrolled, _doorToDoor, _parentMeetings, _communityMeetings,
      _banners, _posters, _socialMedia, _textbooks, _otherSupport, _remarks, _remarksUrdu,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2015),
      lastDate: DateTime.now(),
    );
    if (picked != null) setState(() => _date = picked);
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    setState(() => _schoolTouched = true);
    final bool formValid = _formKey.currentState?.validate() ?? false;
    if (!formValid || _selectedSchool == null) {
      setState(() {});
      return;
    }
    setState(() => _isSubmitting = true);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final int target = int.tryParse(_target.text) ?? 0;
    final int current = int.tryParse(_currentEnrollment.text) ?? 0;
    final String id = widget.existing?.id ?? OfflineWriteHelper.newId();
    final AdmissionCampaignModel campaign = AdmissionCampaignModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      academicYear: _academicYear.text.trim(),
      targetEnrollment: target,
      previousEnrollment: int.tryParse(_previousEnrollment.text) ?? 0,
      currentEnrollment: current,
      newAdmissionsBoys: int.tryParse(_boys.text) ?? 0,
      newAdmissionsGirls: int.tryParse(_girls.text) ?? 0,
      ooscIdentified: int.tryParse(_ooscIdentified.text) ?? 0,
      ooscReenrolled: int.tryParse(_ooscReenrolled.text) ?? 0,
      doorToDoorVisits: int.tryParse(_doorToDoor.text) ?? 0,
      parentMeetings: int.tryParse(_parentMeetings.text) ?? 0,
      communityMeetings: int.tryParse(_communityMeetings.text) ?? 0,
      banners: int.tryParse(_banners.text) ?? 0,
      posters: int.tryParse(_posters.text) ?? 0,
      socialMediaActivities: int.tryParse(_socialMedia.text) ?? 0,
      freeTextbooksDistributed: int.tryParse(_textbooks.text) ?? 0,
      otherSupport: _otherSupport.text.trim().isEmpty ? null : _otherSupport.text.trim(),
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
      remarksUrdu: _remarksUrdu.text.trim().isEmpty ? null : _remarksUrdu.text.trim(),
      date: _date,
      status: _status,
      achievementPercentage: calculateAchievementPercentage(targetEnrollment: target, currentEnrollment: current),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(admissionCampaignRepositoryProvider);
    if (_isEdit) {
      await repo.update(campaign);
    } else {
      await repo.create(campaign);
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
    final int target = int.tryParse(_target.text) ?? 0;
    final int current = int.tryParse(_currentEnrollment.text) ?? 0;
    final double previewPct = calculateAchievementPercentage(targetEnrollment: target, currentEnrollment: current);

    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.admission_addCampaign)),
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
              label: l10n.admission_academicYear,
              controller: _academicYear,
              forceLtr: true,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: _pickDate,
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.common_date),
                child: Text(DateFormat.yMMMd().format(_date)),
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<CampaignStatus>(
              initialValue: _status,
              decoration: InputDecoration(labelText: l10n.admission_status),
              items: CampaignStatus.values
                  .map((s) => DropdownMenuItem(value: s, child: Text(_statusLabel(l10n, s))))
                  .toList(),
              onChanged: (v) => setState(() => _status = v ?? _status),
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.admission_target),
            AppTextField(
              label: l10n.admission_target,
              controller: _target,
              forceLtr: true,
              keyboardType: TextInputType.number,
              validator: (v) => Validators.positiveNumber(int.tryParse(v ?? '')) == null
                  ? null
                  : l10n.validation_positive,
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(child: AppTextField(label: l10n.admission_previousEnrollment, controller: _previousEnrollment, forceLtr: true, keyboardType: TextInputType.number)),
                const SizedBox(width: 12),
                Expanded(child: AppTextField(label: l10n.admission_currentEnrollment, controller: _currentEnrollment, forceLtr: true, keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(height: 16),
            AchievementGauge(target: target, achieved: current, percentage: previewPct),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.admission_newAdmissionsTotal),
            Row(
              children: <Widget>[
                Expanded(child: AppTextField(label: l10n.admission_newAdmissionsBoys, controller: _boys, forceLtr: true, keyboardType: TextInputType.number)),
                const SizedBox(width: 12),
                Expanded(child: AppTextField(label: l10n.admission_newAdmissionsGirls, controller: _girls, forceLtr: true, keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.dashboard_oosc),
            Row(
              children: <Widget>[
                Expanded(child: AppTextField(label: l10n.admission_ooscIdentified, controller: _ooscIdentified, forceLtr: true, keyboardType: TextInputType.number)),
                const SizedBox(width: 12),
                Expanded(child: AppTextField(label: l10n.admission_ooscReenrolled, controller: _ooscReenrolled, forceLtr: true, keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.more_community),
            AppTextField(label: l10n.admission_doorToDoorVisits, controller: _doorToDoor, forceLtr: true, keyboardType: TextInputType.number),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(child: AppTextField(label: l10n.admission_parentMeetings, controller: _parentMeetings, forceLtr: true, keyboardType: TextInputType.number)),
                const SizedBox(width: 12),
                Expanded(child: AppTextField(label: l10n.admission_communityMeetings, controller: _communityMeetings, forceLtr: true, keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.admission_socialMediaActivities),
            Row(
              children: <Widget>[
                Expanded(child: AppTextField(label: l10n.admission_banners, controller: _banners, forceLtr: true, keyboardType: TextInputType.number)),
                const SizedBox(width: 12),
                Expanded(child: AppTextField(label: l10n.admission_posters, controller: _posters, forceLtr: true, keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.admission_socialMediaActivities, controller: _socialMedia, forceLtr: true, keyboardType: TextInputType.number),
            const SizedBox(height: 12),
            AppTextField(label: l10n.admission_freeTextbooksDistributed, controller: _textbooks, forceLtr: true, keyboardType: TextInputType.number),
            const SizedBox(height: 12),
            AppTextField(label: l10n.admission_otherSupport, controller: _otherSupport, maxLines: 2),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.common_remarks),
            AppTextField(label: l10n.common_remarks, controller: _remarks, maxLines: 3),
            const SizedBox(height: 12),
            AppTextField(label: '${l10n.common_remarks} (اردو)', controller: _remarksUrdu, maxLines: 3),
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

  String _statusLabel(AppLocalizations l10n, CampaignStatus s) => switch (s) {
        CampaignStatus.planned => l10n.admission_status_planned,
        CampaignStatus.active => l10n.admission_status_active,
        CampaignStatus.completed => l10n.admission_status_completed,
      };
}
