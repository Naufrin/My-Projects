import 'package:flutter/material.dart';

class AnimationBuilderScreen extends StatefulWidget {
  @override
  AnimationBuilderScreenState createState() =>
      new AnimationBuilderScreenState();
}

class AnimationBuilderScreenState extends State
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    animationController?.repeat();
  }

  stopRotation() {
    animationController?.stop();
  }

  startRotation() {
    animationController?.repeat();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: AnimatedBuilder(
                    animation: animationController!,
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset(
                        "assets/8-02-removebg-preview.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    builder: (BuildContext? context, Widget? _widget) {
                      return Transform.rotate(
                        angle: animationController!.value * 16,
                        child: _widget,
                      );
                    },
                  )),
              Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: ElevatedButton(
                    onPressed: () => startRotation(),
                    child: Text(' Start Rotation '),
                  )),
              Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: ElevatedButton(
                    onPressed: () => stopRotation(),
                    child: Text(' Stop Rotation '),
                  )),
            ]),
      ),
    );
  }
}
