import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/data/scoped_firestore_repository.dart';
import '../../../../core/firebase/firestore_paths.dart';
import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../../advertisement_campaigns/data/models/advertisement_campaign_model.dart';
import '../../../cleanliness/data/models/cleanliness_model.dart';
import '../../../cluster_meetings/data/meeting_action_repository.dart';
import '../../../cluster_meetings/data/models/cluster_meeting_model.dart';
import '../../../community_engagement/data/models/community_activity_model.dart';
import '../../../door_to_door/data/models/door_to_door_activity_model.dart';
import '../../../ece_monitoring/data/models/ece_monitoring_model.dart';
import '../../../parent_teacher_contact/data/models/parent_contact_model.dart';
import '../../../plantation/data/models/plantation_model.dart';
import '../../../school_functionality/data/models/school_functionality_model.dart';
import '../../../school_opening/data/models/school_opening_model.dart';
import '../../../social_media_campaigns/data/models/social_media_campaign_model.dart';
import '../../../statements/data/models/statement_model.dart';
import '../../../textbook_distribution/data/models/textbook_distribution_model.dart';

/// Repository + scoped-list providers for every module that is a plain CRUD
/// collection. Each entry is three lines because they all share
/// [ScopedFirestoreRepository]; adding UI for one of these needs no new data
/// layer at all (see docs/MODULE_PATTERN.md).

// --- Door-to-door (§14) ---
final doorToDoorRepositoryProvider = Provider<ScopedFirestoreRepository<DoorToDoorActivityModel>>((
  ref,
) {
  return ScopedFirestoreRepository<DoorToDoorActivityModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.doorToDoorActivities,
    dateFields: DoorToDoorActivityModel.dateFields,
    orderByField: DoorToDoorActivityModel.orderByField,
    fromJson: DoorToDoorActivityModel.fromJson,
    toJson: (DoorToDoorActivityModel e) => e.toJson(),
    idOf: (DoorToDoorActivityModel e) => e.id,
  );
});

final scopedDoorToDoorProvider = StreamProvider<List<DoorToDoorActivityModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(doorToDoorRepositoryProvider).watchByScope(filter);
});

// --- Community engagement (§15) ---
final communityActivityRepositoryProvider =
    Provider<ScopedFirestoreRepository<CommunityActivityModel>>((ref) {
      return ScopedFirestoreRepository<CommunityActivityModel>(
        firestore: ref.watch(firestoreProvider),
        collectionName: FirestorePaths.communityActivities,
        dateFields: CommunityActivityModel.dateFields,
        orderByField: CommunityActivityModel.orderByField,
        fromJson: CommunityActivityModel.fromJson,
        toJson: (CommunityActivityModel e) => e.toJson(),
        idOf: (CommunityActivityModel e) => e.id,
      );
    });

final scopedCommunityActivitiesProvider = StreamProvider<List<CommunityActivityModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(communityActivityRepositoryProvider).watchByScope(filter);
});

// --- Parent–teacher contact (§16) ---
final parentContactRepositoryProvider = Provider<ScopedFirestoreRepository<ParentContactModel>>((
  ref,
) {
  return ScopedFirestoreRepository<ParentContactModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.parentContacts,
    dateFields: ParentContactModel.dateFields,
    orderByField: ParentContactModel.orderByField,
    fromJson: ParentContactModel.fromJson,
    toJson: (ParentContactModel e) => e.toJson(),
    idOf: (ParentContactModel e) => e.id,
  );
});

final scopedParentContactsProvider = StreamProvider<List<ParentContactModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(parentContactRepositoryProvider).watchByScope(filter);
});

// --- Advertisement campaigns (§17) ---
final advertisementRepositoryProvider =
    Provider<ScopedFirestoreRepository<AdvertisementCampaignModel>>((ref) {
      return ScopedFirestoreRepository<AdvertisementCampaignModel>(
        firestore: ref.watch(firestoreProvider),
        collectionName: FirestorePaths.advertisementCampaigns,
        dateFields: AdvertisementCampaignModel.dateFields,
        orderByField: AdvertisementCampaignModel.orderByField,
        fromJson: AdvertisementCampaignModel.fromJson,
        toJson: (AdvertisementCampaignModel e) => e.toJson(),
        idOf: (AdvertisementCampaignModel e) => e.id,
      );
    });

final scopedAdvertisementsProvider = StreamProvider<List<AdvertisementCampaignModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(advertisementRepositoryProvider).watchByScope(filter);
});

