import 'package:flutter/material.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
      ),
      body: Container(
        // child: Center(child: Text('Home')),
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return Center(
              child: Text(controller.data.toString()),
            );
            // return ListView.builder(
            //   itemCount: controller.citas.length,
            //   itemBuilder: (_, index) {
            //     return ListTile(
            //       title: Text(controller.citas[index].name),
            //       subtitle: Text(controller.citas[index].description),
            //     );
            //   },
            // );
          },
        ),
      ),
    );
  }
}
