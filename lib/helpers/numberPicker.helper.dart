import 'package:get/get.dart';
import 'package:number_picker_module/models/numberPicker.model.dart';
import 'package:number_picker_module/numberPicker.binding.dart';
import 'package:number_picker_module/numberPicker.view.dart';

class NumberPickerHelper {
  static Future<num?> open(NumberPicker initData) async => await Get.to(
        const NumberPickerView(),
        binding: NumberPickerBinding(),
        arguments: initData,
      ) as num?;
}
