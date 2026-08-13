import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/local_db/offline_write_helper.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../data/models/hierarchy_node_model.dart';
import '../../domain/hierarchy_level.dart';
import '../providers/hierarchy_providers.dart';
import '../widgets/hierarchy_picker.dart';

class HierarchyLevelFormScreen extends ConsumerStatefulWidget {
  const HierarchyLevelFormScreen({super.key, required this.level, this.existing});

  final HierarchyLevel level;
  final HierarchyNodeModel? existing;

  @override
  ConsumerState<HierarchyLevelFormScreen> createState() => _HierarchyLevelFormScreenState();
}

class _HierarchyLevelFormScreenState extends ConsumerState<HierarchyLevelFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _nameUrController;
  late final TextEditingController _codeController;

  String? _districtId;
  String? _subDivisionId;
  String? _circleId;
  bool _isSubmitting = false;

  bool get _isEdit => widget.existing != null;

  @override
  void initState() {
    super.initState();
    final HierarchyNodeModel? e = widget.existing;
    _nameController = TextEditingController(text: e?.name ?? '');
    _nameUrController = TextEditingController(text: e?.nameUrdu ?? '');
    _codeController = TextEditingController(text: e?.code ?? '');
    _districtId = e?.districtId;
    _subDivisionId = e?.subDivisionId;
    _circleId = e?.circleId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameUrController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  String? get _parentId => switch (widget.level) {
        HierarchyLevel.district => null,
        HierarchyLevel.subDivision => _districtId,
        HierarchyLevel.circle => _subDivisionId,
        HierarchyLevel.cluster => _circleId,
      };

  bool get _parentSatisfied => widget.level == HierarchyLevel.district || _parentId != null;

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false) || !_parentSatisfied) {
      setState(() {});
      return;
    }
    setState(() => _isSubmitting = true);
    final String uid = ref.read(currentUserProvider).valueOrNull?.uid ?? 'unknown';
    final DateTime now = DateTime.now();
    final HierarchyNodeModel node = HierarchyNodeModel(
      id: widget.existing?.id ?? OfflineWriteHelper.newId(),
      name: _nameController.text.trim(),
      nameUrdu: _nameUrController.text.trim().isEmpty ? null : _nameUrController.text.trim(),
      code: _codeController.text.trim().isEmpty ? null : _codeController.text.trim(),
      parentId: _parentId,
      districtId: widget.level == HierarchyLevel.district ? null : _districtId,
      subDivisionId: (widget.level == HierarchyLevel.circle || widget.level == HierarchyLevel.cluster)
          ? _subDivisionId
          : null,
      circleId: widget.level == HierarchyLevel.cluster ? _circleId : null,
      isActive: widget.existing?.isActive ?? true,
      createdAt: widget.existing?.createdAt ?? now,
      updatedAt: now,
      createdBy: widget.existing?.createdBy ?? uid,
    );
    final repo = ref.read(hierarchyRepoFor(widget.level));
    if (_isEdit) {
      await repo.update(node);
    } else {
      await repo.create(node);
    }
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(_isEdit ? l10n.common_edit : l10n.common_add)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            if (widget.level != HierarchyLevel.district) ...<Widget>[
              _ParentPickerChain(
                level: widget.level,
                districtId: _districtId,
                subDivisionId: _subDivisionId,
                circleId: _circleId,
                onChanged: ({districtId, subDivisionId, circleId, clusterId}) => setState(() {
                  _districtId = districtId;
                  _subDivisionId = subDivisionId;
                  _circleId = circleId;
                }),
              ),
              if (!_parentSatisfied)
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 8),
                  child: Text(
                    l10n.validation_required,
                    style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                  ),
                ),
              const SizedBox(height: 8),
            ],
            AppTextField(
              label: l10n.hierarchy_name,
              controller: _nameController,
              validator: (v) => Validators.required(v) == null ? null : l10n.validation_required,
            ),
            const SizedBox(height: 12),
            AppTextField(label: l10n.hierarchy_nameUrdu, controller: _nameUrController),
            const SizedBox(height: 12),
            AppTextField(label: l10n.hierarchy_code, controller: _codeController, forceLtr: true),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _isSubmitting ? null : _submit,
              child: _isSubmitting
                  ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : Text(l10n.common_save),
            ),
          ],
        ),
      ),
    );
  }
}

/// Renders only the picker levels above [level] (e.g. Cluster shows
/// District+Sub-Division+Circle pickers, Circle shows District+Sub-Division).
class _ParentPickerChain extends StatelessWidget {
  const _ParentPickerChain({
    required this.level,
    required this.districtId,
    required this.subDivisionId,
    required this.circleId,
    required this.onChanged,
  });

  final HierarchyLevel level;
  final String? districtId;
  final String? subDivisionId;
  final String? circleId;
  final void Function({String? districtId, String? subDivisionId, String? circleId, String? clusterId}) onChanged;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        HierarchyLevelDropdown(
          level: HierarchyLevel.district,
          parentId: null,
          selectedId: districtId,
          label: l10n.hierarchy_selectDistrict,
          onChanged: (String? id) => onChanged(districtId: id),
        ),
        if (level == HierarchyLevel.circle || level == HierarchyLevel.cluster) ...<Widget>[
          const SizedBox(height: 12),
          HierarchyLevelDropdown(
            level: HierarchyLevel.subDivision,
            parentId: districtId,
            selectedId: subDivisionId,
            label: l10n.hierarchy_selectSubDivision,
            onChanged: (String? id) => onChanged(districtId: districtId, subDivisionId: id),
          ),
        ],
        if (level == HierarchyLevel.cluster) ...<Widget>[
          const SizedBox(height: 12),
          HierarchyLevelDropdown(
            level: HierarchyLevel.circle,
            parentId: subDivisionId,
            selectedId: circleId,
            label: l10n.hierarchy_selectCircle,
            onChanged: (String? id) =>
                onChanged(districtId: districtId, subDivisionId: subDivisionId, circleId: id),
          ),
        ],
      ],
    );
  }
}
