import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'category_model.g.dart';

@JsonSerializable()
class Categorymodel {
  String? categoryid;
  String? name;
  String? description;
  Categorymodel({
    this.categoryid,
    this.description,
    this.name
  });
  factory Categorymodel.fromJson(Map<String, dynamic> json) =>
      _$CategorymodelFromJson(json);
  Map<String, dynamic> toJson() => _$CategorymodelToJson(this);
}
