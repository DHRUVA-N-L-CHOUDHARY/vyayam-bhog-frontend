import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'item_model.g.dart';

@JsonSerializable()
class Itemmodel {
  String? itemid;
  String? categoryid;
  String? vendorid;
  String? name;
  String? description;
  String? imageurl;
  String? availability;
  String? amount;
  Itemmodel(
      {
      this.amount,
      this.availability,
      this.categoryid,
      this.description,
      this.imageurl,
      this.itemid,
      this.name,
      this.vendorid});
  factory Itemmodel.fromJson(Map<String, dynamic> json) =>
      _$ItemmodelFromJson(json);
  Map<String, dynamic> toJson() => _$ItemmodelToJson(this);
}
