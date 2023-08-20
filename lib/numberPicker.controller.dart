import 'package:bottom_sheet_helper/services/customBottomSheet.helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:ruler_picker/rulerPicker.dart';

import 'models/numberPicker.model.dart';
import 'widgets/valueManul.widget.dart';

class NumberPickerController extends GetxController {
  // define
  static NumberPickerController get to => Get.find();

  // properties
  // final RulerPickerController rulerController = RulerPickerController();

  // read init data from arguments
  final NumberPicker? initData = Get.arguments;

  // changes value
  final RxNum value = RxNum(0.0);

  final TextEditingController valueManualController = TextEditingController();

  @override
  void onInit() {
    // set value as controller rule
    if (initData != null) value.value = initData!.value;

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // set system Ui
    // if (initData != null)
    //   ThemeController.to.setSystemUI(
    //     systemNavigationBarColor: Get.theme.cardColor,
    //     statusBarColor: Get.theme.cardColor,
    //   );
  }

  @override
  void onClose() {
    // reset system Ui
    // ThemeController.to.setSystemUI();
    // rulerController.dispose();
    valueManualController.dispose();
    super.onClose();
  }

  void incrementTap() {
    value.value = roundDoubleNumber(
        value.value + (initData!.fractionDigits == 0 ? 1.0 : 0.1));
    // rulerController.value = value.value;
  }

  void decrementTap() {
    value.value = roundDoubleNumber(
        value.value - (initData!.fractionDigits == 0 ? 1.0 : 0.1));
    // rulerController.value = value.value;
  }

  roundDoubleNumber(double number) {
    return double.parse(number.toStringAsFixed(1));
  }

  void onValueChange(num? newValue) {
    value.value = newValue!;
  }

  // confirm back with number
  void confirm() => Get.back(result: value.value);

  // close back with null
  void close() => Get.back();

  // CHange Value By Soft Keyboard
  // Chang value by manul

  // change valueby manul by softkeypoard
  Future<void> showValueManualSheet() async {
    // Set curent value
    //  set current value
    valueManualController.text = value.value.toString();

    // show bottom sheet
    await CustomBottomSheetHelper.show(
      title: initData!.title,
      child: ChangeValueManual(
        valueTextController: valueManualController,
        label: initData!.label,
        onConfirm: () => changeValueManual(),
        onReset: () => resetValueManual(),
      ),
    );
  }

  void changeValueManual() {
    // value of text
    final String value = valueManualController.text;

    // Skip
    if (value.isEmpty) return close();

    // convert to num
    final num valueAsNum = num.parse(valueManualController.text);

    // rulerController.value = valueAsNum;

    close();
  }

  void resetValueManual() => valueManualController.clear();
}
