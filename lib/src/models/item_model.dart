import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'item_model.g.dart';

@JsonSerializable()
class Itemmodel {
  @JsonKey(name: "_id")
  String? id;
  String? category;
  String? vendor;
  String? name;
  String? description;
  String? imageURL;
  String? availability;
  String? price;
  Itemmodel(
      {
      this.price,
      this.availability,
      this.category,
      this.description,
      this.imageURL,
      this.id,
      this.name,
      this.vendor});
  factory Itemmodel.fromJson(Map<String, dynamic> json) =>
      _$ItemmodelFromJson(json);
  Map<String, dynamic> toJson() => _$ItemmodelToJson(this);
}
