import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/section_header.dart';
import '../../data/models/school_model.dart';
import '../providers/hierarchy_providers.dart';
import '../widgets/hierarchy_picker.dart';

class SchoolFormScreen extends ConsumerStatefulWidget {
  const SchoolFormScreen({super.key, this.existing});

  final SchoolModel? existing;

  @override
  ConsumerState<SchoolFormScreen> createState() => _SchoolFormScreenState();
}

class _SchoolFormScreenState extends ConsumerState<SchoolFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _name;
  late final TextEditingController _nameUr;
  late final TextEditingController _emis;
  late final TextEditingController _village;
  late final TextEditingController _headTeacherName;
  late final TextEditingController _contactPhone;
  late final TextEditingController _teachers;
  late final TextEditingController _boys;
  late final TextEditingController _girls;
  late final TextEditingController _classrooms;
  late final TextEditingController _toilets;
  late final TextEditingController _latitude;
  late final TextEditingController _longitude;

  String? _districtId, _subDivisionId, _circleId, _clusterId;
  SchoolLevel _level = SchoolLevel.primary;
  SchoolGender _gender = SchoolGender.mixed;
  BuildingCondition _condition = BuildingCondition.good;
  bool _drinkingWater = false, _electricity = false, _boundaryWall = false;
  bool _eceRoom = false,
      _playground = false,
      _furniture = false,
      _library = false,
      _itFacilities = false;
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final SchoolModel? e = widget.existing;
    _name = TextEditingController(text: e?.name ?? '');
    _nameUr = TextEditingController(text: e?.nameUrdu ?? '');
    _emis = TextEditingController(text: e?.emisCode ?? '');
    _village = TextEditingController(text: e?.village ?? '');
    _headTeacherName = TextEditingController(text: e?.headTeacherName ?? '');
    _contactPhone = TextEditingController(text: e?.contactPhone ?? '');
    _teachers = TextEditingController(text: e?.teachersCount.toString() ?? '0');
    _boys = TextEditingController(text: e?.boysCount.toString() ?? '0');
    _girls = TextEditingController(text: e?.girlsCount.toString() ?? '0');
    _classrooms = TextEditingController(text: e?.classrooms.toString() ?? '0');
    _toilets = TextEditingController(text: e?.toilets.toString() ?? '0');
    _latitude = TextEditingController(text: e?.latitude?.toString() ?? '');
    _longitude = TextEditingController(text: e?.longitude?.toString() ?? '');
    _districtId = e?.districtId;
    _subDivisionId = e?.subDivisionId;
    _circleId = e?.circleId;
    _clusterId = e?.clusterId;
    if (e != null) {
      _level = e.level;
      _gender = e.gender;
      _condition = e.buildingCondition;
      _drinkingWater = e.drinkingWater;
      _electricity = e.electricity;
      _boundaryWall = e.boundaryWall;
      _eceRoom = e.eceRoom;
      _playground = e.playground;
      _furniture = e.furniture;
      _library = e.library;
      _itFacilities = e.itFacilities;
    }
  }

  @override
  void dispose() {
    for (final c in [
      _name,
      _nameUr,
      _emis,
      _village,
      _headTeacherName,
      _contactPhone,
      _teachers,
      _boys,
      _girls,
      _classrooms,
      _toilets,
      _latitude,
      _longitude,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool valid = (_formKey.currentState?.validate() ?? false) && _clusterId != null;
    if (!valid) {
      setState(() {});
      return;
    }
    final int boys = int.tryParse(_boys.text) ?? 0;
    final int girls = int.tryParse(_girls.text) ?? 0;
    setState(() => _isSubmitting = true);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final SchoolModel school = SchoolModel(
      id: widget.existing?.id ?? OfflineWriteHelper.newId(),
      name: _name.text.trim(),
      nameUrdu: _nameUr.text.trim().isEmpty ? null : _nameUr.text.trim(),
      emisCode: _emis.text.trim(),
      districtId: _districtId!,
      subDivisionId: _subDivisionId!,
      circleId: _circleId!,
      clusterId: _clusterId!,
      village: _village.text.trim().isEmpty ? null : _village.text.trim(),
      level: _level,
      gender: _gender,
      headTeacherName: _headTeacherName.text.trim().isEmpty ? null : _headTeacherName.text.trim(),
      contactPhone: _contactPhone.text.trim().isEmpty ? null : _contactPhone.text.trim(),
      teachersCount: int.tryParse(_teachers.text) ?? 0,
      boysCount: boys,
      girlsCount: girls,
      totalEnrollment: boys + girls,
      classrooms: int.tryParse(_classrooms.text) ?? 0,
      toilets: int.tryParse(_toilets.text) ?? 0,
      drinkingWater: _drinkingWater,
      electricity: _electricity,
      boundaryWall: _boundaryWall,
      eceRoom: _eceRoom,
      playground: _playground,
      furniture: _furniture,
      library: _library,
      itFacilities: _itFacilities,
      buildingCondition: _condition,
      latitude: double.tryParse(_latitude.text),
      longitude: double.tryParse(_longitude.text),
      photoUrl: widget.existing?.photoUrl,
      isActive: widget.existing?.isActive ?? true,
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(schoolRepositoryProvider);
    if (_isEdit) {
      await repo.update(school);
    } else {
      await repo.create(school);
    }
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.common_success_saved)));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.hierarchy_addSchool)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            SectionHeader(title: l10n.hierarchy_schools),
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
            if (_clusterId == null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  l10n.validation_required,
                  style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                ),
              ),
            const SizedBox(height: 16),
            AppTextField(
              label: l10n.hierarchy_name,
              controller: _name,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.hierarchy_nameUrdu, controller: _nameUr),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.hierarchy_emisCode,
              controller: _emis,
              forceLtr: true,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.hierarchy_village, controller: _village),
            const SizedBox(height: 12),
            DropdownButtonFormField<SchoolLevel>(
              isExpanded: true,
              initialValue: _level,
              decoration: InputDecoration(labelText: l10n.hierarchy_schoolLevel),
              items: SchoolLevel.values
                  .map((v) => DropdownMenuItem(value: v, child: Text(_levelLabel(l10n, v))))
                  .toList(),
              onChanged: (v) => setState(() => _level = v ?? _level),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<SchoolGender>(
              isExpanded: true,
              initialValue: _gender,
              decoration: InputDecoration(labelText: l10n.hierarchy_schoolType),
              items: SchoolGender.values
                  .map((v) => DropdownMenuItem(value: v, child: Text(_genderLabel(l10n, v))))
                  .toList(),
              onChanged: (v) => setState(() => _gender = v ?? _gender),
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.hierarchy_headTeacher),
            AppTextField(label: l10n.hierarchy_headTeacher, controller: _headTeacherName),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.profile_mobile,
              controller: _contactPhone,
              forceLtr: true,
              keyboardType: TextInputType.phone,
              validator: (v) {
                final String? key = Validators.phone(v);
                return key == null ? null : l10n.validation_invalidPhone;
              },
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.dashboard_totalEnrollment),
            Row(
              children: <Widget>[
                Expanded(
                  child: AppTextField(
                    label: l10n.hierarchy_teachers,
                    controller: _teachers,
                    keyboardType: TextInputType.number,
                    forceLtr: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.hierarchy_boys,
                    controller: _boys,
                    keyboardType: TextInputType.number,
                    forceLtr: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                Expanded(
                  child: AppTextField(
                    label: l10n.hierarchy_girls,
                    controller: _girls,
                    keyboardType: TextInputType.number,
                    forceLtr: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.hierarchy_classrooms,
                    controller: _classrooms,
                    keyboardType: TextInputType.number,
                    forceLtr: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.hierarchy_toilets,
              controller: _toilets,
              keyboardType: TextInputType.number,
              forceLtr: true,
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.hierarchy_facilities),
            SwitchListTile(
              value: _drinkingWater,
              title: Text(l10n.hierarchy_drinkingWater),
              onChanged: (v) => setState(() => _drinkingWater = v),
            ),
            SwitchListTile(
              value: _electricity,
              title: Text(l10n.hierarchy_electricity),
              onChanged: (v) => setState(() => _electricity = v),
            ),
            SwitchListTile(
              value: _boundaryWall,
              title: Text(l10n.hierarchy_boundaryWall),
              onChanged: (v) => setState(() => _boundaryWall = v),
            ),
            SwitchListTile(
              value: _eceRoom,
              title: Text(l10n.hierarchy_eceRoom),
              onChanged: (v) => setState(() => _eceRoom = v),
            ),
            SwitchListTile(
              value: _playground,
              title: Text(l10n.hierarchy_playground),
              onChanged: (v) => setState(() => _playground = v),
            ),
            SwitchListTile(
              value: _furniture,
              title: Text(l10n.hierarchy_furniture),
              onChanged: (v) => setState(() => _furniture = v),
            ),
            SwitchListTile(
              value: _library,
              title: Text(l10n.hierarchy_library),
              onChanged: (v) => setState(() => _library = v),
            ),
            SwitchListTile(
              value: _itFacilities,
              title: Text(l10n.hierarchy_itFacilities),
              onChanged: (v) => setState(() => _itFacilities = v),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<BuildingCondition>(
              isExpanded: true,
              initialValue: _condition,
              decoration: InputDecoration(labelText: l10n.hierarchy_buildingCondition),
              items: BuildingCondition.values
                  .map((v) => DropdownMenuItem(value: v, child: Text(_conditionLabel(l10n, v))))
                  .toList(),
              onChanged: (v) => setState(() => _condition = v ?? _condition),
            ),
            const SizedBox(height: 20),
            SectionHeader(title: l10n.hierarchy_location),
            Row(
              children: <Widget>[
                Expanded(
                  child: AppTextField(
                    label: l10n.hierarchy_latitude,
                    controller: _latitude,
                    forceLtr: true,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: AppTextField(
                    label: l10n.hierarchy_longitude,
                    controller: _longitude,
                    forceLtr: true,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                  ),
                ),
              ],
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

  String _levelLabel(AppLocalizations l10n, SchoolLevel v) => switch (v) {
    SchoolLevel.primary => l10n.school_level_primary,
    SchoolLevel.elementary => l10n.school_level_elementary,
    SchoolLevel.middle => l10n.school_level_middle,
    SchoolLevel.high => l10n.school_level_high,
    SchoolLevel.higherSecondary => l10n.school_level_higherSecondary,
  };

  String _genderLabel(AppLocalizations l10n, SchoolGender v) => switch (v) {
    SchoolGender.boys => l10n.school_gender_boys,
    SchoolGender.girls => l10n.school_gender_girls,
    SchoolGender.mixed => l10n.school_gender_mixed,
  };

  String _conditionLabel(AppLocalizations l10n, BuildingCondition v) => switch (v) {
    BuildingCondition.good => l10n.building_condition_good,
    BuildingCondition.needsRepair => l10n.building_condition_needsRepair,
    BuildingCondition.critical => l10n.building_condition_critical,
  };
}
