import 'app_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      cardTheme: _lightCardTheme,
      textTheme: _lightTextTheme(),
      dialogTheme: _lightDialogTheme,
      colorScheme: _lightColorScheme,
      accentTextTheme: _lightTextTheme(),
      primaryTextTheme: _lightTextTheme(),
      accentColor: _lightColorScheme.primary,
      primaryColor: _lightColorScheme.primary,
      backgroundColor: _lightColorScheme.background,
      elevatedButtonTheme: _lightElevatedButtonThemeData,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: _lightColorScheme.background);
}

final ColorScheme _lightColorScheme = ColorScheme.light(
    primary: kBackground, background: kBackground, secondary: kSecondary, brightness: Brightness.light);

final CardTheme _lightCardTheme = CardTheme(
    elevation: 5.0,
    color: kCardColor,
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)));

final DialogTheme _lightDialogTheme = DialogTheme(
    elevation: 0.0,
    titleTextStyle: _lightTextTheme().subtitle1,
    backgroundColor: _lightColorScheme.background,
    contentTextStyle: _lightTextTheme().bodyText2);

final ElevatedButtonThemeData _lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        shadowColor: MaterialStateProperty.all<Color>(kSecondary),
        backgroundColor: MaterialStateProperty.all<Color>(kSecondary),
        side: MaterialStateProperty.all<BorderSide>(BorderSide(color: kSecondary)),
        textStyle: MaterialStateProperty.all<TextStyle>(_lightTextTheme().subtitle2!.apply(color: kText1Color)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(86.0)))));

TextTheme _lightTextTheme() {
  final base = ThemeData.light().textTheme;
  return base
      .copyWith(
          headline4: base.headline4!.copyWith(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900,
              color: kText3Color,
              letterSpacing: 2.0),
          subtitle1: base.subtitle1!.copyWith(fontSize: 16, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
          subtitle2: base.subtitle2!
              .copyWith(fontSize: 14, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, color: kText2Color))
      .apply(fontFamily: 'Lato');
}
