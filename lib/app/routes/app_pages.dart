import 'package:get/get_navigation/get_navigation.dart';
import 'package:heippi_calendar/app/pages/addEvents/addEventPage.dart';
import 'package:heippi_calendar/app/pages/addEvents/add_event_binding.dart';
import 'package:heippi_calendar/app/pages/home/home.dart';
import 'package:heippi_calendar/app/pages/home/home_binding.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> Pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.ADDEVENT,
      page: () => AddEventPage(),
      binding: AddEventBinding(),
    ),
  ];
}


// final Map<String, Widget Function(BuildContext)> AppPages = {
//   AppRoutes.HOME: (BuildContext context) => HomePage(),
//   AppRoutes.ADDEVENT: (BuildContext context) => AddEventPage(),
//   AppRoutes.DETAILEVENT: (BuildContext context) => DetailEventPage(),
// };
