import 'package:demoone/Classes/SQF%20DataModel%20Screen.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    Key? key,
    required this.data,
    required this.edit,
    required this.index,
    required this.delete,
  }) : super(key: key);
  final DataModel data;
  final Function edit;
  final int index;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: IconButton(
              onPressed: () {
                edit(index);
              },
              icon: Icon(Icons.edit),
            )),
        title: Text(data.title),
        subtitle: Text(data.subtitle),
        trailing: CircleAvatar(
          backgroundColor: Colors.red,
          child: IconButton(
              onPressed: () {
                delete(index);
              },
              icon: Icon(
                Icons.delete,
              )),
        ),
      ),
    );
  }
}
