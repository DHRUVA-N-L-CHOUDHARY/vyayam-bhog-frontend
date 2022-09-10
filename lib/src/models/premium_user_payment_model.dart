import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'premium_user_payment_model.g.dart';

@JsonSerializable()
class PremiumUsermodel {
  String? paymentid;
  String? userid;
  DateTime? datetime;
  DateTime? expiration;
  PremiumUsermodel({this.datetime, this.expiration, this.paymentid, this.userid});
  factory PremiumUsermodel.fromJson(Map<String, dynamic> json) =>
      _$PremiumUsermodelFromJson(json);
  Map<String, dynamic> toJson() => _$PremiumUsermodelToJson(this);
}
