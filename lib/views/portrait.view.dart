import 'package:app_configuration_service/appInfo.config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/scaffoldPadding.widget.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/numberPicker.controller.dart';
import 'package:number_picker_module/widgets/widgets.dart';

class PortraitView extends GetView<NumberPickerController> {
  const PortraitView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top margin
                SizedBox(height: AppConfigService.to.space!.m),

                const FlyScaffoldPadding(
                  child: Column(
                    children: [
                      PageTitle(),
                      PageNumber(),
                      PageLabel(),
                      EditValueManual(),
                    ],
                  ),
                ),

                // Top margin
                SizedBox(height: AppConfigService.to.space!.s),
                // Rule
                const PageRule(),
              ],
            ),
          ),
        ),
        // Confirm
        const PageButtons(),
      ],
    );
  }
}
