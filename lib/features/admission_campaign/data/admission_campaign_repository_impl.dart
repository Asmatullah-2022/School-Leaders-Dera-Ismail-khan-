import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../../../core/firebase/scope_filter.dart';
import '../../../core/local_db/offline_write_helper.dart';
import '../domain/repositories/admission_campaign_repository.dart';
import 'models/admission_campaign_model.dart';

/// Reference implementation for a flagship module's Firestore repository —
/// see docs/MODULE_PATTERN.md for how to replicate this for scaffold
/// modules once they're ready for a full UI.
class AdmissionCampaignRepositoryImpl implements AdmissionCampaignRepository {
  AdmissionCampaignRepositoryImpl(this._firestore)
    : _writer = OfflineWriteHelper(
        firestore: _firestore,
        collectionName: FirestorePaths.admissionCampaigns,
        dateFields: AdmissionCampaignModel.dateFields,
      );

  final FirebaseFirestore _firestore;
  final OfflineWriteHelper _writer;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.admissionCampaigns);

  @override
  Stream<List<AdmissionCampaignModel>> watchByScope(ScopeFilter filter) {
    final Query<Map<String, dynamic>> query = filter
        .apply(_collection)
        .orderBy('date', descending: true);
    return query.snapshots().map(
      (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
          .map((doc) => AdmissionCampaignModel.fromJson(firestoreDataToJson(doc.data())))
          .toList(),
    );
  }

  @override
  Future<AdmissionCampaignModel?> getById(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> doc = await _collection.doc(id).get();
    if (!doc.exists || doc.data() == null) return null;
    return AdmissionCampaignModel.fromJson(firestoreDataToJson(doc.data()!));
  }

  @override
  Future<void> create(AdmissionCampaignModel campaign) {
    return _writer.save(docId: campaign.id, json: campaign.toJson(), isCreate: true);
  }

  @override
  Future<void> update(AdmissionCampaignModel campaign) {
    return _writer.save(docId: campaign.id, json: campaign.toJson(), isCreate: false);
  }

  @override
  Future<void> delete(String id) => _writer.delete(id);

  @override
  Future<void> queueEvidencePhoto(String campaignId, String localFilePath) {
    return _writer.queuePhotoUpload(
      docId: campaignId,
      filePath: localFilePath,
      storageField: 'evidencePhotoUrls',
    );
  }
}
