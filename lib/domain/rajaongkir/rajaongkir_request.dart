import 'package:freezed_annotation/freezed_annotation.dart';

part 'rajaongkir_request.freezed.dart';
part 'rajaongkir_request.g.dart';

@freezed
class RajaongkirRequest with _$RajaongkirRequest {
  factory RajaongkirRequest(
      {@Default("") String origin,
      @Default("") String destination,
      @Default("") String courier,
      @Default(0) int weight}) = _RajaongkirRequest;

  factory RajaongkirRequest.fromJson(Map<String, dynamic> json) =>
      _$RajaongkirRequestFromJson(json);
}
