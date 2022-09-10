// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categorymodel _$CategorymodelFromJson(Map<String, dynamic> json) =>
    Categorymodel(
      categoryid: json['categoryid'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategorymodelToJson(Categorymodel instance) =>
    <String, dynamic>{
      'categoryid': instance.categoryid,
      'name': instance.name,
      'description': instance.description,
    };
