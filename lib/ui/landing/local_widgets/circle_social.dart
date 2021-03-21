import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CircleSocial extends StatelessWidget {
  final String socialUrl;
  final String socialImgUrl;

  const CircleSocial({Key? key, required this.socialImgUrl, required this.socialUrl}) : super(key: key);

  void _launchURL() async => await canLaunch(socialUrl) ? await launch(socialUrl) : throw 'Could not launch $socialUrl';

  @override
  Widget build(BuildContext context) {
    final _themes = Theme.of(context);
    return IconButton(
        onPressed: () => _launchURL(),
        icon: Container(
            width: 40,
            height: 40,
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, image: DecorationImage(image: NetworkImage(socialImgUrl)))),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(color: _themes.cardTheme.color, shape: BoxShape.circle)),
        padding: EdgeInsets.zero,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent);
  }
}
