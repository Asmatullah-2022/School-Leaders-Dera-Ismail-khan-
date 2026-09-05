// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hierarchy_node_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HierarchyNodeModel _$HierarchyNodeModelFromJson(Map<String, dynamic> json) => _HierarchyNodeModel(
  id: json['id'] as String,
  name: json['name'] as String,
  nameUrdu: json['nameUrdu'] as String?,
  code: json['code'] as String?,
  parentId: json['parentId'] as String?,
  districtId: json['districtId'] as String?,
  subDivisionId: json['subDivisionId'] as String?,
  circleId: json['circleId'] as String?,
  isActive: json['isActive'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String,
);

Map<String, dynamic> _$HierarchyNodeModelToJson(_HierarchyNodeModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nameUrdu': instance.nameUrdu,
  'code': instance.code,
  'parentId': instance.parentId,
  'districtId': instance.districtId,
  'subDivisionId': instance.subDivisionId,
  'circleId': instance.circleId,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'createdBy': instance.createdBy,
};
