import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/confirm_dialog.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/hierarchy_node_model.dart';
import '../../domain/hierarchy_level.dart';
import '../providers/hierarchy_providers.dart';
import 'hierarchy_level_form_screen.dart';

/// Generic admin list screen for District / Sub-Division / Circle / Cluster
/// — identical shape across all four levels, parameterized by [level].
class HierarchyLevelListScreen extends ConsumerWidget {
  const HierarchyLevelListScreen({super.key, required this.level});

  final HierarchyLevel level;

  String _title(AppLocalizations l10n) => switch (level) {
    HierarchyLevel.district => l10n.hierarchy_districts,
    HierarchyLevel.subDivision => l10n.hierarchy_subDivisions,
    HierarchyLevel.circle => l10n.hierarchy_circles,
    HierarchyLevel.cluster => l10n.hierarchy_clusters,
  };

  String _addLabel(AppLocalizations l10n) => switch (level) {
    HierarchyLevel.district => l10n.hierarchy_addDistrict,
    HierarchyLevel.subDivision => l10n.hierarchy_addSubDivision,
    HierarchyLevel.circle => l10n.hierarchy_addCircle,
    HierarchyLevel.cluster => l10n.hierarchy_addCluster,
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<HierarchyNodeModel>> nodesAsync = ref.watch(hierarchyAllProvider(level));

    return AppScaffold(
      title: _title(l10n),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (_) => HierarchyLevelFormScreen(level: level))),
        icon: const Icon(Icons.add),
        label: Text(_addLabel(l10n)),
      ),
      body: nodesAsync.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<HierarchyNodeModel> nodes) {
          if (nodes.isEmpty) {
            return EmptyState(message: l10n.hierarchy_noClusters, icon: Icons.hub_outlined);
          }
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: nodes.length,
            separatorBuilder: (_, _) => const SizedBox(height: 4),
            itemBuilder: (BuildContext context, int index) {
              final HierarchyNodeModel node = nodes[index];
              return Card(
                child: ListTile(
                  title: Text(node.name),
                  subtitle: node.nameUrdu != null ? Text(node.nameUrdu!) : null,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Chip(
                        label: Text(
                          node.isActive ? l10n.hierarchy_active : l10n.hierarchy_inactive,
                        ),
                        backgroundColor: node.isActive
                            ? null
                            : Theme.of(context).colorScheme.errorContainer,
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit_outlined),
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => HierarchyLevelFormScreen(level: level, existing: node),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(node.isActive ? Icons.toggle_on : Icons.toggle_off_outlined),
                        onPressed: () async {
                          final bool confirmed = await showConfirmDialog(
                            context,
                            message: l10n.hierarchy_deactivateConfirm,
                          );
                          if (confirmed) {
                            await ref
                                .read(hierarchyRepoFor(level))
                                .setActive(node.id, !node.isActive);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
