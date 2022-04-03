import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/routes/app_routes.dart';

import '../home_controllers.dart';
import 'circle_decoration.dart';

class sliverAppBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        IconButton(
          icon: Container(
            decoration: BoxDecoration(
              color: Color(0xFF087EA6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
          onPressed: () {
            Get.toNamed(AppRoutes.ADDEVENT);
          },
        ),
      ],
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(160),
        ),
      ),
      pinned: true,
      expandedHeight: 400,
      backgroundColor: Color(0xFFCA2692),
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Agenda'),
        // background: Image(
        //   image: AssetImage('assets/images/banner.jpg'),
        //   // fit: BoxFit.cover,
        // ),
        background: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(160),
          ),
          child: Stack(
            children: [
              CircleDecoration(
                color: Colors.red,
                width: 100,
                height: 100,
                top: 50,
                left: -20,
              ),
              CircleDecoration(
                color: Colors.teal,
                width: 350,
                height: 350,
                top: 350,
                left: -50,
              ),
              CircleDecoration(
                color: Colors.black38,
                width: 140,
                height: 140,
                top: -50,
                left: 120,
              ),
              CircleDecoration(
                color: Colors.blue,
                width: 230,
                height: 230,
                top: -100,
                left: 320,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(400),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.indigo.withAlpha(190), //.withAlpha(180),
                      Colors.red.withAlpha(100) //.withAlpha(10)
                    ],
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    'assets/banner.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
