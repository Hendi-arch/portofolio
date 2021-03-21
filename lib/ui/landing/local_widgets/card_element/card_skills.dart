import 'package:flutter/material.dart';
import 'package:my_portofolio/ui/widgets/custom_spacer.dart';

class CardSkills extends StatelessWidget {
  final String title;
  final String subtitle;
  final String thumbUrl;

  const CardSkills({Key? key, required this.title, required this.subtitle, required this.thumbUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Row(children: [
      CircleAvatar(foregroundImage: NetworkImage(thumbUrl), radius: 30),
      sixteenPx,
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container( child: Text(title, style: _theme.textTheme.subtitle1!.apply(color: _theme.textTheme.headline4!.color))),
        eightPx,
        Container( child: Text(subtitle, style: _theme.textTheme.subtitle2))
      ])
    ]);
  }
}
