import 'package:flutter/material.dart';

class Cardsscreen extends StatefulWidget {
  const Cardsscreen({Key? key}) : super(key: key);

  @override
  State<Cardsscreen> createState() => _CardsscreenState();
}

class _CardsscreenState extends State<Cardsscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: Text("hello"),
              ),
              Card(
                child: Text("Card widget example hello"),
              ),
              Container(
                height: 100,
                width: 100,
                child: Card(
                  child: Center(child: Text("Card Widget Example ")),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                child: Card(
                  color: Colors.yellow,
                  child: Center(
                      child: Text("Card Widget Example :colors yellow ")),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Card(
                  margin: EdgeInsets.all(0),
                  color: Colors.deepOrange,
                  child: Center(child: Text("Card Widget Example ")),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.cyan,
                  elevation: 20,
                  child:
                      Center(child: Text("Card Widget Example ...Elevation")),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 200,
                child: Card(
                  color: Colors.yellow,
                  elevation: 20,
                  shadowColor: Colors.red,
                  child: Center(
                      child: Text(
                          "Card Widget Example:  shadowColor: Colors.green, ")),
                ),
              ),
              Card(
                color: Colors.yellow,
                elevation: 20,
                margin: EdgeInsets.all(0),
                shadowColor: Colors.black54,
                child: Center(
                    child: Text(
                        "card widget Example margin edge insets.all(0), ")),
              ),
              Card(
                color: Colors.yellow,
                elevation: 20,
                margin: EdgeInsets.all(50),
                shadowColor: Colors.black54,
                child: Center(
                    child: Text(
                        "card widget Example margin edge insets.all(50), ")),
              ),
              Container(
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blue,
                  margin: EdgeInsets.all(1),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.yellow, width: 1),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: Center(
                      child: Text(
                          "Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),")),
                ),
              ),
              Container(
                height: 150,
                width: 250,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blue,
                  margin: EdgeInsets.all(1),
                  color: Colors.blue,
                  borderOnForeground: false,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.deepOrange, width: 5),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: Center(
                      child: Text(
                          "Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),")),
                ),
              ),
              Container(
                height: 150,
                width: 250,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blue,
                  margin: EdgeInsets.all(1),
                  color: Colors.blue,
                  borderOnForeground: false,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.yellow, width: 5),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: Center(
                      child: Text(
                          "Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),")),
                ),
              ),
              Container(
                height: 150,
                width: 250,
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blue,
                  margin: EdgeInsets.all(1),
                  color: Colors.blue,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.yellow, width: 5),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Card Widget Example:  RoundedRectangleBorder(side: BorderSide(color: Colors.yellow, width: 1), borderRadius:BorderRadius.only(topLeft: Radius.circular(20))),"),
                  )),
                ),
              ),
              Container(
                height: 500,
                width: 500,
                child: Card(
                  child: Column(
                    children: [
                      Text("Card Widget"),
                      Text("Card Widget"),
                      Text("Card Widget"),
                      Icon(Icons.add),
                      Row(
                        children: [
                          Icon(Icons.add),
                          Icon(Icons.adb),
                          Icon(Icons.face),
                          Icon(Icons.favorite),
                          Icon(Icons.print),
                          Icon(Icons.grid_view_rounded),
                        ],
                      ),
                      Image.asset("assets/demon1.jpg")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
