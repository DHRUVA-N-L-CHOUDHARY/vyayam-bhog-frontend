import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'payment_details_model.g.dart';

@JsonSerializable()
class Paymentdetailsmodel {
  String? orderid;
  String? paymentid;
  String? amount;
  DateTime? datetime;
  String? paymenttype;
  String? status;
  Paymentdetailsmodel({
   this.amount,
   this.datetime,
   this.orderid,
   this.paymentid,
   this.paymenttype,
   this.status
  });
  factory Paymentdetailsmodel.fromJson(Map<String, dynamic> json) =>
      _$PaymentdetailsmodelFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentdetailsmodelToJson(this);
}










// import 'dart:ffi';

// import 'package:json_annotation/json_annotation.dart';

// // To auto generate the files using the below command
// // flutter pub run build_runner build

// part 'model.g.dart';

// @JsonSerializable()
// class model {
 
//   model({
   
//   });
//   factory model.fromJson(Map<String, dynamic> json) =>
//       _$modelFromJson(json);
//   Map<String, dynamic> toJson() => _$modelToJson(this);
// }
