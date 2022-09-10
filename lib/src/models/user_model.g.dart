// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usermodel _$UsermodelFromJson(Map<String, dynamic> json) => Usermodel(
      userid: json['userid'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      phonenumber: json['phonenumber'] as String?,
      isPremiumUser: json['isPremiumUser'] as bool?,
      description: json['description'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
    );

Map<String, dynamic> _$UsermodelToJson(Usermodel instance) => <String, dynamic>{
      'userid': instance.userid,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'gender': instance.gender,
      'phonenumber': instance.phonenumber,
      'dob': instance.dob?.toIso8601String(),
      'isPremiumUser': instance.isPremiumUser,
      'description': instance.description,
    };
