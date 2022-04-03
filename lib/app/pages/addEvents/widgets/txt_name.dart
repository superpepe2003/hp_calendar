import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class TxtName extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(5),
      color: Color(0xFFEFF6F8),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Nombre',
          labelStyle: TextStyle(
            color: Color(0xFF087EA6),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF087EA6),
            ),
          ),
          icon: Icon(Icons.notes_rounded),
        ),
        onChanged: (value) {
          controller.name = value;
        },
      ),
    );
  }
}
