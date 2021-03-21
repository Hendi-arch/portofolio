import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color? captionColor;
  final Color? buttonColor;
  final Function? onPressed;
  final String captionButton;

  CustomButtonWidget(
      {Key? key,
      this.onPressed,
      this.width = 90,
      this.height = 36,
      required this.buttonColor,
      required this.captionButton,
      required this.captionColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(86.0),
            boxShadow: [BoxShadow(color: _theme.colorScheme.secondary, blurRadius: 0.5, spreadRadius: -0.5)]),
        child: ElevatedButton(
            onPressed: onPressed as void Function()?,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color?>(buttonColor)),
            child: Text(captionButton, style: _theme.textTheme.subtitle2!.apply(color: captionColor))));
  }
}
