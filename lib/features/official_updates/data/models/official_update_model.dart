import 'package:freezed_annotation/freezed_annotation.dart';

part 'official_update_model.freezed.dart';
part 'official_update_model.g.dart';

/// Spec §43 — سرکاری / اہم اپ ڈیٹس (official updates), authored by admins.
enum UpdateCategory {
  announcement,
  circular,
  notification,
  campaign,
  training,
  meeting,
  importantDate,
  educationInitiative,
}

enum UpdatePriority { normal, important, urgent }

/// Which tier the update is aimed at. Combined with the hierarchy ids below,
/// this decides who sees it.
enum UpdateAudience { all, schoolLeaders, monitoringOfficers, admins }

@freezed
abstract class OfficialUpdateModel with _$OfficialUpdateModel {
  const factory OfficialUpdateModel({
    required String id,
    required String title,
    String? titleUrdu,
    required String description,
    String? descriptionUrdu,
    required UpdateCategory category,
    @Default(UpdatePriority.normal) UpdatePriority priority,
    @Default(UpdateAudience.all) UpdateAudience targetAudience,
    required DateTime publishDate,
    DateTime? eventDate,
    String? districtId,
    String? subDivisionId,
    String? circleId,
    String? clusterId,
    String? schoolId,
    String? imageUrl,
    @Default(<String>[]) List<String> attachmentUrls,
    @Default(false) bool isPublished,
    required String publishedByUid,
    required String publishedByName,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String createdBy,
  }) = _OfficialUpdateModel;

  const OfficialUpdateModel._();

  factory OfficialUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$OfficialUpdateModelFromJson(json);

  static const Set<String> dateFields = <String>{
    'publishDate',
    'eventDate',
    'createdAt',
    'updatedAt',
  };
  static const String orderByField = 'publishDate';
}
