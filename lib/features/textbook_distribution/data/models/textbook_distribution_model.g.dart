// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textbook_distribution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TextbookDistributionModel _$TextbookDistributionModelFromJson(Map<String, dynamic> json) =>
    _TextbookDistributionModel(
      id: json['id'] as String,
      schoolId: json['schoolId'] as String,
      clusterId: json['clusterId'] as String,
      circleId: json['circleId'] as String,
      subDivisionId: json['subDivisionId'] as String,
      districtId: json['districtId'] as String,
      academicYear: json['academicYear'] as String,
      distributionDate: DateTime.parse(json['distributionDate'] as String),
      classGrade: json['classGrade'] as String?,
      subject: json['subject'] as String?,
      booksRequired: (json['booksRequired'] as num?)?.toInt() ?? 0,
      booksAvailable: (json['booksAvailable'] as num?)?.toInt() ?? 0,
      booksDistributed: (json['booksDistributed'] as num?)?.toInt() ?? 0,
      studentsReceiving: (json['studentsReceiving'] as num?)?.toInt() ?? 0,
      otherMaterials: json['otherMaterials'] as String?,
      supportRequired: json['supportRequired'] as String?,
      remarks: json['remarks'] as String?,
      evidencePhotoUrls:
          (json['evidencePhotoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      isSynced: json['isSynced'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$TextbookDistributionModelToJson(_TextbookDistributionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'clusterId': instance.clusterId,
      'circleId': instance.circleId,
      'subDivisionId': instance.subDivisionId,
      'districtId': instance.districtId,
      'academicYear': instance.academicYear,
      'distributionDate': instance.distributionDate.toIso8601String(),
      'classGrade': instance.classGrade,
      'subject': instance.subject,
      'booksRequired': instance.booksRequired,
      'booksAvailable': instance.booksAvailable,
      'booksDistributed': instance.booksDistributed,
      'studentsReceiving': instance.studentsReceiving,
      'otherMaterials': instance.otherMaterials,
      'supportRequired': instance.supportRequired,
      'remarks': instance.remarks,
      'evidencePhotoUrls': instance.evidencePhotoUrls,
      'isSynced': instance.isSynced,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };
