import '../../../../core/error/result.dart';
import '../entities/app_user.dart';

abstract class AuthRepository {
  Stream<String?> authStateUidChanges();

  Future<Result<AppUser>> signIn({required String email, required String password});

  Future<void> signOut();

  Future<Result<void>> sendPasswordResetEmail(String email);

  Stream<AppUser?> watchUserDoc(String uid);

  Future<Result<void>> updateFcmToken(String uid, String token);

  Future<Result<void>> updatePreferredLocale(String uid, String localeCode);
}
