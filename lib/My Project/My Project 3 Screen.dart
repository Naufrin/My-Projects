import 'package:flutter/material.dart';

class Naufaz extends StatefulWidget {
  const Naufaz({Key? key}) : super(key: key);

  @override
  State<Naufaz> createState() => _NaufazState();
}

class _NaufazState extends State<Naufaz> {
  TextEditingController controller = TextEditingController();

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
                  height: 470,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color(0xffc2dee8),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                )),
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
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 1,
                          blurStyle: BlurStyle.outer)
                    ]),
              ),
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Text(
                    "Welcome",
                    textScaleFactor: 2.5,
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Sign up/ Log in to continue",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(height: 68),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Username",
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
                        labelText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff688c8c), width: 4)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff688c8c), width: 4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Forgot password?"),
                  SizedBox(
                    height: 10,
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
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                  Container(
                    height: 45,
                    width: 280,
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 1,
                            spreadRadius: 0.1)
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Google.png",
                          height: 25,
                        ),
                        Text(
                          " Continue with Google",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 45,
                    width: 280,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 1,
                            spreadRadius: 0.1)
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/Phone.png",
                          height: 25,
                        ),
                        Text(
                          " Continue with Phone",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    height: 45,
                    width: 280,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 1,
                            spreadRadius: 0.1)
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/gmail.png"),
                        Text(
                          " Continue with Email",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
