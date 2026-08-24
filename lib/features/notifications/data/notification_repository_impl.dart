import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/firebase/firestore_converters.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../domain/repositories/notification_repository.dart';
import 'models/notification_model.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  NotificationRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.notifications);

  @override
  Stream<List<NotificationModel>> watchForUser(String uid) {
    return _collection
        .where('recipientUid', isEqualTo: uid)
        .orderBy('createdAt', descending: true)
        .limit(100)
        .snapshots()
        .map(
          (QuerySnapshot<Map<String, dynamic>> snap) => snap.docs
              .map((doc) => NotificationModel.fromJson(firestoreDataToJson(doc.data())))
              .toList(),
        );
  }

  @override
  Future<void> create(NotificationModel notification) async {
    final Map<String, dynamic> data = jsonToFirestoreData(
      notification.toJson(),
      dateFields: NotificationModel.dateFields,
    );
    await _collection.doc(notification.id).set(data);
  }

  @override
  Future<void> markRead(String id) async {
    await _collection.doc(id).update(<String, dynamic>{'isRead': true});
  }

  @override
  Future<void> markAllRead(String uid) async {
    final QuerySnapshot<Map<String, dynamic>> unread =
        await _collection.where('recipientUid', isEqualTo: uid).where('isRead', isEqualTo: false).get();
    final WriteBatch batch = _firestore.batch();
    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in unread.docs) {
      batch.update(doc.reference, <String, dynamic>{'isRead': true});
    }
    await batch.commit();
  }
}
