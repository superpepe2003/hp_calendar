import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class TxtDescription extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.white24,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      child: TextFormField(
        style: TextStyle(color: Colors.white70),
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 5,
        initialValue: controller.description,
        decoration: InputDecoration(
            hintText: 'Descripcion',
            hintStyle: TextStyle(color: Colors.white70),
            labelText: 'Describe el producto',
            labelStyle: TextStyle(color: Colors.white70),
            icon: Icon(
              Icons.ballot_outlined,
              color: Colors.white70,
            )),
        onChanged: (value) => controller.description = value,
      ),
    );
  }
}
