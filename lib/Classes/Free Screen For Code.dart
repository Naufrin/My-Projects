//Example Two
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List num = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];
  List name = [
    [
      "fsds",
      Colors.red,
      Icon(Icons.ac_unit_outlined),
    ],
    ["sdfsdfds", Colors.purple, Icon(Icons.abc_outlined)],
    ["fsdfsdf", Colors.brown, Icon(Icons.add_chart_rounded)],
    ["sdfdsfsdf", Colors.orange, Icon(Icons.add_alert)],
    ["fsdfsdfdsf", Colors.indigo, Icon(Icons.adb)]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview.builder"),
        centerTitle: true,
      ),
      //Fetching Nested List
      body: ListView.builder(
          itemCount: name.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 200,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: name[index][2],
                title: Text(name[index][0]),
                tileColor: name[index][1],
              ),
            );
          }),
      //List data fetch
      /*   ListView.builder(
            itemCount: num.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(num[index].toString());
            }),*/
    );
  }
}

