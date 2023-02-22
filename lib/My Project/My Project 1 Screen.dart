import 'package:flutter/material.dart';

class Naufa extends StatefulWidget {
  const Naufa({Key? key}) : super(key: key);

  @override
  State<Naufa> createState() => _NaufaState();
}

class _NaufaState extends State<Naufa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor: Color(0xff1e81b0),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "educom.",
              textScaleFactor: 4,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
