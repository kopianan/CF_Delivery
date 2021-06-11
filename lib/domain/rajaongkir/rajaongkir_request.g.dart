// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rajaongkir_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RajaongkirRequest _$_$_RajaongkirRequestFromJson(Map<String, dynamic> json) {
  return _$_RajaongkirRequest(
    origin: json['origin'] as String? ?? '',
    destination: json['destination'] as String? ?? '',
    courier: json['courier'] as String? ?? '',
    weight: json['weight'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_RajaongkirRequestToJson(
        _$_RajaongkirRequest instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'courier': instance.courier,
      'weight': instance.weight,
    };
