import 'package:calculator_module/widgets/calculatorInformationScreen.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/numberPicker.controller.dart';
// import 'package:auto_size_text/auto_size_text.dart';

class InformationScreen extends GetView<NumberPickerController> {
  const InformationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CalculatorInformationScreenWidget(
        // NUMBERS
        number: controller.number.value.toString(),

        // LABELs
        label: controller.initData.label,

        // // TITLE
        // title: AutoSizeText(
        //   controller.initData.title,
        //   style: Get.theme.textTheme.bodyLarge,
        //   maxLines: 1,
        // ),
      ),
    );
  }
}
