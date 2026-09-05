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
import '../../data/models/advertisement_campaign_model.dart';
import '../widgets/advertisement_labels.dart';

class AdvertisementFormScreen extends ConsumerStatefulWidget {
  const AdvertisementFormScreen({super.key, this.existing});

  final AdvertisementCampaignModel? existing;

  @override
  ConsumerState<AdvertisementFormScreen> createState() => _AdvertisementFormScreenState();
}

class _AdvertisementFormScreenState extends ConsumerState<AdvertisementFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _title;
  late final TextEditingController _location;
  late final TextEditingController _quantity;
  late final TextEditingController _description;
  late final TextEditingController _descriptionUrdu;

  SchoolModel? _selectedSchool;
  AdvertisementType _type = AdvertisementType.banner;
  DateTime _activityDate = DateTime.now();
  List<String> _newPhotoPaths = <String>[];
  bool _isSubmitting = false;
  bool _schoolTouched = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final AdvertisementCampaignModel? e = widget.existing;
    _title = TextEditingController(text: e?.campaignTitle ?? '');
    _location = TextEditingController(text: e?.location ?? '');
    _quantity = TextEditingController(text: e?.quantity.toString() ?? '0');
    _description = TextEditingController(text: e?.description ?? '');
    _descriptionUrdu = TextEditingController(text: e?.descriptionUrdu ?? '');
    if (e != null) {
      _type = e.advertisementType;
      _activityDate = e.activityDate;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[
      _title,
      _location,
      _quantity,
      _description,
      _descriptionUrdu,
    ]) {
      c.dispose();
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
    final AdvertisementCampaignModel campaign = AdvertisementCampaignModel(
      id: id,
      schoolId: _selectedSchool!.id,
      clusterId: _selectedSchool!.clusterId,
      circleId: _selectedSchool!.circleId,
      subDivisionId: _selectedSchool!.subDivisionId,
      districtId: _selectedSchool!.districtId,
      campaignTitle: _title.text.trim(),
      advertisementType: _type,
      activityDate: _activityDate,
      location: _location.text.trim().isEmpty ? null : _location.text.trim(),
      quantity: int.tryParse(_quantity.text) ?? 0,
      description: _description.text.trim().isEmpty ? null : _description.text.trim(),
      descriptionUrdu: _descriptionUrdu.text.trim().isEmpty ? null : _descriptionUrdu.text.trim(),
      evidencePhotoUrls: widget.existing?.evidencePhotoUrls ?? const <String>[],
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(advertisementRepositoryProvider);
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
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.advertisement_addCampaign)),
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
            AppTextField(
              label: l10n.advertisement_campaignTitle,
              controller: _title,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<AdvertisementType>(
              initialValue: _type,
              decoration: InputDecoration(labelText: l10n.advertisement_type),
              items: AdvertisementType.values
                  .map(
                    (t) => DropdownMenuItem<AdvertisementType>(
                      value: t,
                      child: Text(advertisementTypeLabel(l10n, t)),
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
            AppTextField(label: l10n.advertisement_location, controller: _location),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.advertisement_quantity,
              controller: _quantity,
              forceLtr: true,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.update_description, controller: _description, maxLines: 3),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.update_descriptionUrdu,
              controller: _descriptionUrdu,
              maxLines: 3,
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
