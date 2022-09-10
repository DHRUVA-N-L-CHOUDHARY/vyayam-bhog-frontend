import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'delivery_details_model.g.dart';

@JsonSerializable()
class Deliverydetailsmodel {
  String? deliveryid;
  String? orderid;
  String? driver;
  String? status;
  Deliverydetailsmodel({
    this.deliveryid,
    this.driver,
    this.orderid,
    this.status
  });
  factory Deliverydetailsmodel.fromJson(Map<String, dynamic> json) =>
      _$DeliverydetailsmodelFromJson(json);
  Map<String, dynamic> toJson() => _$DeliverydetailsmodelToJson(this);
}
