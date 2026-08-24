import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../data/models/school_problem_model.dart';
import '../../data/school_problem_repository_impl.dart';
import '../../domain/repositories/school_problem_repository.dart';

final schoolProblemRepositoryProvider = Provider<SchoolProblemRepository>((ref) {
  return SchoolProblemRepositoryImpl(ref.watch(firestoreProvider));
});

final scopedSchoolProblemsProvider = StreamProvider<List<SchoolProblemModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(schoolProblemRepositoryProvider).watchByScope(filter);
});

final schoolProblemByIdProvider = FutureProvider.family<SchoolProblemModel?, String>((ref, id) {
  return ref.watch(schoolProblemRepositoryProvider).getById(id);
});
