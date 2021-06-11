import 'package:cf_delivery/presentation/dashboard/dashboard_page.dart';
import 'package:cf_delivery/presentation/home/destination_city_page.dart';
import 'package:cf_delivery/presentation/home/on_calculate_loading_page.dart';
import 'package:cf_delivery/presentation/home/origin_city_page.dart';
import 'package:cf_delivery/presentation/home/result_page.dart';
import 'package:cf_delivery/presentation/home/weight_page.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: DestinationCityPgae.TAG, page: () => DestinationCityPgae()),
    GetPage(name: OriginCityPage.TAG, page: () => OriginCityPage()),
    GetPage(name: ResultPage.TAG, page: () => ResultPage()),
    GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
    GetPage(name: WeightPage.TAG, page: () => WeightPage()),
    GetPage(
        name: OnCalculateLoadingPage.TAG, page: () => OnCalculateLoadingPage()),
  ];
}
