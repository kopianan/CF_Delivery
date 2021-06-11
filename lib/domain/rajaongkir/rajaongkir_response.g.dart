// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rajaongkir_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RajaongkirResponse _$_$_RajaongkirResponseFromJson(
    Map<String, dynamic> json) {
  return _$_RajaongkirResponse(
    originDetails: json['origin_details'] == null
        ? null
        : RCity.fromJson(json['origin_details'] as Map<String, dynamic>),
    destinationDetails: json['destination_details'] == null
        ? null
        : RCity.fromJson(json['destination_details'] as Map<String, dynamic>),
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => ResultDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_RajaongkirResponseToJson(
        _$_RajaongkirResponse instance) =>
    <String, dynamic>{
      'origin_details': instance.originDetails,
      'destination_details': instance.destinationDetails,
      'results': instance.results,
    };
