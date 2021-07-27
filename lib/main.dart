import 'package:flutter/material.dart';

import 'package:learn_flutter/screens/splash/splash.dart';
import 'package:learn_flutter/routes.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[500],
      ),
      routes: routes,
      initialRoute: SplashScreen.routeName,
    );
  }
}
