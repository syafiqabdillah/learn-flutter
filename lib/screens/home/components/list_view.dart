import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];

    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: ListTile(
            title: Text("Yep - " + entries[index]),
            trailing: Icon(Icons.check_box_outline_blank_rounded),
          ));
        });
  }
}
