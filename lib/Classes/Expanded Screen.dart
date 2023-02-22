import 'package:flutter/material.dart';

class Bass extends StatefulWidget {
  const Bass({Key? key}) : super(key: key);

  @override
  State<Bass> createState() => _BassState();
}

class _BassState extends State<Bass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Column(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                // height: 200,
                color: Colors.red,
                child: Text("hello world"),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                // height: 200,

                color: Colors.grey,
                child: Column(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          width: double.infinity,
                          color: Colors.indigo,
                          child: Text("hello world")),
                      flex: 1,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          color: Colors.purple, child: Text("hello world")),
                      flex: 2,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          color: Colors.yellowAccent,
                          child: Text("hello world")),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                // height: 200,
                color: Colors.brown,
                child: Column(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          color: Colors.indigo, child: Text("hello world")),
                      flex: 2,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          color: Colors.purple, child: Text("hello world")),
                      flex: 2,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                          color: Colors.yellowAccent,
                          child: Text("hello world")),
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            /*       Expanded(
                flex: 2,
                child: Container(
                  // height: 200,
                  color: Colors.blue,
                )),
            Flexible(
              // fit: FlexFit.tight,
              flex: 2,
              child: Container(height: 250,
                color: Colors.red,

                child: Column(
                  children: [
                    Container(
                      height: 200,
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
