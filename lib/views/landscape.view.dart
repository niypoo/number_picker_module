import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/landscapeView.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:fly_ui/views/widgets/appBar.widget.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/numberPicker.controller.dart';
import 'package:number_picker_module/widgets/InformationScreen.widget.dart';
import 'package:number_picker_module/widgets/numbersPad.widget.dart';

class LandscapeLayout extends GetView<NumberPickerController> {
  const LandscapeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyScaffold(
      appBar: FlyAppBar(
        title: controller.initData.title,
      ),
      child: const FlyLandscapeView(
        childB: Column(children: [Expanded(child: InformationScreen())]),
        childA: Column(
          children: [
            Expanded(child: NumbersPad()),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
