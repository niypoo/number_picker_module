import 'package:app_configuration_service/appInfo.config.dart';
import 'package:flutter/material.dart';
import 'package:fly_ui/views/widgets/buttons/circalButton.widget.dart';
import 'package:fly_ui/views/widgets/buttons/elevatedButton.widget.dart';
import 'package:fly_ui/views/widgets/textField.widget.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/widgets/decimalTextInputFormatter.dart';
import 'package:unicons/unicons.dart';

class ChangeValueManual extends StatelessWidget {
  const ChangeValueManual({
    Key? key,
    this.valueTextController,
    this.label,
    this.onConfirm,
    this.onReset,
  }) : super(key: key);

  final TextEditingController? valueTextController;
  final Function? onConfirm;
  final Function? onReset;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: AppConfigService.to.space!.m),
            child: FlyTextField(
              controller: valueTextController,
              labelText: label,
              textInputType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [DecimalTextInputFormatter(decimalRange: 2)],
              onFieldSubmitted: (_) => onConfirm!(),
              suffix: Padding(
                padding: EdgeInsets.all(AppConfigService.to.space!.xxs),
                child: FlyCircleButton(
                  padding: const EdgeInsets.all(0),
                  color: Get.theme.scaffoldBackgroundColor,
                  icon: UniconsLine.times,
                  colorIcon: Get.theme.iconTheme.color,
                  onPressed: onReset,
                ),
              ),
            ),
          ),
          FlyElevatedButton(
            title: 'Confirm'.tr,
            onPressed: onConfirm,
            margin: EdgeInsets.only(bottom: AppConfigService.to.space!.xxs),
          ),
          TextButton(
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Cancel'.tr,
                style: Get.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () => Get.back(),
          )
        ],
      ),
    );
  }
}
