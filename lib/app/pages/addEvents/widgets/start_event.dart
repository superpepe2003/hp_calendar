import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../add_event_controller.dart';

class StartEvent extends GetView<AddEventController> {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(5),
      color: Colors.white24,
      width: double.infinity,
      child: Row(
        children: [
          Icon(Icons.access_time_rounded, color: Colors.white70),
          FlatButton(
            onPressed: () {
              DatePicker.showDateTimePicker(
                context,
                locale: LocaleType.es,
                showTitleActions: true,
                minTime: DateTime(2020, 1, 1),
                maxTime: DateTime(2022, 12, 31),
                currentTime: controller.start,
                onConfirm: (date) {
                  controller.start = date;
                },
                theme: DatePickerTheme(
                    headerColor: Color(0xFF087EA6),
                    backgroundColor: Color(0xFF545053),
                    itemStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    doneStyle: TextStyle(color: Colors.white, fontSize: 16),
                    cancelStyle:
                        TextStyle(color: Color(0xFF741F4E), fontSize: 16)),
              );
            },
            child: Obx(() => (controller.start == null)
                ? Text(
                    'Seleccionar fecha de inicio de ${controller.type}',
                    style: TextStyle(color: Colors.white70),
                  )
                : Text(
                    (controller.type == 'Cita')
                        ? 'Inicio de la ${controller.type} ' +
                            DateFormat('dd/MM/yyyy HH:mm', 'es')
                                .format(controller.start)
                        : 'Inicio del ${controller.type} ' +
                            DateFormat('dd/MM/yyyy HH:mm', 'es')
                                .format(controller.start),
                    style: TextStyle(color: Colors.white70),
                  )),
          ),
        ],
      ),
    );
  }
}
