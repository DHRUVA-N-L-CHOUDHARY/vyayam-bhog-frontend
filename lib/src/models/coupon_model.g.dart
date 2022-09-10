// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Couponmodel _$CouponmodelFromJson(Map<String, dynamic> json) => Couponmodel(
      couponid: json['couponid'] as String?,
      maxamount: json['maxamount'] as String?,
      minamount: json['minamount'] as String?,
      name: json['name'] as String?,
      percentage: json['percentage'] as String?,
    );

Map<String, dynamic> _$CouponmodelToJson(Couponmodel instance) =>
    <String, dynamic>{
      'couponid': instance.couponid,
      'name': instance.name,
      'minamount': instance.minamount,
      'maxamount': instance.maxamount,
      'percentage': instance.percentage,
    };
