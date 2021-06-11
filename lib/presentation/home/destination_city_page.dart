import 'package:cf_delivery/application/rajaongkir/rajaongkir_controller.dart';
import 'package:cf_delivery/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/presentation/home/weight_page.dart';
import 'package:cf_delivery/presentation/home/widgets/custom_widget.dart';
import 'package:cf_delivery/presentation/widgets/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../injection.dart';

class DestinationCityPgae extends StatefulWidget {
  static final String TAG = '/destination_city_page';
  const DestinationCityPgae({Key? key}) : super(key: key);

  @override
  _DestinationCityPgaeState createState() => _DestinationCityPgaeState();
}

class _DestinationCityPgaeState extends State<DestinationCityPgae> {
  final cityCubit = getIt<RajaongkirCubit>();
  late RCity selectedDestination;
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
            PageTitle(
              text: "Destination City",
            ),
            SizedBox(height: 20),
            PageImage(image: 'assets/images/cf_send.png'),
            SizedBox(height: 20),
            TagText(
              text:
                  "Please select the city of destination to check the shipping cost",
            ),
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
                            return "Select province";
                          }
                        },
                        onChanged: (e) {
                          cityCubit.getCityList(e!.provinceId);
                        },
                        label: "Destination Province",
                        hint: "Select destination province",
                        dropdownItem: value.provinceList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e.province),
                                  value: e,
                                ))
                            .toList());
                  }, loading: (value) {
                    return MyLoadingCustomDropdown(
                      onChanged: (e) {},
                      label: "Destination Province",
                      hint: "Getting destination province data ...",
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
                            return "Select city";
                          }
                        },
                        onChanged: (e) {
                          selectedDestination = e!;
                        },
                        label: "Destination City",
                        hint: "Select destination city",
                        dropdownItem: value.cityList
                            .map((e) => DropdownMenuItem(
                                  child: Text(e.cityName),
                                  value: e,
                                ))
                            .toList());
                  }, loading: (value) {
                    return MyLoadingCustomDropdown(
                      onChanged: (e) {},
                      label: "Destination City",
                      hint: "Getting destination city data ...",
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
                  child: Text("SET PACKAGE WEIGHT"),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final _con = Get.put(RajaongkirController());
                      _con.setDestinationCity(selectedDestination);
                      Get.toNamed(WeightPage.TAG);
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
                ))
          ],
        ),
      ),
    );
  }
}

class MyCustomDropdown<T> extends StatelessWidget {
  const MyCustomDropdown(
      {Key? key,
      required this.label,
      required this.hint,
      required this.dropdownItem,
      required this.validator,
      required this.onChanged})
      : super(key: key);

  final List<DropdownMenuItem<T>> dropdownItem;
  final String label;
  final String hint;
  final Function(T?) onChanged;
  final FormFieldValidator<T>? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 5),
          DropdownButtonFormField<T>(
            validator: validator,
            items: dropdownItem,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4)),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          )
        ],
      ),
    );
  }
}

class MyLoadingCustomDropdown<T> extends StatelessWidget {
  const MyLoadingCustomDropdown(
      {Key? key,
      required this.label,
      required this.hint,
      required this.onChanged})
      : super(key: key);

  final String label;
  final String hint;
  final Function(T?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 5),
          DropdownButtonFormField<T>(
            items: [],
            onChanged: onChanged,
            decoration: InputDecoration(
              suffixIcon: Transform.scale(
                scale: 0.5,
                child: CircularProgressIndicator(),
              ),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4)),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          )
        ],
      ),
    );
  }
}
