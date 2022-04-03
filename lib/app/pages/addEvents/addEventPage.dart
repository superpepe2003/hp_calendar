import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heippi_calendar/app/pages/addEvents/add_event_controller.dart';
import 'package:heippi_calendar/app/pages/addEvents/widgets/boton_cancelar.dart';

import 'widgets/boton_grabar.dart';
import 'widgets/drop_tipo.dart';
import 'widgets/end_event.dart';
import 'widgets/start_event.dart';
import 'widgets/switch_allday.dart';
import 'widgets/txt_description.dart';
import 'widgets/txt_name.dart';

class AddEventPage extends GetView<AddEventController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Color(0xFF087EA6),
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Text('Adicionar Evento'),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Ingrese un nuevo evento',
                      style: TextStyle(
                          color: Color(0xff0D6C8C),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Verdana')),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Divider(
                    color: Color(0xFF087EA6),
                    thickness: 1,
                  ),
                ),
                DropTipo(),
                TxtName(),
                StartEvent(),
                EndEvent(),
                SwitchAllDay(),
                TxtDescription(),
                Row(
                  children: [
                    BotonGrabar(),
                    BotonCancelar(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
