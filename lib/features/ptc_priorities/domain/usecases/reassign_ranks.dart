import '../../data/models/ptc_priority_model.dart';

/// Applies a drag-and-drop move to [items] and renumbers every affected
/// entry so ranks stay a contiguous 1..N sequence with no gaps or ties.
///
/// [newIndex] is the item's *final* destination index (the convention used
/// by `ReorderableListView.onReorderItem`, which has already accounted for
/// the item being lifted out of the list).
List<PtcPriorityModel> reorderAndReassignRanks(
  List<PtcPriorityModel> items,
  int oldIndex,
  int newIndex,
) {
  if (items.isEmpty) return items;
  if (oldIndex < 0 || oldIndex >= items.length) return items;

  final List<PtcPriorityModel> working = List<PtcPriorityModel>.from(items);
  final int clampedTarget = newIndex.clamp(0, working.length - 1);

  final PtcPriorityModel moved = working.removeAt(oldIndex);
  working.insert(clampedTarget, moved);

  return <PtcPriorityModel>[
    for (int i = 0; i < working.length; i++)
      if (working[i].rank != i + 1) working[i].copyWith(rank: i + 1) else working[i],
  ];
}

/// The subset of [reordered] whose rank actually changed relative to
/// [original] — only these need a Firestore write after a drag.
List<PtcPriorityModel> changedRanks(
  List<PtcPriorityModel> original,
  List<PtcPriorityModel> reordered,
) {
  final Map<String, int> before = <String, int>{
    for (final PtcPriorityModel p in original) p.id: p.rank,
  };
  return reordered.where((PtcPriorityModel p) => before[p.id] != p.rank).toList();
}
