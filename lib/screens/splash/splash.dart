import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home/home.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = 'splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to the App",
              style: TextStyle(color: Colors.blueGrey[700], fontSize: 20),
            ),
            TextButton(
              child: Text(
                "Go next!",
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            )
          ],
        ),
      ))),
    );
  }
}
