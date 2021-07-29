import 'package:flutter/material.dart';

import 'package:learn_flutter/screens/splash/splash.dart';
import 'package:learn_flutter/routes.dart';
import 'package:learn_flutter/constants.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: colorTheme['blue'],
      ),
      routes: routes,
      initialRoute: SplashScreen.routeName,
    );
  }
}