// --- Social media campaigns (§18) ---
final socialMediaRepositoryProvider = Provider<ScopedFirestoreRepository<SocialMediaCampaignModel>>(
  (ref) {
    return ScopedFirestoreRepository<SocialMediaCampaignModel>(
      firestore: ref.watch(firestoreProvider),
      collectionName: FirestorePaths.socialMediaCampaigns,
      dateFields: SocialMediaCampaignModel.dateFields,
      orderByField: SocialMediaCampaignModel.orderByField,
      fromJson: SocialMediaCampaignModel.fromJson,
      toJson: (SocialMediaCampaignModel e) => e.toJson(),
      idOf: (SocialMediaCampaignModel e) => e.id,
    );
  },
);

final scopedSocialMediaProvider = StreamProvider<List<SocialMediaCampaignModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(socialMediaRepositoryProvider).watchByScope(filter);
});

// --- Textbook distribution (§19) ---
final textbookRepositoryProvider = Provider<ScopedFirestoreRepository<TextbookDistributionModel>>((
  ref,
) {
  return ScopedFirestoreRepository<TextbookDistributionModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.textbookDistribution,
    dateFields: TextbookDistributionModel.dateFields,
    orderByField: TextbookDistributionModel.orderByField,
    fromJson: TextbookDistributionModel.fromJson,
    toJson: (TextbookDistributionModel e) => e.toJson(),
    idOf: (TextbookDistributionModel e) => e.id,
  );
});

final scopedTextbooksProvider = StreamProvider<List<TextbookDistributionModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(textbookRepositoryProvider).watchByScope(filter);
});

// --- Cluster meetings (§20) ---
final clusterMeetingRepositoryProvider = Provider<ScopedFirestoreRepository<ClusterMeetingModel>>((
  ref,
) {
  return ScopedFirestoreRepository<ClusterMeetingModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.clusterMeetings,
    dateFields: ClusterMeetingModel.dateFields,
    orderByField: ClusterMeetingModel.orderByField,
    fromJson: ClusterMeetingModel.fromJson,
    toJson: (ClusterMeetingModel e) => e.toJson(),
    idOf: (ClusterMeetingModel e) => e.id,
  );
});

final scopedClusterMeetingsProvider = StreamProvider<List<ClusterMeetingModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(clusterMeetingRepositoryProvider).watchByScope(filter);
});

// --- Statements / goshwaraat (§23) ---
final statementRepositoryProvider = Provider<ScopedFirestoreRepository<StatementModel>>((ref) {
  return ScopedFirestoreRepository<StatementModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.statements,
    dateFields: StatementModel.dateFields,
    orderByField: StatementModel.orderByField,
    fromJson: StatementModel.fromJson,
    toJson: (StatementModel e) => e.toJson(),
    idOf: (StatementModel e) => e.id,
  );
});

final scopedStatementsProvider = StreamProvider<List<StatementModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(statementRepositoryProvider).watchByScope(filter);
});

// --- School functionality (§30) ---
final schoolFunctionalityRepositoryProvider =
    Provider<ScopedFirestoreRepository<SchoolFunctionalityModel>>((ref) {
      return ScopedFirestoreRepository<SchoolFunctionalityModel>(
        firestore: ref.watch(firestoreProvider),
        collectionName: FirestorePaths.schoolFunctionality,
        dateFields: SchoolFunctionalityModel.dateFields,
        orderByField: SchoolFunctionalityModel.orderByField,
        fromJson: SchoolFunctionalityModel.fromJson,
        toJson: (SchoolFunctionalityModel e) => e.toJson(),
        idOf: (SchoolFunctionalityModel e) => e.id,
      );
    });

final scopedSchoolFunctionalityProvider = StreamProvider<List<SchoolFunctionalityModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(schoolFunctionalityRepositoryProvider).watchByScope(filter);
});

// --- School opening (§31) ---
final schoolOpeningRepositoryProvider = Provider<ScopedFirestoreRepository<SchoolOpeningModel>>((
  ref,
) {
  return ScopedFirestoreRepository<SchoolOpeningModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.schoolOpening,
    dateFields: SchoolOpeningModel.dateFields,
    orderByField: SchoolOpeningModel.orderByField,
    fromJson: SchoolOpeningModel.fromJson,
    toJson: (SchoolOpeningModel e) => e.toJson(),
    idOf: (SchoolOpeningModel e) => e.id,
  );
});

final scopedSchoolOpeningProvider = StreamProvider<List<SchoolOpeningModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(schoolOpeningRepositoryProvider).watchByScope(filter);
});

// --- Cleanliness (§24) ---
final cleanlinessRepositoryProvider = Provider<ScopedFirestoreRepository<CleanlinessModel>>((ref) {
  return ScopedFirestoreRepository<CleanlinessModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.cleanliness,
    dateFields: CleanlinessModel.dateFields,
    orderByField: CleanlinessModel.orderByField,
    fromJson: CleanlinessModel.fromJson,
    toJson: (CleanlinessModel e) => e.toJson(),
    idOf: (CleanlinessModel e) => e.id,
  );
});

