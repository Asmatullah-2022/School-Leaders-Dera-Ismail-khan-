import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// True once `Firebase.initializeApp()` has succeeded. Read by [app.dart] to
/// decide whether to boot the real app or show the "Firebase not configured"
/// screen, and by these providers to fail predictably instead of throwing a
/// raw platform exception when no project is configured yet.
final StateProvider<bool> firebaseReadyProvider = StateProvider<bool>((ref) => false);

final Provider<FirebaseAuth> firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final Provider<FirebaseFirestore> firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final Provider<FirebaseStorage> firebaseStorageProvider = Provider<FirebaseStorage>((ref) {
  return FirebaseStorage.instance;
});
