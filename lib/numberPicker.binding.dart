import 'package:get/get.dart';

import 'numberPicker.controller.dart';

class NumberPickerBinding implements Bindings {
  final List<int> decimalsAllowed;
  final int maxLength;
  final int fractionDigits;

  NumberPickerBinding({
    this.decimalsAllowed = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
    this.maxLength = 9,
    this.fractionDigits = 2,
  });

  @override
  void dependencies() {
    Get.lazyPut<NumberPickerController>(() => NumberPickerController(
          decimalsAllowed: decimalsAllowed,
          maxLength: maxLength,
          fractionDigits: fractionDigits,
        ));
  }
}
