import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/confirm_dialog.dart';
import '../../../auth/domain/entities/app_user.dart';
import '../../data/models/official_update_model.dart';
import '../providers/official_update_providers.dart';
import '../widgets/official_update_labels.dart';

class OfficialUpdateFormScreen extends ConsumerStatefulWidget {
  const OfficialUpdateFormScreen({super.key, this.existing});

  final OfficialUpdateModel? existing;

  @override
  ConsumerState<OfficialUpdateFormScreen> createState() => _OfficialUpdateFormScreenState();
}

class _OfficialUpdateFormScreenState extends ConsumerState<OfficialUpdateFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _title;
  late final TextEditingController _titleUrdu;
  late final TextEditingController _description;
  late final TextEditingController _descriptionUrdu;

  UpdateCategory _category = UpdateCategory.announcement;
  UpdatePriority _priority = UpdatePriority.normal;
  UpdateAudience _audience = UpdateAudience.all;
  DateTime _publishDate = DateTime.now();
  DateTime? _eventDate;
  bool _isPublished = false;
  bool _isSaving = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final OfficialUpdateModel? e = widget.existing;
    _title = TextEditingController(text: e?.title ?? '');
    _titleUrdu = TextEditingController(text: e?.titleUrdu ?? '');
    _description = TextEditingController(text: e?.description ?? '');
    _descriptionUrdu = TextEditingController(text: e?.descriptionUrdu ?? '');
    if (e != null) {
      _category = e.category;
      _priority = e.priority;
      _audience = e.targetAudience;
      _publishDate = e.publishDate;
      _eventDate = e.eventDate;
      _isPublished = e.isPublished;
    }
  }

  @override
  void dispose() {
    for (final c in <TextEditingController>[_title, _titleUrdu, _description, _descriptionUrdu]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() => _isSaving = true);
    final AppUser? user = ref.read(currentUserProvider).valueOrNull;
    final DateTime now = DateTime.now();
    final OfficialUpdateModel update = OfficialUpdateModel(
      id: widget.existing?.id ?? OfflineWriteHelper.newId(),
      title: _title.text.trim(),
      titleUrdu: _titleUrdu.text.trim().isEmpty ? null : _titleUrdu.text.trim(),
      description: _description.text.trim(),
      descriptionUrdu: _descriptionUrdu.text.trim().isEmpty ? null : _descriptionUrdu.text.trim(),
      category: _category,
      priority: _priority,
      targetAudience: _audience,
      publishDate: _publishDate,
      eventDate: _eventDate,
      // An update authored by a scoped admin stays within their own scope.
      districtId: widget.existing?.districtId ?? user?.districtId,
      subDivisionId: widget.existing?.subDivisionId ?? user?.subDivisionId,
      circleId: widget.existing?.circleId ?? user?.circleId,
      clusterId: widget.existing?.clusterId ?? user?.clusterId,
      imageUrl: widget.existing?.imageUrl,
      attachmentUrls: widget.existing?.attachmentUrls ?? const <String>[],
      isPublished: _isPublished,
      publishedByUid: widget.existing?.publishedByUid ?? (user?.uid ?? 'unknown'),
      publishedByName: widget.existing?.publishedByName ?? (user?.displayName ?? ''),
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? (user?.uid ?? 'unknown'),
    );
    await ref.read(officialUpdateRepositoryProvider).save(update);
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l10n.common_success_saved)));
    Navigator.of(context).pop();
  }

  Future<void> _delete() async {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final bool confirmed = await showConfirmDialog(context, message: l10n.update_deleteConfirm);
    if (!confirmed || widget.existing == null) return;
    await ref.read(officialUpdateRepositoryProvider).delete(widget.existing!.id);
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEdit ? l10n.common_edit : l10n.update_addUpdate),
        actions: <Widget>[
          if (_isEdit)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: _isSaving ? null : _delete,
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            AppTextField(
              label: l10n.update_title,
              controller: _title,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.update_titleUrdu, controller: _titleUrdu),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.update_description,
              controller: _description,
              maxLines: 5,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(
              label: l10n.update_descriptionUrdu,
              controller: _descriptionUrdu,
              maxLines: 4,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<UpdateCategory>(
              isExpanded: true,
              initialValue: _category,
              decoration: InputDecoration(labelText: l10n.update_category),
              items: UpdateCategory.values
                  .map(
                    (c) => DropdownMenuItem<UpdateCategory>(
                      value: c,
                      child: Text(updateCategoryLabel(l10n, c)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _category = v ?? _category),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<UpdatePriority>(
              isExpanded: true,
              initialValue: _priority,
              decoration: InputDecoration(labelText: l10n.update_priority),
              items: UpdatePriority.values
                  .map(
                    (p) => DropdownMenuItem<UpdatePriority>(
                      value: p,
                      child: Text(updatePriorityLabel(l10n, p)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _priority = v ?? _priority),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<UpdateAudience>(
              isExpanded: true,
              initialValue: _audience,
              decoration: InputDecoration(labelText: l10n.update_audience),
              items: UpdateAudience.values
                  .map(
                    (a) => DropdownMenuItem<UpdateAudience>(
                      value: a,
                      child: Text(updateAudienceLabel(l10n, a)),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _audience = v ?? _audience),
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _publishDate,
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _publishDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.update_publishDate),
                child: Text(DateFormat.yMMMd().format(_publishDate)),
              ),
            ),
            const SizedBox(height: 12),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: _eventDate ?? DateTime.now(),
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _eventDate = picked);
              },
              child: InputDecorator(
                decoration: InputDecoration(labelText: l10n.update_eventDate),
                child: Text(_eventDate != null ? DateFormat.yMMMd().format(_eventDate!) : '—'),
              ),
            ),
            const SizedBox(height: 12),
            SwitchListTile(
              value: _isPublished,
              title: Text(_isPublished ? l10n.update_published : l10n.update_draft),
              subtitle: Text(_isPublished ? l10n.update_unpublish : l10n.update_publish),
              onChanged: (bool v) => setState(() => _isPublished = v),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: _isSaving ? null : _save,
              child: _isSaving
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
