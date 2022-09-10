import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'coupon_model.g.dart';

@JsonSerializable()
class Couponmodel {
  String? couponid;
  String? name;
  String? minamount;
  String? maxamount;
  String? percentage;
  Couponmodel({
    this.couponid,
    this.maxamount,
    this.minamount,
    this.name,
    this.percentage
  });
  factory Couponmodel.fromJson(Map<String, dynamic> json) =>
      _$CouponmodelFromJson(json);
  Map<String, dynamic> toJson() => _$CouponmodelToJson(this);
}
