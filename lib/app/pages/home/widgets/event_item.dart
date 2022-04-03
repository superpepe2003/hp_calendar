import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:intl/intl.dart';

class EventItem extends GetView<HomeController> {
  final int index;

  EventItem(this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(vertical: 4),
      title: Text(controller.citas[index].name),
      subtitle: Text(controller.citas[index].description),
      leading: CircleAvatar(
        backgroundColor: Color(0xFFCA2692),
        child: Text(
          controller.citas[index].name.substring(0, 2),
          style: TextStyle(color: Colors.white),
        ),
      ),
      trailing: Column(
        children: [
          Text(
            'inicio',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            DateFormat.Hm().format(controller.citas[index].start),
          ),
          Text(
            'fin',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            DateFormat.Hm().format(controller.citas[index].end),
          ),
        ],
      ),
    );
  }
}
