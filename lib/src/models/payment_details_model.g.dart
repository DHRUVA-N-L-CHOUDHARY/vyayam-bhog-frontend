// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paymentdetailsmodel _$PaymentdetailsmodelFromJson(Map<String, dynamic> json) =>
    Paymentdetailsmodel(
      amount: json['amount'] as String?,
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
      orderid: json['orderid'] as String?,
      paymentid: json['paymentid'] as String?,
      paymenttype: json['paymenttype'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$PaymentdetailsmodelToJson(
        Paymentdetailsmodel instance) =>
    <String, dynamic>{
      'orderid': instance.orderid,
      'paymentid': instance.paymentid,
      'amount': instance.amount,
      'datetime': instance.datetime?.toIso8601String(),
      'paymenttype': instance.paymenttype,
      'status': instance.status,
    };
