import 'package:flutter/material.dart';

class Listscreen extends StatefulWidget {
  const Listscreen({Key? key}) : super(key: key);

  @override
  State<Listscreen> createState() => _ListscreenState();
}

class _ListscreenState extends State<Listscreen> {
  bool enable = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Empty List Tile"),
                  ListTile(
                    style: ListTileStyle.list,
                    tileColor: Colors.red,
                  ),
                  sizedBox(),
                  Text("List Tile With Leading"),
                  ListTile(

                    leading: Icon(Icons.account_balance),
                    // leading: Text("Number"),
                    // leading: Image.network( "https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"),
                    tileColor: Colors.white,
                  ),
                  sizedBox(),
                  Text("List Tile With Title"),
                  ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text("Number"),
                    // title: Icon(Icons.account_balance),
                    // title: Image.network( "https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"),
                    tileColor: Colors.white,
                  ),
                  sizedBox(),
                  Text("List Tile With Trailing"),
                  ListTile(
                    trailing: Icon(Icons.add_alert_rounded),
                    leading: Icon(Icons.account_balance),

                    title: Text("Number"),
                    // title: Icon(Icons.account_balance),
                    // title: Image.network( "https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"),
                    tileColor: Colors.white,
                  ),
                  sizedBox(),
                  Text("List Tile With subtitle"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text("10 Digit Mobile Number"),
                    tileColor: Colors.white,
                  ),
                  sizedBox(),
                  Text("List Tile With dense"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text("10 Digit Mobile Number\n 9500367536"),
                    tileColor: Colors.white,
                    dense: false, //Dense list tiles default to a smaller height.
                  ),
                  sizedBox(),
                  Text("List Tile With isThreeLine"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text(
                        "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
                    tileColor: Colors.white,
                    isThreeLine: true,
                  ),
                  sizedBox(),
                  Text("List Tile With shape"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text(
                        "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      //A rectangular border with rounded corners.
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(width: 2, color: Colors.orange),
                    ),
                    isThreeLine: true,
                  ),
                  sizedBox(),
                  Text("List Tile With shape"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text(
                        "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
                    tileColor: Colors.white,
                    shape: BeveledRectangleBorder(
                      side:
                      BorderSide(width: 1, color: Colors.deepPurpleAccent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isThreeLine: true,
                  ),
                  sizedBox(),
                  Text("List Tile With shape"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text(
                        "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
                    tileColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                      //A rectangular border with smooth continuous transitions between the straight sides and the rounded corners.
                      side: BorderSide(width: 2, color: Colors.indigo),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    isThreeLine: true,
                  ),
                  sizedBox(),
                  Text("List Tile With contentPadding"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text(
                        "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
                    tileColor: Colors.white,
                    contentPadding: EdgeInsets.all(30),
                    isThreeLine: true,
                  ),
                  sizedBox(),
                  Text("List Tile With textColor,minVerticalPadding"),
                  ListTile(
                    title: Text("Number"),
                    subtitle: Text(
                        "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
                    tileColor: Colors.white,
                    textColor: Colors.red,
                    isThreeLine: true,
                    minVerticalPadding: 70,
                  ),
                  sizedBox(),
                  Text(
                      "List Tile With minLeadingWidth,iconColor,selected,selectedTileColor,selectedColor,enabled"),
                  ListTile(
                    title: Text("Number"),
                    leading: Icon(Icons.ac_unit_outlined),
                    trailing: Icon(Icons.ac_unit_outlined),
                    tileColor: Colors.white,
                    iconColor: Colors.purpleAccent,
                    selected: false,
                    selectedTileColor: Colors.green,
                    selectedColor: Colors.red,
                    minLeadingWidth: 150,
                    enabled: false,
                  ),
                  sizedBox(),
                  Text(
                      "List Tile With horizontalTitleGap,onTap,onLongPress,hoverColor "),
                  ListTile(
                    title: Text("Number"),
                    leading: Icon(Icons.ac_unit_outlined),
                    trailing: Icon(Icons.ac_unit_outlined),
                    tileColor: Colors.white,
                    horizontalTitleGap: 150,
                    hoverColor: Colors.orange,
                    enabled: enable,
                    onTap: () {
                      setState(() {
                        enable = false;
                      });
                    },
                    onLongPress: () {
                      print("Long Press Detected");
                    },
                  ),
                  sizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox sizedBox() {
    return SizedBox(
      height: 10,
    );
  }
}

