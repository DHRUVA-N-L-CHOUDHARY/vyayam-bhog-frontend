import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'vendor_model.g.dart';

@JsonSerializable()
class Vendormodel {
  String? vendorid;
  String? name;
  String? description;
  String? availability;
  Vendormodel({
    this.availability,
    this.description,
    this.name,
    this.vendorid
  });
  factory Vendormodel.fromJson(Map<String, dynamic> json) =>
      _$VendormodelFromJson(json);
  Map<String, dynamic> toJson() => _$VendormodelToJson(this);
}