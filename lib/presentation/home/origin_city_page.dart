import 'package:cf_delivery/application/rajaongkir/rajaongkir_controller.dart';
import 'package:cf_delivery/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/presentation/home/widgets/custom_widget.dart';
import 'package:cf_delivery/presentation/widgets/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../injection.dart';
import 'destination_city_page.dart';

class OriginCityPage extends StatefulWidget {
  static final String TAG = '/origin_city_page';
  const OriginCityPage({Key? key}) : super(key: key);

  @override
  _OriginCityPageState createState() => _OriginCityPageState();
}

class _OriginCityPageState extends State<OriginCityPage> {
  final controller = Get.put(RajaongkirController());
  final cityCubit = getIt<RajaongkirCubit>();
  late RCity selectedCity;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageWidget.globalAppBar(),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitle(text: "Origin City"),
            SizedBox(height: 20),
            PageImage(image: 'assets/images/cf_doorbell.png'),
            SizedBox(height: 20),
            TagText(
                text:
                    "Please select the city of origin to check the shipping cost"),
            BlocProvider(
              create: (context) => getIt<RajaongkirCubit>()..getProvinceList(),
              child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(orElse: () {
                    return SizedBox();
                  }, getProvinceList: (value) {
                    return MyCustomDropdown<RProvince>(
                        validator: (e) {
                          if (e == null) {
                            return 'please select';
                          }
                        },
                        onChanged: (e) {
                          cityCubit.getCityList(e!.provinceId);
                        },
                        label: "Province",
                        hint: "Select province",
                        dropdownItem: value.provinceList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e.province),
                                  value: e,
                                ))
                            .toList());
                  }, loading: (value) {
                    return MyLoadingCustomDropdown(
                      onChanged: (e) {},
                      label: "Province",
                      hint: "Getting province data ...",
                    );
                  });
                },
              ),
            ),
            BlocProvider(
              create: (context) => cityCubit,
              child: BlocConsumer<RajaongkirCubit, RajaongkirState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(orElse: () {
                    return SizedBox();
                  }, getCityList: (value) {
                    return MyCustomDropdown<RCity>(
                        validator: (e) {
                          if (e == null) {
                            return 'please select';
                          }
                        },
                        onChanged: (e) {
                          selectedCity = e!;
                        },
                        label: "City",
                        hint: "Select city",
                        dropdownItem: value.cityList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e.cityName),
                                  value: e,
                                ))
                            .toList());
                  }, loading: (value) {
                    return MyLoadingCustomDropdown(
                      onChanged: (e) {},
                      label: "City",
                      hint: "Getting city data ...",
                    );
                  });
                },
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                child: Text("SET DESTINATION"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final _con = Get.put(RajaongkirController());
                    _con.setOriginCity(selectedCity);
                    Get.toNamed(DestinationCityPgae.TAG);
                  } else {
                    Get.showSnackbar(GetBar(
                      message: "Please fill address",
                      duration: Duration(
                        seconds: 3,
                      ),
                      snackPosition: SnackPosition.TOP,
                    ));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
