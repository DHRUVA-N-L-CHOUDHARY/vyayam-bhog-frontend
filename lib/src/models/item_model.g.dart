// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Itemmodel _$ItemmodelFromJson(Map<String, dynamic> json) => Itemmodel(
      amount: json['amount'] as String?,
      availability: json['availability'] as String?,
      categoryid: json['categoryid'] as String?,
      description: json['description'] as String?,
      imageurl: json['imageurl'] as String?,
      itemid: json['itemid'] as String?,
      name: json['name'] as String?,
      vendorid: json['vendorid'] as String?,
    );

Map<String, dynamic> _$ItemmodelToJson(Itemmodel instance) => <String, dynamic>{
      'itemid': instance.itemid,
      'categoryid': instance.categoryid,
      'vendorid': instance.vendorid,
      'name': instance.name,
      'description': instance.description,
      'imageurl': instance.imageurl,
      'availability': instance.availability,
      'amount': instance.amount,
    };
