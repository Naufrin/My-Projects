import 'package:flutter/material.dart';

class Naufi extends StatefulWidget {
  const Naufi({Key? key}) : super(key: key);

  @override
  State<Naufi> createState() => _NaufiState();
}

class _NaufiState extends State<Naufi> {
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
                      height: 130,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 35),
                    ),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0,
                            ),
                            Text(
                              'Check your sms for OTP',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Enter the 4 digit OTP",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  height: 65,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),boxShadow: [BoxShadow(color: Colors.black87,spreadRadius: 0.5,blurRadius: 10)]),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 65,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),boxShadow: [BoxShadow(color: Colors.black87,spreadRadius: 0.5,blurRadius: 10)]),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 65,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),boxShadow: [BoxShadow(color: Colors.black87,spreadRadius: 0.5,blurRadius: 10)]),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 65,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),boxShadow: [BoxShadow(color: Colors.black87,spreadRadius: 0.5,blurRadius: 10)]),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: TextSpan(
                      text: "Didn’t get the OTP?",
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                      children: [
                        TextSpan(
                          text: "00:60",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        TextSpan(
                            text: "sec",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 15))
                      ],
                    )),
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Resend OTP",
                            style: TextStyle(color: Colors.red, fontSize: 20))),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xff1e81b0),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                   child: Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),), )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Image.asset("assets/otp.png"),
              top: 670,
              left: -13,
            )
          ],
        ),
      ),
    );
  }
}
