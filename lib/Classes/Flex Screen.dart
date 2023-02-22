import 'package:flutter/material.dart';

class Blush extends StatefulWidget {
  const Blush({Key? key}) : super(key: key);

  @override
  State<Blush> createState() => _BlushState();
}

class _BlushState extends State<Blush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
              flex: 1,
              child: Container(
                color: Colors.yellow,
                child: Text("hellow world"),
              )),
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.orange,

                child: Text("Hiiii....sgcuhadsgfkfhugvavsdovg."),
              )),
          Flexible(
              flex: 7,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.purple,
                child: Text("Hiiii....sgcuhadsgfkfhugvavsdovg."),
              )),
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.red,
                child: Text("Hiiii....sgcuhadsgfkfhugvavsdovg."),
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.black87,
              )),
          // Flexible(
          //     flex: 1,
          //     child: Container(
          //       color: Colors.lightGreen,
          //     )),
          // Flexible(
          //     flex: 1,
          //     child: Container(
          //       color: Colors.amber,
          //     )),
          // Flexible(
          //     flex: 1,
          //     child: Container(
          //       color: Colors.purple,
          //     )),

        ],
      ),
    );
  }
}
