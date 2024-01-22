import 'package:calculator_module/widgets/calculatorNumberBoard.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/numberPicker.controller.dart';

class NumbersPad extends GetView<NumberPickerController> {
  const NumbersPad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CalculatorNumberBoardWidget(
        initValue: controller.number.value.toDouble(),
        onChange: controller.onCalculatorChange,
        onSave: controller.save,
        decimalsAllowed: controller.decimalsAllowed,
        maxLength: controller.maxLength,
        fractionDigits: controller.fractionDigits,
      ),
    );
  }
}
