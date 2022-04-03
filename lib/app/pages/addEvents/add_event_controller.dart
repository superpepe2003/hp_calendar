import 'package:get/get.dart';

class AddEventController extends GetxController {
  var types = ['Cita', 'Aniversario', 'Evento'];

  var _tipo = 'Cita'.obs;
  var _name = ''.obs;
  var _description = ''.obs;
  var _start = DateTime.now().obs;
  var _end = DateTime.now().obs;
  var _isAllDay = false.obs;

  get tipo => _tipo.value;
  get name => _name.value;
  get description => _description.value;
  get start => _start.value;
  get end => _end.value;
  get isAllDay => _isAllDay.value;

  set tipo(String value) => _tipo.value = value;
  set name(String value) => _name.value = value;
  set description(String value) => _description.value = value;
  set start(DateTime value) => _start.value = value;
  set end(DateTime value) => _end.value = value;
  set isAllDay(bool value) => _isAllDay.value = value;
}
