import 'package:bottom_sheet_helper/services/customBottomSheet.helper.dart';
import 'package:calculator_module/widgets/calculatorManualValueField.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:ruler_picker/rulerPicker.dart';

import 'models/numberPicker.model.dart';

class NumberPickerController extends GetxController {
  // define
  static NumberPickerController get to => Get.find();

  // read init data from arguments
  final NumberPicker initData = Get.arguments;

  // changes value
  final RxNum number = RxNum(0.0);

  final TextEditingController valueManualController = TextEditingController();

  @override
  void onInit() {
    // set value as controller rule
    number.value = initData.value;

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    valueManualController.dispose();
    super.onClose();
  }

  void onCalculatorChange(double value) {
    number.value = value;
  }

  // when user tap on confirm
  void save() {
    Get.back(result: number.value);
  }

  roundDoubleNumber(double number) {
    return double.parse(number.toStringAsFixed(1));
  }

  void onValueChange(num? newValue) {
    number.value = newValue!;
  }

  // confirm back with number
  void confirm() => Get.back(result: number.value);

  // close back with null
  void close() => Get.back();

  // Change Scale by Soft Keyboard
  Future<void> onOpenSoftKeyboard() async {
    //  set current value
    valueManualController.text = number.value.toString();

    // Show bottom
    await CustomBottomSheetHelper.show(
      child: CalculatorManualValueFieldWidget(
        controller: valueManualController,
        label: initData.label,
        onConfirm: () => changeValueManual(),
        onReset: () => resetValueManual(),
      ),
    );
  }

  void changeValueManual() {
    // value of text
    final String value = valueManualController.text;

    // Skip
    if (value.isEmpty) return Get.back();

    // convert to num
    number.value = double.parse(valueManualController.text);

    // close sheet
    Get.back();
  }

  void resetValueManual() => valueManualController.clear();
}
