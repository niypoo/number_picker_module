import 'package:get/get.dart';

import 'numberPicker.controller.dart';

class NumberPickerBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<NumberPickerController>(() => NumberPickerController());
  }
}