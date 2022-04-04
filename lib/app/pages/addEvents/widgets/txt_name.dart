import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class TxtName extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(5),
      color: Colors.white24,
      child: Obx(
        () => TextFormField(
          style: TextStyle(color: Colors.white70),
          decoration: InputDecoration(
            labelText: 'Nombre',
            errorText: controller.errorName,
            labelStyle: TextStyle(color: Colors.white70),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF087EA6))),
            icon: Icon(Icons.notes_rounded, color: Colors.white70),
          ),
          onChanged: (value) {
            controller.name = value;
          },
        ),
      ),
    );
  }
}
