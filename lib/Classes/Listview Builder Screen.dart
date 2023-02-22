import 'package:flutter/material.dart';

class Liostviewbuilderscreen extends StatefulWidget {
  const Liostviewbuilderscreen({Key? key}) : super(key: key);

  @override
  State<Liostviewbuilderscreen> createState() => _LiostviewbuilderscreenState();
}

class _LiostviewbuilderscreenState extends State<Liostviewbuilderscreen> {
  List num = [1, 2, 3, 4, 5, 6, 7, 8];
  List name = [
    [
      "naufal",
      Colors.redAccent,
      Image.asset("assets/Google.png")
    ],
    [
      "google",
      Colors.redAccent,
    Image.asset("assets/Google.png")
    ],
    [
      "area",
      Colors.redAccent,
      Image.asset("assets/Google.png")
    ],
    [
      "zoom",
      Colors.redAccent,
      Image.asset("assets/Google.png")
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("listview.builder"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: name.length,
            // scrollDirection: Axis.horizontal,
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
            }));
  }
}
