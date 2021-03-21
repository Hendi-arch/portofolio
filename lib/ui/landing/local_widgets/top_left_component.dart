import 'hello.dart';
import 'landing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/ui/widgets/custom_spacer.dart';

class TopLeftComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: const Alignment(-0.8, -0.7),
        child: Container(
            height: 200,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Hello(),
              thirtyTwoPx,
              Row(mainAxisSize: MainAxisSize.min, children: [HireMeButton(), sixteenPx, GetCvButton()])
            ])));
  }
}
