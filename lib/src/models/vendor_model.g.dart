// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vendormodel _$VendormodelFromJson(Map<String, dynamic> json) => Vendormodel(
      availability: json['availability'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      vendorid: json['vendorid'] as String?,
    );

Map<String, dynamic> _$VendormodelToJson(Vendormodel instance) =>
    <String, dynamic>{
      'vendorid': instance.vendorid,
      'name': instance.name,
      'description': instance.description,
      'availability': instance.availability,
    };
