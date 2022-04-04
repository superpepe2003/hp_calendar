import 'package:heippi_calendar/app/data/model/cita_model.dart';

var cita1 = CitaModel(
  type: 'Evento',
  name: 'Cumpleaños de Agustín',
  start: DateTime.parse('2020-04-06 00:00:00'),
  end: DateTime.parse('2020-04-06 23:59:59'),
  allDay: true,
  description: 'Es el cumpleaños de Agustín',
);

var cita2 = CitaModel(
  type: 'Cita',
  name: 'Llamar al trabajo',
  start: DateTime.parse('2022-04-05 10:00:00'),
  end: DateTime.parse('2022-04-05 10:10:00'),
  allDay: false,
  description:
      'Laboris quis cillum Lorem do ut non irure aliqua id exercitation minim do reprehenderit.Ut Lorem irure sunt ipsum qui cillum proident irure dolor do labore. Esse nisi minim excepteur veniam adipisicing est commodo. Quis non excepteur ex esse nulla esse dolor voluptate anim ea do eiusmod. Velit do voluptate occaecat enim. Aliqua quis consequat quis ad cupidatat dolor occaecat dolor nisi ea dolore nulla minim magna. Tempor enim est culpa voluptate veniam eu.',
);

var cita3 = CitaModel(
  type: 'Aniversario',
  name: 'Aniversario de la facultad',
  start: DateTime.parse('2022-04-08 14:00:00'),
  end: DateTime.parse('2022-04-08 18:00:00'),
  allDay: false,
  description: 'Concurrir por la puerta verde',
);

var cita4 = CitaModel(
  type: 'Cita',
  name: 'Comprar regalo',
  start: DateTime.parse('2022-04-06 14:00:00'),
  end: DateTime.parse('2022-04-06 15:00:00'),
  allDay: false,
  description: 'Comprar regalo para el cumpleaños',
);

var cita5 = CitaModel(
  type: 'Cita',
  name: 'Cena con compañeros',
  start: DateTime.parse('2022-04-08 20:00:00'),
  end: DateTime.parse('2022-04-08 23:00:00'),
  allDay: false,
  description: 'Nos juntamos en la facultad y vamos a cenar',
);
