import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/landscapeView.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldPadding.widget.dart';
import 'package:fly_ui/views/widgets/appBar.widget.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/numberPicker.controller.dart';
import 'package:number_picker_module/widgets/widgets.dart';

class LandscapeView extends GetView<NumberPickerController> {
  const LandscapeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyLandscapeView(
      childA: Column(
        children: [
          FlyScaffoldPadding(
            child: FlyAppBar(
              backgroundColor: Get.theme.cardColor,
            ),
          ),
          const PageTitle(),
          const PageNumber(),
          const PageLabel(),
          const EditValueManual(),
        ],
      ),
      childB: Column(
        children: const [
          // Rule
          PageRule(),
          // Confirm
          PageButtons(),
        ],
      ),
    );
  }
}
