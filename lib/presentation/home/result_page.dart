import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_response.dart';
import 'package:cf_delivery/presentation/dashboard/dashboard_page.dart';
import 'package:cf_delivery/presentation/home/origin_city_page.dart';
import 'package:cf_delivery/presentation/home/widgets/custom_widget.dart';
import 'package:cf_delivery/presentation/widgets/page_widget.dart';
import 'package:cf_delivery/utils/basic_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ResultPage extends StatefulWidget {
  static final String TAG = '/result_page';
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late RajaongkirResponse ongkir;
  @override
  void initState() {
    ongkir = Get.arguments as RajaongkirResponse;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageWidget.globalAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageTitle(text: "Result"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TimelineWidget(
                              city: ongkir.destinationDetails,
                              isFirst: true,
                              isLast: false,
                              indicator: Colors.yellow,
                            ),
                            TimelineWidget(
                              city: ongkir.originDetails,
                              isFirst: false,
                              isLast: true,
                              indicator: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ongkir.results!.length,
                        itemBuilder: (context, index) {
                          return (ongkir.results![index].costs.length == 0)
                              ? SizedBox()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ongkir.results![index].name,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(
                                      height: 20,
                                    ),
                                    Column(
                                        children: ongkir.results![index].costs
                                            .map((e) => Column(
                                                  children: [
                                                    ListTile(
                                                      title:
                                                          Text(e.description),
                                                      subtitle: Text(e.service +
                                                          " " +
                                                          "(${e.cost.first.etd})"),
                                                      trailing: Text(
                                                        BasicFunctions
                                                            .formatCurrency(e
                                                                .cost
                                                                .first
                                                                .value),
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ],
                                                ))
                                            .toList()),
                                  ],
                                );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offNamedUntil(OriginCityPage.TAG,
                        ModalRoute.withName(DashboardPage.TAG));
                  },
                  child: Text("CALCULATE ANOTER")))
        ],
      ),
    );
  }
}

class TimelineWidget extends StatelessWidget {
  const TimelineWidget(
      {Key? key,
      required this.city,
      required this.isFirst,
      required this.isLast,
      required this.indicator})
      : super(key: key);

  final RCity? city;
  final bool isFirst;
  final bool isLast;
  final Color? indicator;
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        color: indicator!,
      ),
      beforeLineStyle: LineStyle(color: Colors.blue),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 80,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city!.province,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                city!.type + " " + city!.cityName,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
