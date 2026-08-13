import '../../data/models/hierarchy_node_model.dart';

abstract class HierarchyNodeRepository {
  Stream<List<HierarchyNodeModel>> watchAll();

  /// All active nodes whose [HierarchyNodeModel.parentId] equals [parentId]
  /// (or all root nodes when [parentId] is null, i.e. Districts).
  Stream<List<HierarchyNodeModel>> watchChildrenOf(String? parentId);

  Future<HierarchyNodeModel?> getById(String id);

  Future<void> create(HierarchyNodeModel node);

  Future<void> update(HierarchyNodeModel node);

  Future<void> setActive(String id, bool isActive);
}
