import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:intl/intl.dart';

class SelectDate extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 3),
        padding: EdgeInsets.all(3),
        color: Colors.white24,
        child: Row(
          children: [
            Obx(() => CupertinoSwitch(
                  activeColor: Color(0xFFCA2692),
                  trackColor: Colors.white24,
                  value: controller.isFiltrado,
                  onChanged: (value) {
                    controller.isFiltrado = value;
                  },
                )),
            Icon(Icons.access_time_rounded, color: Colors.white70),
            Obx(() => FlatButton(
                onPressed: (controller.isFiltrado)
                    ? () {
                        DatePicker.showDatePicker(
                          context,
                          locale: LocaleType.es,
                          showTitleActions: true,
                          minTime: DateTime(2020, 1, 1),
                          maxTime: DateTime(2022, 12, 31),
                          currentTime: DateTime.now(),
                          onConfirm: (date) {
                            controller.selectDate = date;
                          },
                          theme: DatePickerTheme(
                            headerColor: Color(0xFF087EA6),
                            backgroundColor: Color(0xFF545053),
                            itemStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            doneStyle:
                                TextStyle(color: Colors.white, fontSize: 16),
                            cancelStyle: TextStyle(
                                color: Color(0xFF741F4E), fontSize: 16),
                          ),
                        );
                      }
                    : null,
                child: Text(
                  DateFormat('dd MMMM yyyy ', 'es')
                      .format(controller.selectDate),
                  style: TextStyle(color: Colors.white70),
                ))),
          ],
        ),
      ),
    );
  }
}
