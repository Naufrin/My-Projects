import 'package:flutter/material.dart';

import '../moduls/samplescreentwooo.dart';
import 'OTPSECONDSCREEN.dart';

class OTPloginScreen extends StatefulWidget {
  const OTPloginScreen({Key? key}) : super(key: key);

  @override
  State<OTPloginScreen> createState() => _OTPloginScreenState();
}

class _OTPloginScreenState extends State<OTPloginScreen> {
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text("Login With OTP"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              controller: number,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "ENTER YOUR NUMBER",
                  labelText: "MOBILE NUMBER",
                  labelStyle: TextStyle(color: Colors.pink),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7), gapPadding: 5),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7), gapPadding: 5),
                  suffixIcon: Icon(
                    Icons.numbers,
                    color: Colors.pink,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Otpscreen(phoneNumber: number.text.trim())));
              },
              child: Text("GENARATE OTP"))
        ],
      ),
    );
  }
}
