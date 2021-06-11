part of 'rajaongkir_cubit.dart';

@freezed
abstract class RajaongkirState with _$RajaongkirState {
  const factory RajaongkirState.initial() = _Initial;
  const factory RajaongkirState.getProvinceList(List<RProvince> provinceList) =
      _GetProvinceList;
  const factory RajaongkirState.getCityList(List<RCity> cityList) =
      _GetCityList;
  const factory RajaongkirState.getCostResult(RajaongkirResponse response) =
      _GetCostResult;
  const factory RajaongkirState.loading() = _Loading;
  const factory RajaongkirState.error(String error) = _Error;
}
