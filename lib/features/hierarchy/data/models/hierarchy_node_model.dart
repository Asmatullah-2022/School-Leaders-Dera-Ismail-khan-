import 'package:freezed_annotation/freezed_annotation.dart';

part 'hierarchy_node_model.freezed.dart';
part 'hierarchy_node_model.g.dart';

/// Shared shape for District / Sub-Division / Circle / Cluster documents.
/// [districtId]/[subDivisionId]/[circleId] denormalize this node's
/// ANCESTORS (not itself) — e.g. a Cluster's [circleId]/[subDivisionId]/
/// [districtId] are all set, while a District's are all null — matching the
/// denormalization pattern every other collection in the app uses, so
/// `ScopeFilter` applies uniformly here too.
@freezed
abstract class HierarchyNodeModel with _$HierarchyNodeModel {
  const factory HierarchyNodeModel({
    required String id,
    required String name,
    String? nameUrdu,
    String? code,
    String? parentId,
    String? districtId,
    String? subDivisionId,
    String? circleId,
    @Default(true) bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _HierarchyNodeModel;

  const HierarchyNodeModel._();

  factory HierarchyNodeModel.fromJson(Map<String, dynamic> json) =>
      _$HierarchyNodeModelFromJson(json);

  static const Set<String> dateFields = <String>{'createdAt', 'updatedAt'};
}
