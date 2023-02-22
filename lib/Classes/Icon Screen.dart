import 'package:flutter/material.dart';

class Iconscreen extends StatefulWidget {
  const Iconscreen({Key? key}) : super(key: key);

  @override
  State<Iconscreen> createState() => _IconscreenState();
}

class _IconscreenState extends State<Iconscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.access_alarm_rounded),
            Icon(Icons.accessibility_outlined),
            Icon(Icons.adb_outlined, color: Colors.red),
            Icon(
              Icons.adb,
              color: Colors.amber,
              size: 10,
            ),
            Icon(
              Icons.adb,
              color: Colors.deepOrange,
              size: 50,
            ),
            Icon(
              Icons.abc,
              color: Colors.redAccent,size: 100,
              shadows: [
                Shadow(
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 0,
                    color: Colors.black),
              ],
            ),
            Transform.rotate(
              angle: 90,
              child: Icon(Icons.abc),
            ),
            Transform.rotate(
              angle: 180,
              child: Icon(Icons.abc),
            ),
            SizedBox(
              height: 50,
            ),
            Transform.rotate(
              angle: 0,
              child: Text("transform"),
            ),
            SizedBox(
              height: 150,
            ),
            Transform.rotate(
              angle: 90,
              child: Text(
                "transform",
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Transform.rotate(
              angle: 40,
              child: Text("transform", style: TextStyle(fontSize: 40)),
            ),
            SizedBox(
              height: 100,
            ),
            Transform.rotate(
              angle: 50,
              child: Text("transform", style: TextStyle(fontSize: 40)),
            ),
            SizedBox(
              height: 150,
            ),
            Transform.rotate(
              angle: 90,
              child: Text("transform", style: TextStyle(fontSize: 40)),
            ),
          ],
        ),
      ),
    );
  }
}
