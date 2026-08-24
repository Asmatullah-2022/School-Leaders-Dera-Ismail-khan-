import 'package:flutter_test/flutter_test.dart';
import 'package:school_leaders_di_khan/features/ptc_priorities/data/models/ptc_priority_model.dart';
import 'package:school_leaders_di_khan/features/ptc_priorities/domain/usecases/reassign_ranks.dart';

PtcPriorityModel _p(String id, int rank) {
  final DateTime now = DateTime(2026, 1, 1);
  return PtcPriorityModel(
    id: id,
    schoolId: 's',
    clusterId: 'cl',
    circleId: 'ci',
    subDivisionId: 'sd',
    districtId: 'd',
    meetingDate: now,
    priorityTitle: id,
    rank: rank,
    category: PtcCategory.other,
    createdAt: now,
    updatedAt: now,
    createdBy: 'u',
  );
}

List<PtcPriorityModel> _list() => <PtcPriorityModel>[
  _p('a', 1),
  _p('b', 2),
  _p('c', 3),
  _p('d', 4),
];

void main() {
  group('reorderAndReassignRanks', () {
    test('moving an item down renumbers 1..N with no gaps or ties', () {
      // Drag 'a' (index 0) to the last slot; onReorderItem reports the final index.
      final List<PtcPriorityModel> result = reorderAndReassignRanks(_list(), 0, 3);
      expect(result.map((p) => p.id).toList(), <String>['b', 'c', 'd', 'a']);
      expect(result.map((p) => p.rank).toList(), <int>[1, 2, 3, 4]);
    });

    test('moving an item up renumbers correctly', () {
      // Drag 'd' (index 3) to the front.
      final List<PtcPriorityModel> result = reorderAndReassignRanks(_list(), 3, 0);
      expect(result.map((p) => p.id).toList(), <String>['d', 'a', 'b', 'c']);
      expect(result.map((p) => p.rank).toList(), <int>[1, 2, 3, 4]);
    });

    test('a no-op drag (dropped back in place) leaves order and ranks untouched', () {
      final List<PtcPriorityModel> result = reorderAndReassignRanks(_list(), 1, 1);
      expect(result.map((p) => p.id).toList(), <String>['a', 'b', 'c', 'd']);
      expect(result.map((p) => p.rank).toList(), <int>[1, 2, 3, 4]);
    });

    test('an empty list is returned unchanged', () {
      expect(reorderAndReassignRanks(const <PtcPriorityModel>[], 0, 1), isEmpty);
    });

    test('an out-of-range oldIndex is ignored rather than throwing', () {
      final List<PtcPriorityModel> input = _list();
      expect(reorderAndReassignRanks(input, 99, 0), input);
      expect(reorderAndReassignRanks(input, -1, 0), input);
    });

    test('an out-of-range newIndex clamps into the list instead of throwing', () {
      final List<PtcPriorityModel> result = reorderAndReassignRanks(_list(), 0, 99);
      expect(result.map((p) => p.rank).toList(), <int>[1, 2, 3, 4]);
      expect(result.last.id, 'a');
    });

    test('repairs pre-existing duplicate/gapped ranks into a clean sequence', () {
      final List<PtcPriorityModel> messy = <PtcPriorityModel>[_p('a', 5), _p('b', 5), _p('c', 9)];
      final List<PtcPriorityModel> result = reorderAndReassignRanks(messy, 0, 1);
      expect(result.map((p) => p.rank).toList(), <int>[1, 2, 3]);
    });
  });

  group('changedRanks', () {
    test('returns only the entries whose rank actually moved', () {
      final List<PtcPriorityModel> before = _list();
      // Move 'a' to index 1 → order becomes b, a, c, d; only 'a' and 'b' shift.
      final List<PtcPriorityModel> after = reorderAndReassignRanks(before, 0, 1);
      final List<String> touched = changedRanks(before, after).map((p) => p.id).toList();
      expect(touched, containsAll(<String>['a', 'b']));
      expect(touched, isNot(contains('c')));
      expect(touched, isNot(contains('d')));
    });

    test('returns empty when nothing moved', () {
      final List<PtcPriorityModel> before = _list();
      expect(changedRanks(before, before), isEmpty);
    });
  });
}
