import 'package:flutter/material.dart';
import 'package:my_portofolio/app/app.router.dart';
import 'package:my_portofolio/ui/themes/app_themes.dart';
import 'package:stacked_services/stacked_services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme(),
        title: 'Hendi Noviansyah',
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: (settings) => StackedRouter().onGenerateRoute(settings));
  }
}
