import 'package:flutter/material.dart';

class BackgroundCircle extends StatefulWidget {
  const BackgroundCircle({Key? key}) : super(key: key);

  @override
  State<BackgroundCircle> createState() => _BackgroundCircleState();
}

class _BackgroundCircleState extends State<BackgroundCircle> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                ],
              )),
        ),
      ],
    );
  }
}
