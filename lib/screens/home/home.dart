import 'package:flutter/material.dart';

import 'components/list_view.dart';
import 'components/search.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';

  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
        ),
        body: Container(
          color: Colors.green,
          child: Column(
            children: [
              SearchBar(),
              Expanded(
                child: ListItem(),
              )
            ],
          ),
        ));
  }
}
