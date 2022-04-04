import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class SwitchAllDay extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(5),
      color: Colors.white24,
      width: double.infinity,
      child: Row(
        children: [
          Icon(
            Icons.access_alarm_sharp,
            color: Colors.white70,
          ),
          SizedBox(width: 10),
          Expanded(
              child: Text(' El evento dura todo el día',
                  style: TextStyle(color: Colors.white70))),
          Obx(() => CupertinoSwitch(
                activeColor: Colors.white70,
                value: controller.allDay,
                onChanged: (value) {
                  controller.allDay = value;
                },
              )),
        ],
      ),
    );
  }
}
