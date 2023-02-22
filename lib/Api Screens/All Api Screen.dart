import 'package:flutter/material.dart';

import 'Eight Api Screen.dart';
import 'Fifth Api Screen.dart';
import 'First Api Screen.dart';
import 'Forth Api Screen.dart';
import 'Nineth Api Screen.dart';
import 'Second Api Screen.dart';
import 'Seventh Api Screen.dart';
import 'Sixth Api Screen.dart';
import 'Third Api Screen.dart';


class AllApiScreen extends StatefulWidget {
  const AllApiScreen({Key? key}) : super(key: key);

  @override
  State<AllApiScreen> createState() => _AllApiScreenState();
}

class _AllApiScreenState extends State<AllApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Api Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FrirstApiscreen(),
                      ));
                },
                child: Text("Images")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScecondApiScreen(),
                      ));
                },
                child: Text("Jokes Api")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdApiScreen(),
                      ));
                },
                child: Text("Bored Api")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FourthApiPage(),
                      ));
                },
                child: Text("Nation")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FifthApiPage(),
                      ));
                },
                child: Text("Data Api")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SixthApiPage(),
                      ));
                },
                child: Text("Spacecraft Api")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SeventhApiPage(),
                      ));
                },
                child: Text("Spacecraft Api")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EighthApiPage(),
                      ));
                },
                child: Text("Lab json")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NinthApiPage(),
                      ));
                },
                child: Text("Costomer Satalite")),
          ],
        ),
      ),
    );
  }
}
