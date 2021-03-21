import 'package:flutter/material.dart';
import 'package:my_portofolio/ui/widgets/button_widget.dart';

class GetCvButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomButtonWidget(
      onPressed: () {},
      captionButton: 'Get Cv',
      buttonColor: Theme.of(context).colorScheme.background,
      captionColor: Theme.of(context).colorScheme.secondary);
}
