// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rajaongkir_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RCity _$_$RCityFromJson(Map<String, dynamic> json) {
  return _$RCity(
    cityId: json['city_id'] as String,
    provinceId: json['province_id'] as String,
    province: json['province'] as String,
    type: json['type'] as String,
    cityName: json['city_name'] as String,
    postalCode: json['postal_code'] as String,
  );
}

Map<String, dynamic> _$_$RCityToJson(_$RCity instance) => <String, dynamic>{
      'city_id': instance.cityId,
      'province_id': instance.provinceId,
      'province': instance.province,
      'type': instance.type,
      'city_name': instance.cityName,
      'postal_code': instance.postalCode,
    };

_$RProvince _$_$RProvinceFromJson(Map<String, dynamic> json) {
  return _$RProvince(
    provinceId: json['province_id'] as String,
    province: json['province'] as String,
  );
}

Map<String, dynamic> _$_$RProvinceToJson(_$RProvince instance) =>
    <String, dynamic>{
      'province_id': instance.provinceId,
      'province': instance.province,
    };
