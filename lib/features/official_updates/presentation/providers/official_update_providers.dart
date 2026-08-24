import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/firebase/firestore_converters.dart';
import '../../../../core/firebase/firestore_paths.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../../auth/domain/entities/app_user.dart';
import '../../data/models/official_update_model.dart';

/// Official updates are broadcast content, not per-school records, so they
/// don't use `ScopeFilter`. Instead an update optionally carries hierarchy
/// ids and the reader filters client-side to those that apply to them.
class OfficialUpdateRepository {
  OfficialUpdateRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.officialUpdates);

  /// Published updates only — used by the reader-facing list.
  Stream<List<OfficialUpdateModel>> watchPublished() {
    return _collection
        .where('isPublished', isEqualTo: true)
        .orderBy('publishDate', descending: true)
        .limit(200)
        .snapshots()
        .map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => OfficialUpdateModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  /// Everything including drafts — admin authoring view.
  Stream<List<OfficialUpdateModel>> watchAll() {
    return _collection
        .orderBy('publishDate', descending: true)
        .limit(200)
        .snapshots()
        .map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => OfficialUpdateModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  Future<OfficialUpdateModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return OfficialUpdateModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  Future<void> save(OfficialUpdateModel update) async {
    final Map<String, dynamic> data = jsonToFirestoreData(
      update.toJson(),
      dateFields: OfficialUpdateModel.dateFields,
    );
    await _collection.doc(update.id).set(data, SetOptions(merge: true));
  }

  Future<void> setPublished(String id, bool isPublished) async {
    await _collection.doc(id).update(<String, dynamic>{
      'isPublished': isPublished,
      'updatedAt': Timestamp.fromDate(DateTime.now()),
    });
  }

  Future<void> delete(String id) => _collection.doc(id).delete();
}

final officialUpdateRepositoryProvider = Provider<OfficialUpdateRepository>((ref) {
  return OfficialUpdateRepository(ref.watch(firestoreProvider));
});

/// Admins see drafts too; everyone else sees only published updates.
final officialUpdatesProvider = StreamProvider<List<OfficialUpdateModel>>((ref) {
  final AppUser? user = ref.watch(currentUserProvider).valueOrNull;
  final OfficialUpdateRepository repo = ref.watch(officialUpdateRepositoryProvider);
  if (user != null && user.role.isAdmin) return repo.watchAll();
  return repo.watchPublished();
});

/// Narrows the published feed to updates that actually apply to this user:
/// an update with no hierarchy ids is district-wide, otherwise every id it
/// specifies must match the reader's own scope.
final visibleOfficialUpdatesProvider = Provider<List<OfficialUpdateModel>>((ref) {
  final AppUser? user = ref.watch(currentUserProvider).valueOrNull;
  final List<OfficialUpdateModel> all =
      ref.watch(officialUpdatesProvider).valueOrNull ?? const <OfficialUpdateModel>[];
  if (user == null) return const <OfficialUpdateModel>[];
  if (user.role == AppRole.superAdmin) return all;

  bool matches(String? updateScopeId, String? userScopeId) =>
      updateScopeId == null || updateScopeId == userScopeId;

  return all.where((OfficialUpdateModel u) {
    final bool audienceOk = switch (u.targetAudience) {
      UpdateAudience.all => true,
      UpdateAudience.schoolLeaders => user.role == AppRole.schoolLeader,
      UpdateAudience.monitoringOfficers => user.role == AppRole.monitoringOfficer,
      UpdateAudience.admins => user.role.isAdmin,
    };
    return audienceOk &&
        matches(u.districtId, user.districtId) &&
        matches(u.subDivisionId, user.subDivisionId) &&
        matches(u.circleId, user.circleId) &&
        matches(u.clusterId, user.clusterId) &&
        matches(u.schoolId, user.schoolId);
  }).toList();
});

final officialUpdateByIdProvider = FutureProvider.family<OfficialUpdateModel?, String>((ref, id) {
  return ref.watch(officialUpdateRepositoryProvider).getById(id);
});
