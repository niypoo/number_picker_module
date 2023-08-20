import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/scaffoldLayout.widget.dart';
import 'package:fly_ui/views/widgets/appBar.widget.dart';
import 'package:get/get.dart';

import 'views/landscape.view.dart';
import 'views/portrait.view.dart';

class NumberPickerView extends StatelessWidget {
  const NumberPickerView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlyScaffold(
      backgroundColor: Get.theme.cardColor,
      appBar: context.isLandscape
          ? null
          : FlyAppBar(
              backgroundColor: Get.theme.cardColor,
            ),
      // body
      child: context.isLandscape ? LandscapeView() : PortraitView(),
    );
  }
}
