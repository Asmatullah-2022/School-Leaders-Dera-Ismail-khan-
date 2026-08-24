import '../../../../core/firebase/scope_filter.dart';
import '../../data/models/school_problem_model.dart';

abstract class SchoolProblemRepository {
  Stream<List<SchoolProblemModel>> watchByScope(ScopeFilter filter);

  Future<SchoolProblemModel?> getById(String id);

  Future<void> create(SchoolProblemModel problem);

  Future<void> update(SchoolProblemModel problem);

  Future<void> delete(String id);

  Future<void> queueEvidencePhoto(
    String problemId,
    String localFilePath, {
    bool isResolution = false,
  });
}
