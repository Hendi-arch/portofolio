import 'package:flutter/material.dart';
import 'package:my_portofolio/app/app.locator.dart';

import 'app/my_app.dart';

void main() {
  // register dependencies
  setupLocator();

  // run the app
  runApp(MyApp());
}
