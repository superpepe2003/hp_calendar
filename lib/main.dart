import 'package:flutter/material.dart';
import 'package:heippi_calendar/app/routes/app_pages.dart';
import 'package:heippi_calendar/app/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final homeController = Get.put(HomeController());
    return MaterialApp(
      title: 'Calendar Heippi',
      debugShowCheckedModeBanner: false,
      routes: AppPages,
      initialRoute: AppRoutes.HOME,
    );
  }
}
