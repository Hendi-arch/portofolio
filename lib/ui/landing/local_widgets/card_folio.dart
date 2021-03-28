import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constant/thumbnail/thumb.dart';

import 'card_element/card_skills.dart';
import 'card_element/card_title.dart';

class CardFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size;
    return Align(
        alignment: Alignment.bottomCenter,
        child: Card(
            child: Container(
                width: _size.width * 0.7,
                height: _size.height * 0.6,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  CardTitle(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    CardSkills(title: 'Mobile Development', subtitle: 'Dart & Flutter.', thumbUrl: mobileDevThumb),
                    CardSkills(title: 'Web Development', subtitle: 'Dart & Flutter.', thumbUrl: webDevThumb),
                    CardSkills(title: 'Desktop Development', subtitle: 'Dart & Flutter.', thumbUrl: desktopDevThumb)
                  ]),
                  RichText(
                      text: TextSpan(
                          text: 'SINGLE CODEBASE, ',
                          style: _theme.textTheme.subtitle1!.apply(color: _theme.colorScheme.secondary),
                          children: [
                        TextSpan(
                            text: 'FOR ALL PLATFORM.',
                            style: _theme.textTheme.subtitle1!.apply(color: _theme.textTheme.headline4!.color))
                      ]))
                ]))));
  }
}
