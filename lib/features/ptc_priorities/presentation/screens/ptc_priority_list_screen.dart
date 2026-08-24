import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/localization/l10n_gen/app_localizations.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../data/models/ptc_priority_model.dart';
import '../../domain/usecases/reassign_ranks.dart';
import '../providers/ptc_providers.dart';
import '../widgets/ptc_labels.dart';
import 'ptc_priority_detail_screen.dart';
import 'ptc_priority_form_screen.dart';

/// Priorities are grouped by meeting date; within a meeting they can be
/// dragged into rank order, which renumbers and batch-persists the affected
/// rows (see `reorderAndReassignRanks` / `changedRanks`).
class PtcPriorityListScreen extends ConsumerStatefulWidget {
  const PtcPriorityListScreen({super.key});

  @override
  ConsumerState<PtcPriorityListScreen> createState() => _PtcPriorityListScreenState();
}

class _PtcPriorityListScreenState extends ConsumerState<PtcPriorityListScreen> {
  /// Holds the in-flight order for one meeting group while a drag is being
  /// persisted, so the list doesn't flicker back to the server order.
  List<PtcPriorityModel>? _pendingOrder;
  String? _pendingGroupKey;

  Future<void> _handleReorder(
    String groupKey,
    List<PtcPriorityModel> group,
    int oldIndex,
    int newIndex,
  ) async {
    final List<PtcPriorityModel> reordered = reorderAndReassignRanks(group, oldIndex, newIndex);
    final List<PtcPriorityModel> touched = changedRanks(group, reordered);
    if (touched.isEmpty) return;

    setState(() {
      _pendingGroupKey = groupKey;
      _pendingOrder = reordered;
    });
    await ref.read(ptcPriorityRepositoryProvider).updateRanks(touched);
    if (!mounted) return;
    setState(() {
      _pendingGroupKey = null;
      _pendingOrder = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    final AsyncValue<List<PtcPriorityModel>> async = ref.watch(scopedPtcPrioritiesProvider);

    return AppScaffold(
      title: l10n.more_ptc,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (_) => const PtcPriorityFormScreen())),
        icon: const Icon(Icons.add),
        label: Text(l10n.ptc_addPriority),
      ),
      body: async.when(
        loading: () => const LoadingIndicator(),
        error: (Object e, _) => ErrorView(failure: UnknownFailure(details: e.toString())),
        data: (List<PtcPriorityModel> all) {
          if (all.isEmpty) {
            return EmptyState(message: l10n.ptc_noPriorities, icon: Icons.groups_2_outlined);
          }

          final Map<String, List<PtcPriorityModel>> grouped = <String, List<PtcPriorityModel>>{};
          for (final PtcPriorityModel p in all) {
            final String key = '${p.schoolId}|${DateFormat('yyyy-MM-dd').format(p.meetingDate)}';
            grouped.putIfAbsent(key, () => <PtcPriorityModel>[]).add(p);
          }

          return ListView(
            padding: const EdgeInsets.all(12),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  l10n.ptc_reorderHint,
                  style: Theme.of(context).textTheme.bodySmall
                      ?.copyWith(color: Theme.of(context).colorScheme.outline),
                ),
              ),
              for (final MapEntry<String, List<PtcPriorityModel>> entry in grouped.entries)
                _MeetingGroup(
                  groupKey: entry.key,
                  items: (_pendingGroupKey == entry.key ? _pendingOrder : null) ?? entry.value,
                  onReorder: (int o, int n) => _handleReorder(
                    entry.key,
                    (_pendingGroupKey == entry.key ? _pendingOrder : null) ?? entry.value,
                    o,
                    n,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class _MeetingGroup extends StatelessWidget {
  const _MeetingGroup({required this.groupKey, required this.items, required this.onReorder});

  final String groupKey;
  final List<PtcPriorityModel> items;
  final void Function(int oldIndex, int newIndex) onReorder;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            '${l10n.ptc_meetingDate}: ${DateFormat.yMMMd().format(items.first.meetingDate)}',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ReorderableListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          buildDefaultDragHandles: true,
          itemCount: items.length,
          onReorderItem: onReorder,
          itemBuilder: (BuildContext context, int index) {
            final PtcPriorityModel p = items[index];
            return Card(
              key: ValueKey<String>(p.id),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 16,
                  backgroundColor: ptcStatusColor(p.status),
                  child: Text(
                    '${p.rank}',
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(p.priorityTitle),
                subtitle: Text(
                  '${ptcCategoryLabel(l10n, p.category)} · ${ptcStatusLabel(l10n, p.status)}',
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => PtcPriorityDetailScreen(priorityId: p.id),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
