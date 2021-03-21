import 'package:flutter/material.dart';
import 'package:my_portofolio/ui/widgets/custom_spacer.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      RichText(
          text: TextSpan(
              text: 'HELLO, ',
              style: _theme.textTheme.subtitle1!.apply(color: _theme.colorScheme.secondary),
              children: [
            TextSpan(
                text: 'IM HENDI NOVIANSYAH',
                style: _theme.textTheme.subtitle1!.apply(color: _theme.textTheme.headline4!.color))
          ])),
      eightPx,
      Text('SOFTWARE ENGINEER', style: _theme.textTheme.headline4),
      sixteenPx,
      Text('Working at PT Pan Asia Teknologi & Love To Play Video Game.', style: _theme.textTheme.subtitle2)
    ]);
  }
}
