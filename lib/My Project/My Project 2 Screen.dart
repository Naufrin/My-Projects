import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffcfe8f1),
      body: Stack(
        children: [
          Positioned(
            left: -100,
            top: -80,
            child: Container(
              height: 470,
              width: 500,
              decoration: BoxDecoration(
                  color: Color(0xffc2dee8),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(1, 1)),
                  ]),
            ),
          ),
          Positioned(
            right: -30,
            top: -60,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xffb0d0da).withOpacity(0.5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(1, 1)),
                  ]),
            ),
          ),
          Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Welcome",
                  textScaleFactor: 3,
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "Continue as...",
                  textScaleFactor: 2,
                  style: TextStyle(color: Colors.black87, fontSize: 10),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 45,
                  width: 280,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff1e81b0),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Student User",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 45,
                  width: 280,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff1e81b0),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Tutor User",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
                Container(
                  height: 45,
                  width: 280,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff1e81b0),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Admin User",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ],
            ),
          ),
          Positioned(
            child: Image.asset("assets/bag.png"),
            top: 258,
            right: 283,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: RichText(
                text: TextSpan(
                    text: "skip",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                    children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      )),
                    ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
