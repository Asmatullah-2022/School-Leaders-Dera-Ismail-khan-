import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/firebase/scope_filter.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/firebase_providers.dart';
import '../../data/models/ptc_priority_model.dart';
import '../../data/ptc_priority_repository_impl.dart';
import '../../domain/repositories/ptc_priority_repository.dart';

final ptcPriorityRepositoryProvider = Provider<PtcPriorityRepository>((ref) {
  return PtcPriorityRepositoryImpl(ref.watch(firestoreProvider));
});

final scopedPtcPrioritiesProvider = StreamProvider<List<PtcPriorityModel>>((ref) {
  final ScopeFilter filter = ref.watch(currentScopeFilterProvider);
  return ref.watch(ptcPriorityRepositoryProvider).watchByScope(filter);
});

final ptcPriorityByIdProvider = FutureProvider.family<PtcPriorityModel?, String>((ref, id) {
  return ref.watch(ptcPriorityRepositoryProvider).getById(id);
});
