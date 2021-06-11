import 'package:cf_delivery/presentation/home/origin_city_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  static final String TAG = '/dashboard_page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "CodeFirst Delivery Checker",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/cf_delivery.png'),
              Text(
                "Let's check how much the shipping price from your place\nEasy, Simple, And Fun",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("CHECK COST"),
                      SizedBox(width: 10),
                      Container(
                        child: Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                  onPressed: () {
                    Get.toNamed(OriginCityPage.TAG);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
