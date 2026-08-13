import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/domain/entities/app_user.dart';
import '../../features/auth/presentation/providers/auth_providers.dart';
import '../constants/app_constants.dart';
import '../firebase/scope_filter.dart';

/// The single source of truth for "who am I / what's my scope". Every
/// scoped query and every route guard derives its hierarchy filter or
/// role check from this provider, combining FirebaseAuth's auth state with
/// a live stream of the matching `users/{uid}` Firestore document.
final StreamProvider<AppUser?> currentUserProvider = StreamProvider<AppUser?>((ref) async* {
  final String? uid = ref.watch(authStateUidProvider).valueOrNull;
  if (uid == null) {
    yield null;
    return;
  }
  yield* ref.watch(authRepositoryProvider).watchUserDoc(uid);
});

final Provider<AppRole?> currentRoleProvider = Provider<AppRole?>((ref) {
  return ref.watch(currentUserProvider).valueOrNull?.role;
});

/// Derives the [ScopeFilter] every scoped repository query should apply.
/// Super Admin gets an unrestricted filter; every other role is restricted
/// to their narrowest assigned hierarchy id.
final Provider<ScopeFilter> currentScopeFilterProvider = Provider<ScopeFilter>((ref) {
  final AppUser? user = ref.watch(currentUserProvider).valueOrNull;
  if (user == null) return const ScopeFilter.unrestricted();
  if (user.role == AppRole.superAdmin) return const ScopeFilter.unrestricted();
  return ScopeFilter(
    districtId: user.districtId,
    subDivisionId: user.subDivisionId,
    circleId: user.circleId,
    clusterId: user.clusterId,
    schoolId: user.schoolId,
  );
});
