import 'package:cloud_firestore/cloud_firestore.dart';

import 'firestore_paths.dart';

/// The hierarchy scope a query should be restricted to, derived from the
/// current user's role + assigned ids (see `current_user_provider.dart`).
/// Every flagship/scaffold repository's `watchByScope` takes one of these.
class ScopeFilter {
  const ScopeFilter({
    this.districtId,
    this.subDivisionId,
    this.circleId,
    this.clusterId,
    this.schoolId,
  });

  /// No restriction — used by Super Admin.
  const ScopeFilter.unrestricted()
      : districtId = null,
        subDivisionId = null,
        circleId = null,
        clusterId = null,
        schoolId = null;

  final String? districtId;
  final String? subDivisionId;
  final String? circleId;
  final String? clusterId;
  final String? schoolId;

  bool get isUnrestricted =>
      districtId == null && subDivisionId == null && circleId == null && clusterId == null && schoolId == null;

  /// Applies the narrowest non-null scope field to [query] as an equality
  /// filter. Narrowest-first because a school-scoped user's schoolId is more
  /// specific than any ancestor id also present on their user doc.
  Query<Map<String, dynamic>> apply(Query<Map<String, dynamic>> query) {
    if (schoolId != null) return query.where(FirestorePaths.fieldSchoolId, isEqualTo: schoolId);
    if (clusterId != null) return query.where(FirestorePaths.fieldClusterId, isEqualTo: clusterId);
    if (circleId != null) return query.where(FirestorePaths.fieldCircleId, isEqualTo: circleId);
    if (subDivisionId != null) {
      return query.where(FirestorePaths.fieldSubDivisionId, isEqualTo: subDivisionId);
    }
    if (districtId != null) return query.where(FirestorePaths.fieldDistrictId, isEqualTo: districtId);
    return query;
  }
}
