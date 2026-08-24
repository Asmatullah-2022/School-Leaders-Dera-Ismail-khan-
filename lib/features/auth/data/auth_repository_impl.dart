import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/firebase/firestore_paths.dart';
import '../domain/entities/app_user.dart';
import '../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._auth, this._firestore);

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  @override
  Stream<String?> authStateUidChanges() {
    return _auth.authStateChanges().map((User? user) => user?.uid);
  }

  @override
  Future<Result<AppUser>> signIn({required String email, required String password}) async {
    try {
      final UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      final String uid = credential.user!.uid;
      final DocumentSnapshot<Map<String, dynamic>> doc = await _firestore
          .collection(FirestorePaths.users)
          .doc(uid)
          .get();
      if (!doc.exists) {
        return const Result.err(AuthFailure(details: 'user-doc-missing'));
      }
      return Result.ok(AppUser.fromJson(<String, dynamic>{...doc.data()!, 'uid': uid}));
    } on FirebaseAuthException catch (e) {
      return Result.err(AuthFailure(details: e.code));
    } catch (e) {
      return Result.err(UnknownFailure(details: e.toString()));
    }
  }

  @override
  Future<void> signOut() => _auth.signOut();

  @override
  Future<Result<void>> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
      return const Result.ok(null);
    } on FirebaseAuthException catch (e) {
      return Result.err(AuthFailure(details: e.code));
    }
  }

  @override
  Stream<AppUser?> watchUserDoc(String uid) {
    return _firestore.collection(FirestorePaths.users).doc(uid).snapshots().map((
      DocumentSnapshot<Map<String, dynamic>> doc,
    ) {
      if (!doc.exists || doc.data() == null) return null;
      return AppUser.fromJson(<String, dynamic>{...doc.data()!, 'uid': uid});
    });
  }

  @override
  Future<Result<void>> updateFcmToken(String uid, String token) async {
    try {
      await _firestore.collection(FirestorePaths.users).doc(uid).update(<String, dynamic>{
        'fcmTokens': FieldValue.arrayUnion(<String>[token]),
      });
      return const Result.ok(null);
    } catch (e) {
      return Result.err(UnknownFailure(details: e.toString()));
    }
  }

  @override
  Future<Result<void>> updatePreferredLocale(String uid, String localeCode) async {
    try {
      await _firestore.collection(FirestorePaths.users).doc(uid).update(<String, dynamic>{
        'preferredLocale': localeCode,
      });
      return const Result.ok(null);
    } catch (e) {
      return Result.err(UnknownFailure(details: e.toString()));
    }
  }
}
