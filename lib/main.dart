import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:heippi_calendar/app/routes/app_pages.dart';
import 'package:heippi_calendar/app/routes/app_routes.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('es_Es', null).then((_) {
    runApp(MyApp());
    Get.put<HomeController>(HomeController());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final homeController = Get.put(HomeController());
    return GetMaterialApp(
      title: 'Calendar Heippi',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.Pages,
      initialRoute: AppRoutes.HOME,
    );
  }
}
