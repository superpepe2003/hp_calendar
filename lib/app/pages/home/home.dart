import 'package:flutter/material.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/pages/home/widgets/silver_appbar.dart';

import 'widgets/event_item.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // child: Center(child: Text('Home')),
        child: CustomScrollView(
          slivers: [
            sliverAppBar(),
            Obx(
              () => SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Column(
                    children: [
                      EventItem(index),
                      Divider(
                        height: 1,
                        color: Colors.black45,
                      )
                    ],
                  );
                }, childCount: controller.citas.length),
              ),
            ),
            // Lists()
          ],
        ),
      ),
    );
  }
}
