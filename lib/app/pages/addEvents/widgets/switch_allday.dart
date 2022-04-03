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
      color: Color(0xFFEFF6F8),
      width: double.infinity,
      child: Row(
        children: [
          Icon(
            Icons.access_alarm_sharp,
            color: Color(0xFF087EA6),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(' El evento dura todo el día')),
          Obx(() => CupertinoSwitch(
                activeColor: Theme.of(context).primaryColor,
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
