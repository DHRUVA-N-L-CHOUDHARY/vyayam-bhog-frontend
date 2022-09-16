// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Itemmodel _$ItemmodelFromJson(Map<String, dynamic> json) => Itemmodel(
      price: json['price'] as String?,
      availability: json['availability'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      imageURL: json['imageURL'] as String?,
      id: json['_id'] as String?,
      name: json['name'] as String?,
      vendor: json['vendor'] as String?,
    );

Map<String, dynamic> _$ItemmodelToJson(Itemmodel instance) => <String, dynamic>{
      '_id': instance.id,
      'category': instance.category,
      'vendor': instance.vendor,
      'name': instance.name,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'availability': instance.availability,
      'price': instance.price,
    };
