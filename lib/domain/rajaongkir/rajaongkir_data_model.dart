import 'package:freezed_annotation/freezed_annotation.dart';

part 'rajaongkir_data_model.freezed.dart';
part 'rajaongkir_data_model.g.dart';

@freezed
class RajaongkirDataModel with _$RajaongkirDataModel {
  const factory RajaongkirDataModel({
    @Default('') @JsonKey(name: 'city_id') String cityId,
    @Default('') @JsonKey(name: 'province_id') String provinceId,
    @Default('') @JsonKey(name: 'province') String province,
    @Default('') @JsonKey(name: 'type') String type,
    @Default('') @JsonKey(name: 'city_name') String cityName,
    @Default('') @JsonKey(name: 'postal_code') String postalCode,
  }) = RCity;

  const factory RajaongkirDataModel.province(
      {@Default('') @JsonKey(name: 'province_id') String provinceId,
      @Default('') @JsonKey(name: 'province') String province}) = RProvince;

  factory RajaongkirDataModel.fromJson(Map<String, dynamic> json) =>
      _$RajaongkirDataModelFromJson(json);
}
