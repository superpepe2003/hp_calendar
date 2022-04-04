import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class DropTipo extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          padding: EdgeInsets.all(5),
          color: Colors.white24,
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.supervised_user_circle_sharp, color: Colors.white70),
              SizedBox(width: 10),
              Expanded(
                child: DropdownButton(
                  dropdownColor: Color(0xFF545053),
                  style: TextStyle(color: Colors.white70),
                  isExpanded: true,
                  value: controller.type,
                  items: controller.types.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.type = value;
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
