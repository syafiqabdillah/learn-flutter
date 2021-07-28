import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.indigoAccent,
            ),
          ),
          Container(
            color: Colors.orange[300],
            width: 50,
            margin: EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Icon(Icons.search),
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
