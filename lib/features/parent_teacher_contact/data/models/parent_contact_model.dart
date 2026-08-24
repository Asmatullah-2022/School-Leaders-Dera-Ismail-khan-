import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_contact_model.freezed.dart';
part 'parent_contact_model.g.dart';

/// Spec §16 — parent–teacher contact log.
enum ContactMethod { schoolVisit, homeVisit, phoneCall, sms, whatsapp, meeting, other }

@freezed
abstract class ParentContactModel with _$ParentContactModel {
  const factory ParentContactModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String parentName,
    required String studentName,
    String? contactNumber,
    required DateTime contactDate,
    required ContactMethod contactMethod,
    String? purpose,
    String? discussion,
    @Default(false) bool followUpRequired,
    DateTime? followUpDate,
    String? result,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _ParentContactModel;

  const ParentContactModel._();

  factory ParentContactModel.fromJson(Map<String, dynamic> json) =>
      _$ParentContactModelFromJson(json);

  static const Set<String> dateFields = <String>{
    'contactDate',
    'followUpDate',
    'createdAt',
    'updatedAt',
  };
  static const String orderByField = 'contactDate';
}
