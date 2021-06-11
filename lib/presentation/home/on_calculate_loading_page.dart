import 'package:cf_delivery/application/rajaongkir/rajaongkir_controller.dart';
import 'package:cf_delivery/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_request.dart';
import 'package:cf_delivery/presentation/home/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../injection.dart';

class OnCalculateLoadingPage extends StatefulWidget {
  static final String TAG = '/on_calculate_loading_page';
  const OnCalculateLoadingPage({Key? key}) : super(key: key);

  @override
  _OnCalculateLoadingPageState createState() => _OnCalculateLoadingPageState();
}

class _OnCalculateLoadingPageState extends State<OnCalculateLoadingPage> {
  final controller = Get.put(RajaongkirController());
  late RajaongkirRequest request;
  @override
  void initState() {
    request = RajaongkirRequest(
        courier: "tiki,jne,pos",
        destination: controller.getDestination.cityId,
        origin: controller.getOrigin.cityId,
        weight: controller.getWeight * 1000);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RajaongkirCubit>()..getDeliveryCost(request),
      child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            getCostResult: (e) {
              Get.offNamed(ResultPage.TAG, arguments: e.response);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/cf_sortir.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 30),
                  CircularProgressIndicator.adaptive(),
                  SizedBox(height: 20),
                  Text(
                    "Calculating Delivery Cost . . .",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
