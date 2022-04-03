import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class DropTipo extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          padding: EdgeInsets.all(5),
          color: Color(0xFFEFF6F8),
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.supervised_user_circle_sharp,
                  color: Color(0xFF087EA6)),
              SizedBox(width: 10),
              Expanded(
                child: DropdownButton(
                  isExpanded: true,
                  value: controller.tipo,
                  items: controller.types.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    controller.tipo = value;
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
