import 'package:get/get.dart';
import 'package:heippi_calendar/app/data/model/cita_model.dart';
import 'package:heippi_calendar/app/data/seed/data.dart';

class HomeController extends GetxController {
  // var data = 0;

  // void increment() {
  //   data++;
  //   update();
  // }

  var _citas = <CitaModel>[].obs;
  var _citasFiltradas = <CitaModel>[].obs;
  var _selectDate = DateTime.now().obs;
  var _isFiltrado = false.obs;

  get isFiltrado => _isFiltrado.value;
  set isFiltrado(bool value) => _isFiltrado.value = value;

  DateTime get selectDate => _selectDate.value;
  set selectDate(DateTime value) {
    _selectDate.value = value;
    _citasFiltradas.assignAll(getCitasFiltradas());
    _citasFiltradas.sort((a, b) => a.start.millisecondsSinceEpoch
        .compareTo(b.start.millisecondsSinceEpoch));
  }

  @override
  void onInit() {
    super.onInit();
    _citas.assignAll([cita1, cita2, cita3, cita4, cita5]);
    _citas.sort((a, b) => a.start.millisecondsSinceEpoch
        .compareTo(b.start.millisecondsSinceEpoch));
    _citasFiltradas.assignAll(getCitasFiltradas());
    _citasFiltradas.sort((a, b) => a.start.millisecondsSinceEpoch
        .compareTo(b.start.millisecondsSinceEpoch));
  }

  void add(CitaModel cita) {
    _citas.add(cita);
    _citas.sort((a, b) => a.start.millisecondsSinceEpoch
        .compareTo(b.start.millisecondsSinceEpoch));
  }

  void removeEvent(index) {
    _citas.removeAt(index);
  }

  CitaModel getEvent(int index) {
    if (_isFiltrado.value) {
      return citasFiltradas[index];
    } else {
      return citas[index];
    }
  }

  List<CitaModel> get citas => _citas.toList();
  List<CitaModel> get citasFiltradas => _citasFiltradas.toList();

  List<CitaModel> getCitasFiltradas() {
    var temp = citas
        .where((cita) =>
            cita.start.day == selectDate.day &&
            cita.start.month == selectDate.month &&
            cita.start.year == selectDate.year)
        .toList();
    return temp;
  }
}
