import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:get/get.dart';

class RajaongkirController extends GetxController {
  final originCity = RCity().obs;
  final destinationCity = RCity().obs;
  final weight = 0.obs;
  void setOriginCity(RCity data) {
    this.originCity.value = data;
  }

  void setDestinationCity(RCity data) {
    this.destinationCity.value = data;
  }

  void setWeight(int weight) {
    this.weight.value = weight;
  }

  RCity get getOrigin => this.originCity.value;

  RCity get getDestination => this.destinationCity.value;

  int get getWeight => this.weight.value;
}
