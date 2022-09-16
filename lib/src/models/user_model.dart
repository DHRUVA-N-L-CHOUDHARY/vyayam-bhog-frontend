import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'user_model.g.dart';

@JsonSerializable()
class Usermodel {
  String? userid;
  String? name;
  String? location;
  String? email;
  String? gender;
  String? phoneNumber;
  DateTime? dob;
  bool? isPremium;
  String? description;
  Usermodel(
      {this.userid,
      this.name,
      this.location,
      this.email,
      this.gender,
      this.phoneNumber,
      this.isPremium,
      this.description,
      this.dob});
  factory Usermodel.fromJson(Map<String, dynamic> json) =>
      _$UsermodelFromJson(json);
  Map<String, dynamic> toJson() => _$UsermodelToJson(this);
}
