import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/providers/firebase_providers.dart';
import '../../data/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';

final Provider<AuthRepository> authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.watch(firebaseAuthProvider), ref.watch(firestoreProvider));
});

final StreamProvider<String?> authStateUidProvider = StreamProvider<String?>((ref) {
  return ref.watch(authRepositoryProvider).authStateUidChanges();
});
