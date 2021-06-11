import 'package:cf_delivery/application/rajaongkir/rajaongkir_controller.dart';
import 'package:cf_delivery/application/rajaongkir/rajaongkir_cubit.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/presentation/home/on_calculate_loading_page.dart';
import 'package:cf_delivery/presentation/home/widgets/custom_widget.dart';
import 'package:cf_delivery/presentation/widgets/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../injection.dart';

class WeightPage extends StatefulWidget {
  static final String TAG = '/weight_page';
  const WeightPage({Key? key}) : super(key: key);

  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  TextEditingController weightController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageWidget.globalAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageTitle(
                    text: "Package Weight",
                  ),
                  SizedBox(height: 20),
                  PageImage(image: 'assets/images/cf_package.png'),
                  SizedBox(height: 20),
                  TagText(
                    text: "Please set the package weight",
                  ),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          child: EditableText(
                              controller: weightController,
                              focusNode: focusNode,
                              maxLines: 1,
                              forceLine: false,
                              showCursor: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 80,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              cursorColor: Colors.blue,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.done,
                              backgroundCursorColor: Colors.black),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "kg",
                          style: TextStyle(fontSize: 40),
                        )
                      ]),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              child: Text("CALCULATE COST"),
              onPressed: () {
                if (weightController.text.isEmpty) {
                  Get.showSnackbar(GetBar(
                    message: "Please set the weight",
                    duration: Duration(
                      seconds: 3,
                    ),
                    snackPosition: SnackPosition.TOP,
                  ));
                } else {
                  final _con = Get.put(RajaongkirController());
                  _con.setWeight(int.parse(weightController.text));

                  Get.toNamed(OnCalculateLoadingPage.TAG);
                }
              },
            ),
          )
        ],
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
      required this.onChanged})
      : super(key: key);

  final List<DropdownMenuItem<T>> dropdownItem;
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
