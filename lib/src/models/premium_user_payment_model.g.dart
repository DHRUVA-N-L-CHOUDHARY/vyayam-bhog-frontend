// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_user_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PremiumUsermodel _$PremiumUsermodelFromJson(Map<String, dynamic> json) =>
    PremiumUsermodel(
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
      expiration: json['expiration'] == null
          ? null
          : DateTime.parse(json['expiration'] as String),
      paymentid: json['paymentid'] as String?,
      userid: json['userid'] as String?,
    );

Map<String, dynamic> _$PremiumUsermodelToJson(PremiumUsermodel instance) =>
    <String, dynamic>{
      'paymentid': instance.paymentid,
      'userid': instance.userid,
      'datetime': instance.datetime?.toIso8601String(),
      'expiration': instance.expiration?.toIso8601String(),
    };
