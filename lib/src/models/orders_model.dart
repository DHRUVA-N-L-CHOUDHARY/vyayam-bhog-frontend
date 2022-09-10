import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'orders_model.g.dart';

@JsonSerializable()
class Ordersmodel {
  String? orderid;
  String? userid;
  String? orderstatus;
  String? address;
  String? name;
  String? mobilenumber;
  String? totalamount;
  DateTime? datetime;
  Ordersmodel({
    this.orderid,
    this.userid,
    this.orderstatus,
    this.address,
    this.datetime,
    this.mobilenumber,
    this.name,
    this.totalamount,
  });
  factory Ordersmodel.fromJson(Map<String, dynamic> json) =>
      _$OrdersmodelFromJson(json);
  Map<String, dynamic> toJson() => _$OrdersmodelToJson(this);
}
