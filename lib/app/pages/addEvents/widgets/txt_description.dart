import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_event_controller.dart';

class TxtDescription extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Color(0xFFEFF6F8),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 5,
        initialValue: controller.description,
        decoration: InputDecoration(
            hintText: 'Descripcion',
            labelText: 'Describe el producto',
            icon: Icon(
              Icons.ballot_outlined,
              color: Color(0xFF087EA6),
            )),
        onChanged: (value) => controller.description = value,
      ),
    );
  }
}
