import 'package:flutter/material.dart';
import 'package:my_portofolio/ui/widgets/button_widget.dart';

class HireMeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomButtonWidget(
      onPressed: () {},
      captionButton: 'Hire Me',
      captionColor: Theme.of(context).cardTheme.color,
      buttonColor: Theme.of(context).colorScheme.secondary);
}
