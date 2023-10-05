import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:fly_ui/views/layouts/scaffoldPadding.widget.dart';
import 'package:fly_ui/views/widgets/appBar.widget.dart';
import 'package:get/get.dart';
import 'package:number_picker_module/widgets/InformationScreen.widget.dart';
import 'package:number_picker_module/widgets/numbersPad.widget.dart';

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyScaffold(
      appBar: FlyAppBar(
        title: 'Food Scale'.tr,
      ),
      child: const FlyScaffoldPadding(
        child: Column(
          children: [
            InformationScreen(),
            Expanded(child: NumbersPad()),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
