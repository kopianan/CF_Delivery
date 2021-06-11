import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/domain/rajaongkir/result_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rajaongkir_response.freezed.dart';
part 'rajaongkir_response.g.dart';

@freezed
class RajaongkirResponse with _$RajaongkirResponse {
  factory RajaongkirResponse({
    @JsonKey(name: 'origin_details') RCity? originDetails,
    @JsonKey(name: 'destination_details') RCity? destinationDetails,
    List<ResultDataModel>? results,
  }) = _RajaongkirResponse;

  factory RajaongkirResponse.fromJson(Map<String, dynamic> json) =>
      _$RajaongkirResponseFromJson(json);
}
