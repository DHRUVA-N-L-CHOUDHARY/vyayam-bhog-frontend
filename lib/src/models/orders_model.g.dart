// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ordersmodel _$OrdersmodelFromJson(Map<String, dynamic> json) => Ordersmodel(
      orderid: json['orderid'] as String?,
      userid: json['userid'] as String?,
      orderstatus: json['orderstatus'] as String?,
      address: json['address'] as String?,
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
      mobilenumber: json['mobilenumber'] as String?,
      name: json['name'] as String?,
      totalamount: json['totalamount'] as String?,
    );

Map<String, dynamic> _$OrdersmodelToJson(Ordersmodel instance) =>
    <String, dynamic>{
      'orderid': instance.orderid,
      'userid': instance.userid,
      'orderstatus': instance.orderstatus,
      'address': instance.address,
      'name': instance.name,
      'mobilenumber': instance.mobilenumber,
      'totalamount': instance.totalamount,
      'datetime': instance.datetime?.toIso8601String(),
    };
