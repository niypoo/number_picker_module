import 'package:app_configuration_service/appInfo.config.dart';
import 'package:flutter/material.dart';
import 'package:fly_ui/views/widgets/buttons/circalButton.widget.dart';
import 'package:fly_ui/views/widgets/buttons/elevatedButton.widget.dart';
import 'package:fly_ui/views/widgets/buttons/iconButton.widget.dart';
import 'package:fly_ui/views/widgets/buttons/textButton.widget.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/numberPicker.controller.dart';
// import 'package:ruler_picker/rulerPicker.dart';
import 'package:unicons/unicons.dart';

class PageButtons extends GetView<NumberPickerController> {
  const PageButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppConfigService.to.space!.m,
        left: AppConfigService.to.space!.xl,
        right: AppConfigService.to.space!.xl,
      ),
      child: Column(
        children: [
          FlyElevatedButton(
            color: Get.theme.scaffoldBackgroundColor,
            textColor: Get.textTheme.headline6!.color,
            title: 'Confirm'.tr,
            onPressed: controller.confirm,
          ),

          // NO Thanks  => Back
          FlyTextButton(
            title: 'Cancel'.tr,
            onTap: controller.close,
          ),
        ],
      ),
    );
  }
}

class PageRule extends GetView<NumberPickerController> {
  const PageRule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppConfigService.to.space!.xl),
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: SizedBox(),

        // RulerPicker(
        //   backgroundColor: Colors.transparent,
        //   controller: controller.rulerController,
        //   onValueChange: controller.onValueChange,
        //   width: context.isLandscape ? context.height : context.width,
        //   height: (context.isLandscape ? context.height : context.width) * 0.4,
        //   initValue: controller.initData!.value.toDouble(),
        //   fractionDigits: controller.initData!.fractionDigits,
        //   color: Get.theme.cardColor,
        //   lineColor: Get.iconColor!,
        //   marker: SizedBox(
        //     height: (Get.width * 0.3) * 0.8,
        //     child: VerticalDivider(
        //       color: Get.theme.primaryColor,
        //       thickness: 2,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

class EditValueManual extends GetView<NumberPickerController> {
  const EditValueManual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyIconButton(
      icon: UniconsLine.edit_alt,
      onPressed: controller.showValueManualSheet,
    );
  }
}

class PageLabel extends GetView<NumberPickerController> {
  const PageLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      controller.initData!.label.tr,
      style: Get.textTheme.titleSmall,
      maxLines: 1,
    );
  }
}

class PageNumber extends GetView<NumberPickerController> {
  const PageNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfigService.to.space!.m),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Decrement
            Obx(
              () => FlyCircleButton(
                color: Get.theme.scaffoldBackgroundColor,
                icon: UniconsLine.minus,
                onPressed: controller.value.value <= 0
                    ? null
                    : controller.decrementTap,
              ),
            ),

            Expanded(
              child: Container(
                height: 60,
                padding: EdgeInsets.symmetric(
                    horizontal: AppConfigService.to.space!.m),
                child: Obx(
                  () => Text(
                    controller.value.value.toString(),
                    style: Get.textTheme.titleMedium,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // increment
            FlyCircleButton(
              color: Get.theme.scaffoldBackgroundColor,
              icon: UniconsLine.plus,
              onPressed: controller.incrementTap,
            ),
          ],
        ),
      ),
    );
  }
}

class PageTitle extends GetView<NumberPickerController> {
  const PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppConfigService.to.space!.l,
        left: AppConfigService.to.space!.m,
        right: AppConfigService.to.space!.m,
      ),
      child: Text(
        controller.initData!.title,
        style: Get.textTheme.titleSmall,
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
