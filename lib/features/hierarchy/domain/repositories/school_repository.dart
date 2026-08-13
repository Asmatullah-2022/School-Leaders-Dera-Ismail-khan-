import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/school_model.dart';

abstract class SchoolRepository {
  Stream<List<SchoolModel>> watchByScope(ScopeFilter filter);

  Future<SchoolModel?> getById(String id);

  Future<void> create(SchoolModel school);

  Future<void> update(SchoolModel school);

  Future<void> setActive(String id, bool isActive);
}
