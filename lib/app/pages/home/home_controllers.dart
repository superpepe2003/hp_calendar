import 'package:get/get.dart';
import 'package:heippi_calendar/app/data/model/cita_model.dart';

class HomeController extends GetxController {
  // var data = 0;

  // void increment() {
  //   data++;
  //   update();
  // }

  var _citas = <CitaModel>[].obs;

  var cita1 = CitaModel(
    type: 'Cita',
    name: 'Cita 1',
    start: DateTime.parse('2020-01-01'),
    end: DateTime.parse('2020-01-01'),
    allDay: false,
    description: 'Descripcion de la cita 1',
  );

  var cita2 = CitaModel(
    type: 'Cita',
    name: 'Cita 2',
    start: DateTime.parse('2020-01-02'),
    end: DateTime.parse('2020-01-02'),
    allDay: false,
    description: 'Descripcion de la cita 2',
  );

  var cita3 = CitaModel(
    type: 'Cita',
    name: 'Cita 3',
    start: DateTime.parse('2020-01-03'),
    end: DateTime.parse('2020-01-03'),
    allDay: false,
    description: 'Descripcion de la cita 3',
  );

  @override
  void onInit() {
    super.onInit();
    _citas.assignAll([cita1, cita2, cita3]);
  }

  void add() {
    _citas.add(CitaModel(
      type: 'Cita',
      name: 'Cita 4',
      start: DateTime.parse('2020-01-04'),
      end: DateTime.parse('2020-01-04'),
      allDay: false,
      description: 'Descripcion de la cita 4',
    ));
  }

  List<CitaModel> get citas => _citas.toList();
}
