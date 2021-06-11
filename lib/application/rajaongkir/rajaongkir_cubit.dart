import 'package:bloc/bloc.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_request.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_response.dart';
import 'package:cf_delivery/domain/services/rajaongkir_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rajaongkir_state.dart';
part 'rajaongkir_cubit.freezed.dart';

@injectable
class RajaongkirCubit extends Cubit<RajaongkirState> {
  RajaongkirCubit(this.iRajaongkir) : super(RajaongkirState.initial());
  final IRajaongkir iRajaongkir;

  void getProvinceList() async {
    emit(RajaongkirState.loading());
    final _data = await iRajaongkir.getProvinceListData();
    try {
      _data.fold(
        (l) => emit(RajaongkirState.error(l)),
        (r) => emit(RajaongkirState.getProvinceList(r)),
      );
    } catch (e) {
      emit(RajaongkirState.error(e.toString()));
    }
  }

  void getCityList(String provinceId) async {
    emit(RajaongkirState.loading());
    final _data = await iRajaongkir.getCityListData(provinceId);
    try {
      _data.fold(
        (l) => emit(RajaongkirState.error(l)),
        (r) => emit(RajaongkirState.getCityList(r)),
      );
    } catch (e) {
      emit(RajaongkirState.error(e.toString()));
    }
  }

  void getDeliveryCost(RajaongkirRequest request) async {
    emit(RajaongkirState.loading());
    final _data = await iRajaongkir.getDeliveryCostData(request);
    try {
      _data.fold(
        (l) => emit(RajaongkirState.error(l)),
        (r) => emit(RajaongkirState.getCostResult(r)),
      );
    } catch (e) {
      emit(RajaongkirState.error(e.toString()));
    }
  }
}
