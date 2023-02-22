import 'package:flutter/material.dart';

class Nazzwa extends StatefulWidget {
  const Nazzwa({Key? key}) : super(key: key);

  @override
  State<Nazzwa> createState() => _NazzwaState();
}

class _NazzwaState extends State<Nazzwa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffcfe8f1),
      body: Stack(
        children: [
          Positioned(
            left: -100,
            top: -80,
            child: Container(
              height: 450,
              width: 450,
              decoration: BoxDecoration(
                  color: Color(0xffc2dee8),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      spreadRadius: 1,
                      blurRadius: 0.5,
                    )
                  ]),
            ),
          ),
          Positioned(
            right: -40,
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
                        spreadRadius: 1,
                        blurRadius: 0.5,
                        blurStyle: BlurStyle.outer)
                  ]),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 45),
                  ),
                  SizedBox(
                    height: (0),
                  ),
                  Text(
                    'Enter following details to Continue',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Full name",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff688c8c), width: 4)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff688c8c), width: 4))),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Mobile number",
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff688c8c), width: 4)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff688c8c), width: 4))),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),  Container(
                    height: 45,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Color(
                          0xff1e81b0,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
