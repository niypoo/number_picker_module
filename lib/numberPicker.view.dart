import 'package:flutter/material.dart';
import 'package:fly_ui/views/layouts/responsiveView.widget.dart';


import 'views/landscape.view.dart';
import 'views/portrait.view.dart';

class NumberPickerView extends StatelessWidget {
  const NumberPickerView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return const FlyLayoutResponsiveView(
      landscape: LandscapeLayout(),
      portrait: PortraitLayout(),
    );
  }
}
