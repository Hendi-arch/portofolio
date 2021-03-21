import 'package:flutter/material.dart';
import 'package:my_portofolio/ui/widgets/custom_spacer.dart';

class CardTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text('WHAT I DO', style: _theme.textTheme.subtitle1!.apply(color: _theme.colorScheme.secondary)),
      eightPx,
      Text('SPECILIZING IN', style: _theme.textTheme.headline5)
    ]);
  }
}