final scopedCleanlinessProvider = StreamProvider<List<CleanlinessModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(cleanlinessRepositoryProvider).watchByScope(filter);
});

// --- Plantation (§25) ---
final plantationRepositoryProvider = Provider<ScopedFirestoreRepository<PlantationModel>>((ref) {
  return ScopedFirestoreRepository<PlantationModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.plantation,
    dateFields: PlantationModel.dateFields,
    orderByField: PlantationModel.orderByField,
    fromJson: PlantationModel.fromJson,
    toJson: (PlantationModel e) => e.toJson(),
    idOf: (PlantationModel e) => e.id,
  );
});

final scopedPlantationProvider = StreamProvider<List<PlantationModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(plantationRepositoryProvider).watchByScope(filter);
});

// --- ECE monitoring (§26) ---
final eceMonitoringRepositoryProvider = Provider<ScopedFirestoreRepository<EceMonitoringModel>>((
  ref,
) {
  return ScopedFirestoreRepository<EceMonitoringModel>(
    firestore: ref.watch(firestoreProvider),
    collectionName: FirestorePaths.eceMonitoring,
    dateFields: EceMonitoringModel.dateFields,
    orderByField: EceMonitoringModel.orderByField,
    fromJson: EceMonitoringModel.fromJson,
    toJson: (EceMonitoringModel e) => e.toJson(),
    idOf: (EceMonitoringModel e) => e.id,
  );
});

final scopedEceMonitoringProvider = StreamProvider<List<EceMonitoringModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(eceMonitoringRepositoryProvider).watchByScope(filter);
});

// --- Detail (getById) providers, one per module, all delegating to the
// repository above so a detail screen can `ref.watch` a single family. ---

final doorToDoorByIdProvider = FutureProvider.family<DoorToDoorActivityModel?, String>((ref, id) {
  return ref.watch(doorToDoorRepositoryProvider).getById(id);
});

final communityActivityByIdProvider = FutureProvider.family<CommunityActivityModel?, String>((
  ref,
  id,
) {
  return ref.watch(communityActivityRepositoryProvider).getById(id);
});

final parentContactByIdProvider = FutureProvider.family<ParentContactModel?, String>((ref, id) {
  return ref.watch(parentContactRepositoryProvider).getById(id);
});

final advertisementByIdProvider = FutureProvider.family<AdvertisementCampaignModel?, String>((
  ref,
  id,
) {
  return ref.watch(advertisementRepositoryProvider).getById(id);
});

final socialMediaByIdProvider = FutureProvider.family<SocialMediaCampaignModel?, String>((ref, id) {
  return ref.watch(socialMediaRepositoryProvider).getById(id);
});

final textbookByIdProvider = FutureProvider.family<TextbookDistributionModel?, String>((ref, id) {
  return ref.watch(textbookRepositoryProvider).getById(id);
});

final clusterMeetingByIdProvider = FutureProvider.family<ClusterMeetingModel?, String>((ref, id) {
  return ref.watch(clusterMeetingRepositoryProvider).getById(id);
});

final statementByIdProvider = FutureProvider.family<StatementModel?, String>((ref, id) {
  return ref.watch(statementRepositoryProvider).getById(id);
});

final schoolFunctionalityByIdProvider = FutureProvider.family<SchoolFunctionalityModel?, String>((
  ref,
  id,
) {
  return ref.watch(schoolFunctionalityRepositoryProvider).getById(id);
});

final schoolOpeningByIdProvider = FutureProvider.family<SchoolOpeningModel?, String>((ref, id) {
  return ref.watch(schoolOpeningRepositoryProvider).getById(id);
});

final cleanlinessByIdProvider = FutureProvider.family<CleanlinessModel?, String>((ref, id) {
  return ref.watch(cleanlinessRepositoryProvider).getById(id);
});

final plantationByIdProvider = FutureProvider.family<PlantationModel?, String>((ref, id) {
  return ref.watch(plantationRepositoryProvider).getById(id);
});

final eceMonitoringByIdProvider = FutureProvider.family<EceMonitoringModel?, String>((ref, id) {
  return ref.watch(eceMonitoringRepositoryProvider).getById(id);
});

// --- Meeting actions subcollection (§20) ---
final meetingActionRepositoryProvider = Provider<MeetingActionRepository>((ref) {
  return MeetingActionRepository(ref.watch(firestoreProvider));
});

final meetingActionsProvider = StreamProvider.family<List<MeetingActionModel>, String>((
  ref,
  meetingId,
) {
  return ref.watch(meetingActionRepositoryProvider).watch(meetingId);
});
