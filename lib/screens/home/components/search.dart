import 'package:flutter/material.dart';
import 'package:learn_flutter/constants.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final inputController = TextEditingController();

  @override
  void initState() {
    super.initState();

    inputController.addListener(_printLastInputValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    inputController.dispose();
    super.dispose();
  }

  void _printLastInputValue() {
    print('Right now the input text value is ${inputController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
                controller: inputController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'photocard RM',
                    border: OutlineInputBorder())),
          ),
          Container(
            decoration: BoxDecoration(
                color: colorTheme['blue'],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 50,
            margin: EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                print('click search');
              },
            ),
          )
        ],
      ),
    );
  }
}
