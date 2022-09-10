// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deliverydetailsmodel _$DeliverydetailsmodelFromJson(
        Map<String, dynamic> json) =>
    Deliverydetailsmodel(
      deliveryid: json['deliveryid'] as String?,
      driver: json['driver'] as String?,
      orderid: json['orderid'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DeliverydetailsmodelToJson(
        Deliverydetailsmodel instance) =>
    <String, dynamic>{
      'deliveryid': instance.deliveryid,
      'orderid': instance.orderid,
      'driver': instance.driver,
      'status': instance.status,
    };
