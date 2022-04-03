import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/routes/app_routes.dart';

import '../add_event_controller.dart';

class BotonCancelar extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: MaterialButton(
        color: Colors.red[300],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Container(
          width: 120,
          height: 50,
          child: Center(
            child: Text(
              'Cancelar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        onPressed: () {
          Get.offAllNamed(AppRoutes.HOME);
        },
      ),
    );
  }
}
