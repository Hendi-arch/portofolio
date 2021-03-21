import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constant/thumbnail/thumb.dart';
import 'package:my_portofolio/core/constant/url/url.dart';
import 'package:my_portofolio/ui/themes/app_colors.dart';
import 'package:my_portofolio/ui/widgets/custom_spacer.dart';

import 'circle_social.dart';

class TopRightComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themes = Theme.of(context);
    return Align(
        child: Container(
            width: 400,
            height: 60,
            decoration: BoxDecoration(
                color: _themes.colorScheme.background,
                border: Border.all(color: kCardColor, width: 3.0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), bottomLeft: Radius.circular(30.0))),
            child: Row(children: [
              twentyPx,
              CircleSocial(socialUrl: myGithub, socialImgUrl: gitHubThumb),
              twentyPx,
              CircleSocial(socialUrl: mylinkedIn, socialImgUrl: linkedInThumb),
              twentyPx,
              CircleSocial(socialUrl: myInstagram, socialImgUrl: instagramThumb),
              twentyPx,
              CircleSocial(socialUrl: myFacebook, socialImgUrl: facebookThumb)
            ])),
        alignment: const Alignment(1.0, -0.45));
  }
}
