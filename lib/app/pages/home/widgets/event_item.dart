import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/data/model/cita_model.dart';
import 'package:heippi_calendar/app/global_widgets/detail_event.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';
import 'package:intl/intl.dart';

class EventItem extends GetView<HomeController> {
  final int index;

  EventItem(this.index);

  @override
  Widget build(BuildContext context) {
    final CitaModel cita = (controller.isFiltrado)
        ? controller.citasFiltradas[index]
        : controller.citas[index];

    final Color color = (cita.type == 'Cita')
        ? Color(0xFF8F2571)
        : (cita.type == 'Aniversario')
            ? Color(0xFF623083)
            : Color(0xFF2196F3);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 0))
        ],
      ),
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: AlertDialog(
                      backgroundColor: Color(0xFF564F54),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      contentPadding: EdgeInsets.all(0.0),
                      content: DetailEvent(event: cita)),
                );
              }).then((value) => {});
        },
        child: Dismissible(
          key: UniqueKey(),
          onDismissed: (_) {
            controller.removeEvent(index);
          },
          background: Container(
            padding: EdgeInsets.only(left: 8.0),
            decoration: BoxDecoration(
              color: Color(0xFF741F4E),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Delete Band',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          direction: DismissDirection.startToEnd,
          child: Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              color: Color(0xFF564F54),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 60,
                  width: 5,
                  decoration: BoxDecoration(
                    color: Colors.orange[100],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    backgroundColor: color,
                    child: Text(
                      cita.type.substring(0, 2),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cita.name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              cita.type,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 5),
                            width: 100,
                            child: Text(
                              cita.description,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xFFEBDFF1),
                                  fontSize: 12,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 60,
                  width: 3,
                  decoration: BoxDecoration(
                    color: Colors.orange[100],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Column(
                    children: [
                      Text(
                        'Duration:',
                        style: TextStyle(
                            color: Color(0xFFEBDFF1),
                            fontSize: 12,
                            fontFamily: 'Roboto'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          cita.end
                                  .difference(cita.start)
                                  .inHours
                                  .toString()
                                  .padLeft(2, '0') +
                              ':' +
                              (cita.end.difference(cita.start).inMinutes % 60)
                                  .toString()
                                  .padLeft(2, '0') +
                              ' h',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
