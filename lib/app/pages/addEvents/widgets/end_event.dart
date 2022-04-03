import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../add_event_controller.dart';

class EndEvent extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(5),
      color: Color(0xFFEFF6F8),
      width: double.infinity,
      child: Row(
        children: [
          Icon(Icons.access_time_rounded, color: Color(0xFF087EA6)),
          FlatButton(
            onPressed: () {
              DatePicker.showDateTimePicker(
                context,
                locale: LocaleType.es,
                showTitleActions: true,
                minTime: DateTime(2020, 1, 1),
                maxTime: DateTime(2022, 12, 31),
                onConfirm: (date) {
                  controller.end = date;
                  print(date);
                },
                theme: DatePickerTheme(
                  headerColor: Color(0xFF087EA6),
                  backgroundColor: Color(0xFFB6E4F4),
                  itemStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  doneStyle: TextStyle(color: Colors.white70, fontSize: 16),
                  cancelStyle: TextStyle(color: Colors.red[200], fontSize: 16),
                ),
              );
            },
            child: Obx(() => (controller.end == null)
                ? Text('Seleccionar fecha de final de ${controller.type}')
                : Text(
                    (controller.type == 'Cita')
                        ? 'Final de la ${controller.type} ' +
                            DateFormat('dd/MM/yyyy HH:mm', 'es')
                                .format(controller.end)
                        : 'Final del ${controller.type} ' +
                            DateFormat('dd/MM/yyyy HH:mm', 'es')
                                .format(controller.end),
                  )),
          ),
        ],
      ),
    );
  }
}
