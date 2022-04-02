import 'package:flutter/material.dart';
import 'package:heippi_calendar/app/pages/addEvents/addEventPage.dart';
import 'package:heippi_calendar/app/pages/detailEvent/detailEvent.dart';
import 'package:heippi_calendar/app/pages/home/home.dart';

import 'app_routes.dart';

final Map<String, Widget Function(BuildContext)> AppPages = {
  AppRoutes.HOME: (BuildContext context) => HomePage(),
  AppRoutes.ADDEVENT: (BuildContext context) => AddEventPage(),
  AppRoutes.DETAILEVENT: (BuildContext context) => DetailEventPage(),
};
