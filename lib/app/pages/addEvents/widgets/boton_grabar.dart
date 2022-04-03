import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/routes/app_routes.dart';

import '../add_event_controller.dart';
import '../../../global_widgets/detail_event.dart';

class BotonGrabar extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: MaterialButton(
          color: Color(0xFF0D6C8C),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Container(
            width: 120,
            height: 50,
            child: Center(
              child: Text(
                'Grabar Evento',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          onPressed: () {
            var result = controller.addEvent();
            if (result) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        contentPadding: EdgeInsets.all(0.0),
                        content: DetailEvent(event: controller.getEvent));
                  }).then((value) => Get.offAllNamed(AppRoutes.HOME));
            }
          }),
    );
  }
}
