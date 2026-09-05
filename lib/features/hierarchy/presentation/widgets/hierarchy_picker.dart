import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../data/models/hierarchy_node_model.dart';
import '../../domain/hierarchy_level.dart';
import '../providers/hierarchy_providers.dart';

/// A single cascading dropdown for one [HierarchyLevel], reused four times
/// (District/Sub-Division/Circle/Cluster) by `HierarchyCascadePicker` below
/// and standalone by each level's own "parent" field in its create form.
class HierarchyLevelDropdown extends ConsumerWidget {
  const HierarchyLevelDropdown({
    super.key,
    required this.level,
    required this.parentId,
    required this.selectedId,
    required this.onChanged,
    required this.label,
    this.enabled = true,
  });

  final HierarchyLevel level;
  final String? parentId;
  final String? selectedId;
  final ValueChanged<String?> onChanged;
  final String label;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<HierarchyNodeModel>> childrenAsync = level == HierarchyLevel.district
        ? ref.watch(hierarchyChildrenProvider(ChildrenQuery(level, null)))
        : ref.watch(hierarchyChildrenProvider(ChildrenQuery(level, parentId)));

    return childrenAsync.when(
      loading: () => _dropdown(context, label, const <DropdownMenuItem<String>>[], null, false),
      error: (_, _) => _dropdown(context, label, const <DropdownMenuItem<String>>[], null, false),
      data: (List<HierarchyNodeModel> nodes) {
        final bool validSelection = nodes.any((n) => n.id == selectedId);
        return _dropdown(
          context,
          label,
          <DropdownMenuItem<String>>[
            for (final HierarchyNodeModel node in nodes)
              DropdownMenuItem<String>(value: node.id, child: Text(node.name)),
          ],
          validSelection ? selectedId : null,
          enabled && (level == HierarchyLevel.district || parentId != null),
          placeholder: l10n.common_selectOption,
        );
      },
    );
  }

  Widget _dropdown(
    BuildContext context,
    String label,
    List<DropdownMenuItem<String>> items,
    String? value,
    bool isEnabled, {
    String? placeholder,
  }) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      key: ValueKey<String>('$level-$parentId'),
      initialValue: value,
      decoration: InputDecoration(labelText: label),
      items: items,
      onChanged: isEnabled ? onChanged : null,
      hint: placeholder != null ? Text(placeholder) : null,
    );
  }
}

/// Four cascading dropdowns: District -> Sub-Division -> Circle -> Cluster.
/// Selecting a level resets everything below it. [onClusterSelected] fires
/// with the final `(clusterId, circleId, subDivisionId, districtId)` tuple
/// once a full path is chosen.
class HierarchyCascadePicker extends StatefulWidget {
  const HierarchyCascadePicker({
    super.key,
    required this.onChanged,
    this.initialDistrictId,
    this.initialSubDivisionId,
    this.initialCircleId,
    this.initialClusterId,
  });

  final void Function({
    String? districtId,
    String? subDivisionId,
    String? circleId,
    String? clusterId,
  })
  onChanged;
  final String? initialDistrictId;
  final String? initialSubDivisionId;
  final String? initialCircleId;
  final String? initialClusterId;

  @override
  State<HierarchyCascadePicker> createState() => _HierarchyCascadePickerState();
}

class _HierarchyCascadePickerState extends State<HierarchyCascadePicker> {
  String? _districtId;
  String? _subDivisionId;
  String? _circleId;
  String? _clusterId;

  @override
  void initState() {
    super.initState();
    _districtId = widget.initialDistrictId;
    _subDivisionId = widget.initialSubDivisionId;
    _circleId = widget.initialCircleId;
    _clusterId = widget.initialClusterId;
  }

  void _emit() {
    widget.onChanged(
      districtId: _districtId,
      subDivisionId: _subDivisionId,
      circleId: _circleId,
      clusterId: _clusterId,
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        HierarchyLevelDropdown(
          level: HierarchyLevel.district,
          parentId: null,
          selectedId: _districtId,
          label: l10n.hierarchy_selectDistrict,
          onChanged: (String? id) => setState(() {
            _districtId = id;
            _subDivisionId = null;
            _circleId = null;
            _clusterId = null;
            _emit();
          }),
        ),
        const SizedBox(height: 12),
        HierarchyLevelDropdown(
          level: HierarchyLevel.subDivision,
          parentId: _districtId,
          selectedId: _subDivisionId,
          label: l10n.hierarchy_selectSubDivision,
          onChanged: (String? id) => setState(() {
            _subDivisionId = id;
            _circleId = null;
            _clusterId = null;
            _emit();
          }),
        ),
        const SizedBox(height: 12),
        HierarchyLevelDropdown(
          level: HierarchyLevel.circle,
          parentId: _subDivisionId,
          selectedId: _circleId,
          label: l10n.hierarchy_selectCircle,
          onChanged: (String? id) => setState(() {
            _circleId = id;
            _clusterId = null;
            _emit();
          }),
        ),
        const SizedBox(height: 12),
        HierarchyLevelDropdown(
          level: HierarchyLevel.cluster,
          parentId: _circleId,
          selectedId: _clusterId,
          label: l10n.hierarchy_selectCluster,
          onChanged: (String? id) => setState(() {
            _clusterId = id;
            _emit();
          }),
        ),
      ],
    );
  }
}
