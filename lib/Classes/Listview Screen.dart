import 'package:flutter/material.dart';

class Listviewscreen extends StatefulWidget {
  const Listviewscreen({Key? key}) : super(key: key);

  @override
  State<Listviewscreen> createState() => _ListviewscreenState();
}

class _ListviewscreenState extends State<Listviewscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        shrinkWrap: false,
        padding: EdgeInsets.all(20),
        reverse: false,
        children: [
          CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.transparent,
            child: Image.asset("assets/Google.png"),
          ),
          Center(
            child: Text(
              "Google",
              style: TextStyle(fontSize: 40),
            ),
          ),Text("Google is named after the mathematical word “googol,” described as the value represented by one followed by 100 zeros. Google is the leading Internet search engine; its main service provides customers with targeted search outcomes chosen from over 8 billion web pages. Both Stanford dropouts, Larry Page and Sergey Brin, developed Google search technology from a college project. Thus, an insight into Google Essay discusses how Google works and came into existence.",style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
