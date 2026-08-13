import 'package:freezed_annotation/freezed_annotation.dart';

part 'oosc_record_model.freezed.dart';
part 'oosc_record_model.g.dart';

enum OoscGender { male, female }

enum OoscReason { labor, migration, disability, financial, distance, earlyMarriage, other }

enum OoscStatus { identified, contacted, counseled, reenrolled, notReenrolled, followUpRequired }

@freezed
abstract class OoscRecordModel with _$OoscRecordModel {
  const factory OoscRecordModel({
    required String id,
    required String schoolId,
    required String clusterId,
    required String circleId,
    required String subDivisionId,
    required String districtId,
    required String childName,
    String? childNameUrdu,
    required OoscGender gender,
    required int age,
    String? village,
    String? parentGuardianName,
    String? contactPhone,
    required OoscReason reason,
    String? reasonDetail,
    String? previousSchool,
    @Default(OoscStatus.identified) OoscStatus status,
    DateTime? followUpDate,
    String? remarks,
    String? campaignId,
    @Default(<String>[]) List<String> evidencePhotoUrls,
    @Default(true) bool isSynced,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _OoscRecordModel;

  const OoscRecordModel._();

  factory OoscRecordModel.fromJson(Map<String, dynamic> json) => _$OoscRecordModelFromJson(json);

  static const Set<String> dateFields = <String>{'followUpDate', 'createdAt', 'updatedAt'};

  bool get isReenrolled => status == OoscStatus.reenrolled;
}
