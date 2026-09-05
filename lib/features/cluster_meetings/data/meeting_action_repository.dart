import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import 'models/cluster_meeting_model.dart';

/// CRUD for the `cluster_meetings/{meetingId}/meeting_actions` subcollection.
///
/// Action items are always created/edited while online (from the meeting
/// detail screen, itself only reachable once the parent meeting has synced),
/// so this talks to Firestore directly rather than going through the
/// offline write queue used by top-level collections.
class MeetingActionRepository {
  MeetingActionRepository(this.firestore);

  final FirebaseFirestore firestore;

  static const Set<String> _dateFields = MeetingActionModel.dateFields;

  CollectionReference<Map<String, dynamic>> _actions(String meetingId) => firestore
      .collection(FirestorePaths.clusterMeetings)
      .doc(meetingId)
      .collection(FirestorePaths.meetingActionsSubcollection);

  Stream<List<MeetingActionModel>> watch(String meetingId) {
    return _actions(meetingId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => MeetingActionModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  Future<void> save(String meetingId, MeetingActionModel action) {
    final Map<String, dynamic> data = jsonToFirestoreData(action.toJson(), dateFields: _dateFields);
    return _actions(meetingId).doc(action.id).set(data, SetOptions(merge: true));
  }

  Future<void> delete(String meetingId, String actionId) =>
      _actions(meetingId).doc(actionId).delete();
}
