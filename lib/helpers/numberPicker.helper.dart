import 'package:get/get.dart';
import 'package:number_picker_module/models/numberPicker.model.dart';
import 'package:number_picker_module/numberPicker.binding.dart';
import 'package:number_picker_module/numberPicker.view.dart';

class NumberPickerHelper {
  static Future<num?> open(
    NumberPicker initData, {
    List<int> decimalsAllowed = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
    int maxLength = 9,
    int fractionDigits = 2,
  }) async =>
      await Get.to(
        () => const NumberPickerView(),
        binding: NumberPickerBinding(
          decimalsAllowed: decimalsAllowed,
          maxLength: maxLength,
          fractionDigits: fractionDigits,
        ),
        arguments: initData,
      ) as num?;
}
