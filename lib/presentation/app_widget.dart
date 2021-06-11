import 'package:cf_delivery/presentation/dashboard/dashboard_page.dart';
import 'package:cf_delivery/presentation/home/origin_city_page.dart';

import 'package:cf_delivery/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: Routes.pages,
      theme: ThemeData(
          textTheme: GoogleFonts.exoTextTheme(textTheme).copyWith(
            headline1: TextStyle(color: Colors.black),
            headline2: TextStyle(color: Colors.black),
            headline3: TextStyle(color: Colors.black),
            headline4: TextStyle(color: Colors.black),
            headline5: TextStyle(color: Colors.black),
            headline6: TextStyle(color: Colors.black),
            subtitle1: TextStyle(color: Colors.black),
            subtitle2: TextStyle(color: Colors.black),
          ),
          appBarTheme: AppBarTheme(
              color: Colors.white,
              titleTextStyle: TextStyle(color: Colors.black),
              foregroundColor: Colors.black,
              centerTitle: true,
              elevation: 2,
              iconTheme: IconThemeData(color: Colors.black))),
      home: DashboardPage(),
    );
  }
}
