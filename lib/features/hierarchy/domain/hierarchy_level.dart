import '../../../core/firebase/firestore_paths.dart';

/// District, Sub-Division, Circle, and Cluster share an identical shape
/// (name/nameUrdu/code/parent/isActive) — this enum drives one generic
/// model, repository, and screen pair for all four instead of four
/// near-duplicate implementations. School is richer and has its own.
enum HierarchyLevel { district, subDivision, circle, cluster }

extension HierarchyLevelX on HierarchyLevel {
  String get collectionName => switch (this) {
    HierarchyLevel.district => FirestorePaths.districts,
    HierarchyLevel.subDivision => FirestorePaths.subDivisions,
    HierarchyLevel.circle => FirestorePaths.circles,
    HierarchyLevel.cluster => FirestorePaths.clusters,
  };

  /// The immediate parent level, or null for District (the root).
  HierarchyLevel? get parentLevel => switch (this) {
    HierarchyLevel.district => null,
    HierarchyLevel.subDivision => HierarchyLevel.district,
    HierarchyLevel.circle => HierarchyLevel.subDivision,
    HierarchyLevel.cluster => HierarchyLevel.circle,
  };
}
