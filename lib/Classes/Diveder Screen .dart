import 'package:flutter/material.dart';
class deviderclass extends StatefulWidget {
  const deviderclass({Key? key}) : super(key: key);

  @override
  State<deviderclass> createState() => _deviderclassState();
}

class _deviderclassState extends State<deviderclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Divider Properties:Empty Divider"),
        Divider(),
        Text("Divider Properties: color: Colors.black,"),
        Divider(
          color: Colors.black,
        ),
        Text("Divider Properties: height: 20,"),
        Divider(
          color: Colors.blue,
          height: 20,
        ),
        Text("Divider Properties: indent: 50"),
        Divider(
          color: Colors.green,
          height: 20,
          indent: 50,
        ),
        Text("Divider Properties:  endIndent: 50,"),
        Divider(
          color: Colors.red,
          height: 20,
          indent: 50,
          endIndent: 50,
        ),
        Text("Divider Properties: thickness: 2,"),
        Divider(
          color: Colors.black,
          height: 40,
          indent: 50,
          endIndent: 50,
          thickness: 2,
        ),
        Text("Divider Properties: All properties"),
        Divider(
          thickness: 5,
          color: Colors.black,
          indent: 50,
          endIndent: 50,
          height: 20,
        ),
        Text("Divider Example Screen"),
        Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("VerticalDivider"),
                VerticalDivider(),
                Text("VerticalDivider"),
                VerticalDivider(
                  color: Colors.yellow,  //color of divider
                  width: 10, //width space of divider
                  thickness: 5, //thickness of divier line
                  indent: 10, //Spacing at the top of divider.
                  endIndent: 10, //Spacing at the bottom of divider.
                ),
                Text("VerticalDivider"),
              ],
            ))
      ],
    ),
    );
  }
}

