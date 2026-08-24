import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../data/hierarchy_node_repository_impl.dart';
import '../../data/models/hierarchy_node_model.dart';
import '../../data/models/school_model.dart';
import '../../data/school_repository_impl.dart';
import '../../domain/hierarchy_level.dart';
import '../../domain/repositories/hierarchy_node_repository.dart';
import '../../domain/repositories/school_repository.dart';

final ProviderFamily<HierarchyNodeRepository, HierarchyLevel> _nodeRepoFamily =
    Provider.family<HierarchyNodeRepository, HierarchyLevel>((ref, level) {
      return HierarchyNodeRepositoryImpl(ref.watch(firestoreProvider), level);
    });

class ChildrenQuery {
  const ChildrenQuery(this.level, this.parentId);
  final HierarchyLevel level;
  final String? parentId;

  @override
  bool operator ==(Object other) =>
      other is ChildrenQuery && other.level == level && other.parentId == parentId;

  @override
  int get hashCode => Object.hash(level, parentId);
}

final hierarchyChildrenProvider = StreamProvider.family<List<HierarchyNodeModel>, ChildrenQuery>((
  ref,
  query,
) {
  return ref.watch(_nodeRepoFamily(query.level)).watchChildrenOf(query.parentId);
});

final hierarchyAllProvider = StreamProvider.family<List<HierarchyNodeModel>, HierarchyLevel>((
  ref,
  level,
) {
  return ref.watch(_nodeRepoFamily(level)).watchAll();
});

Provider<HierarchyNodeRepository> hierarchyRepoFor(HierarchyLevel level) => _nodeRepoFamily(level);

final Provider<SchoolRepository> schoolRepositoryProvider = Provider<SchoolRepository>((ref) {
  return SchoolRepositoryImpl(ref.watch(firestoreProvider));
});

final StreamProvider<List<SchoolModel>> scopedSchoolsProvider = StreamProvider<List<SchoolModel>>((
  ref,
) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(schoolRepositoryProvider).watchByScope(filter);
});

final schoolByIdProvider = FutureProvider.family<SchoolModel?, String>((ref, id) {
  return ref.watch(schoolRepositoryProvider).getById(id);
});
