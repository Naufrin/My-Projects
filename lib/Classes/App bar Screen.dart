//AppBar
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  State<AppBarPage> createState() {
    return _AppBarPageState();
  }
}

class _AppBarPageState extends State<AppBarPage> {
  DateTime time = DateTime.now();
  String name = "Sunrule";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // leading: Text("Hiiii"),
            leading: Icon(Icons.arrow_back_ios_sharp),
            // leading: Column(children: [
            //   Text("Hiii"),
            //   Icon(Icons.adb)
            // ],),
            // backgroundColor: Colors.cyan,
            // backgroundColor: Color(0xffffff),
            backgroundColor: Color.fromRGBO(255, 200, 255, 1),
            title: Text("Hello World"),
            centerTitle: false,
            titleSpacing: 20,
            actionsIconTheme: IconThemeData(color: Colors.red),
            actions: [
              Center(child: Text("Hello")),
              Icon(Icons.person),
              Icon(Icons.favorite),
              Icon(Icons.grid_view_rounded)
            ],
            toolbarOpacity: 1,
            toolbarHeight: 100,
            elevation: 20,
            shadowColor: Colors.red,
            shape: RoundedRectangleBorder(
              // side: BorderSide(
              //   color: Colors.red,
              //   width: 3,
              // ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.cyan),
            bottom: PreferredSize(
                child: Container(
                  color: Colors.orange,
                  height: 50.0,
                ),
                preferredSize: Size.fromHeight(50.0)),
          ),
          body: Center(child: Text("App Bar Class"))),
    );
  }
}