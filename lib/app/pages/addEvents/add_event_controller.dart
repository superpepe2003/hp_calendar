import 'package:get/get.dart';
import 'package:heippi_calendar/app/data/model/cita_model.dart';
import 'package:heippi_calendar/app/pages/home/home_controllers.dart';

class AddEventController extends GetxController {
  var types = ['Cita', 'Aniversario', 'Evento'];

  var _type = 'Cita'.obs;
  var _name = ''.obs;
  var _description = ''.obs;
  var _start = DateTime.now().obs;
  var _end = DateTime.now().obs;
  var _allDay = false.obs;

  //Errores del formulario
  var _errorName = ''.obs;
  var _errorDate = ''.obs;
  var _errorForm = ''.obs;

  get type => _type.value;
  get name => _name.value;
  get description => _description.value;
  get start => _start.value;
  get end => _end.value;
  get allDay => _allDay.value;

  get errorName => _errorName.value;

  CitaModel get getEvent => new CitaModel(
      type: type,
      name: name,
      description: description,
      start: start,
      end: end,
      allDay: allDay);

  set type(String value) => _type.value = value;
  set name(String value) => _name.value = value;
  set description(String value) => _description.value = value;
  set start(DateTime value) {
    _start.value = value;
    if (_start.value.isAfter(_end.value)) {
      _end.value = _start.value;
    }
  }

  set end(DateTime value) {
    _end.value = value;
    _allDay.value = false;
    if (_end.value.isBefore(_start.value)) {
      var temp = _start.value;
      _start.value = _end.value;
      _end.value = temp;
    }
  }

  set allDay(bool value) {
    _allDay.value = value;
    if (value) {
      _start.value = DateTime(start.year, start.month, start.day, 00, 00, 00);
      _end.value =
          _start.value.add(Duration(hours: 23, minutes: 59, seconds: 59));
    }
  }

  @override
  void onInit() {
    super.onInit();
    debounce(_name, validarName, time: Duration(milliseconds: 500));
  }

  bool addEvent() {
    if (_errorForm.value.isEmpty) {
      Get.find<HomeController>().add(CitaModel(
        type: type,
        name: name,
        start: start,
        end: end,
        allDay: allDay,
        description: description,
      ));
      return true;
    } else {
      Get.snackbar('Error', 'Revise el formulario y corrija los errores',
          snackPosition: SnackPosition.BOTTOM);
      return false;
    }
  }

  validarName(String val) async {
    if (val.isEmpty) {
      _errorName.value = 'Nombre requerido';
      _errorForm.value = _errorForm + 'name';
    } else {
      _errorName.value = '';
      _errorForm.value = _errorForm.value.replaceAll('name', '');
    }
    print(_errorForm.value);
  }
}
