import 'package:flutter/material.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/pages/home/widgets/select_date.dart';
import 'package:heippi_calendar/app/pages/home/widgets/silver_appbar.dart';
import 'package:intl/intl.dart';

import 'widgets/event_item.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        // child: Center(child: Text('Home')),
        child: CustomScrollView(
          slivers: [
            sliverAppBar(),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(10),
                child: SelectDate(),
              ),
            ),
            //
            Obx(
              () => SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (index == 0)
                          ? Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                DateFormat('dd MMMM', 'es')
                                    .format(controller.getEvent(index).start),
                                style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : Container(),
                      (!controller.getEvent(index).start.isSameDate(controller
                              .getEvent((index > 0) ? index - 1 : 0)
                              .start))
                          ? Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                DateFormat('dd MMMM', 'es')
                                    .format(controller.getEvent(index).start),
                                style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : Container(),
                      EventItem(index),
                      Divider(
                        height: 1,
                        color: Colors.black45,
                      )
                    ],
                  );
                },
                    childCount: (controller.isFiltrado)
                        ? controller.citasFiltradas.length
                        : controller.citas.length),
              ),
            ),
            // Lists()
          ],
        ),
      ),
    );
  }
}

extension DateOnlyCompare2 on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
