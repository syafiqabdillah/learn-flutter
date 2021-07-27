import 'package:flutter/widgets.dart';

import 'package:learn_flutter/screens/home/home.dart';
import 'package:learn_flutter/screens/splash/splash.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
};
