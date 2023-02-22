import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../FireBase/OTPLogIn.dart';

class Otpscreen extends StatefulWidget {
  final String? phoneNumber;
  Otpscreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  TextEditingController controller = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  String? verificationCode;
  String code = "";
  String smsCode = "";
  bool resend = false;
  int start = 60;
  bool waite = false;

  verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: " +91${widget.phoneNumber}",
        verificationCompleted: (PhoneAuthCredential credential) async {},
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String? verificationID, int? resendToken) {
          setState(() {
            print(verificationID);
            verificationCode = verificationID;
          });
          startTimer();
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  Future<void> signinWithPhoneNumber(String verificationID, String smsCode,
      BuildContext context, String phoneNumber) async {
    try {
      AuthCredential authCredential = PhoneAuthProvider.credential(
          verificationId: verificationID, smsCode: smsCode);
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(authCredential);
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool("loginStatus", true);
      print(
          "******************************************************>>>>>> ${userCredential.user!.uid}");
      final User? user = FirebaseAuth.instance.currentUser;
      final uid = user?.uid;
      print("uid");

      var as =
          await FirebaseFirestore.instance.collection("Userss").doc(uid).get();
      if (as.exists) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPloginScreen(),
            ));
      } else {
        await FirebaseFirestore.instance
            .collection("Userss")
            .doc(userCredential.user!.uid)
            .set({
          'number': phoneNumber,
          'image': "",
          'email': "",
          'verifier': 'false',
        });
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPloginScreen(),
            ));
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login successfully")));
    } catch (s) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(s.toString())));
    }
  }

  bool hasError = false;
  String curentText = "";
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
    verifyPhone();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    errorController!.close();
    super.dispose();
  }

  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message!),
      duration: Duration(seconds: 2),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("OTP"),
      ),
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  // child: Image.asset(Constants.otpGifImage),
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Phone Number Verification",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
                child: RichText(
                  text: TextSpan(
                      text: "Enter the code sent to ",
                      children: [
                        TextSpan(
                            text: "${widget.phoneNumber}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 15)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                        color: Colors.pink.shade200,
                        fontWeight: FontWeight.bold),
                    length: 6,
                    obscureText: true,
                    obscuringCharacter: "*",
                    obscuringWidget: const FlutterLogo(
                      size: 25,
                    ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I am from validator";
                      }
                      return null;
                    },
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        activeColor: Colors.pink,
                        errorBorderColor: Colors.red,
                        selectedFillColor: Colors.pink,
                        inactiveFillColor: Colors.pink,
                        inactiveColor: Colors.black),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: controller,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        curentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      return true;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  hasError ? "*Please fill up all the cells properly" : "",
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't receive the code? ",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () => snackBar("OTP resend!!"),
                    child: const Text(
                      "RESEND",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.pink.shade200,
                          offset: const Offset(1, -2),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.pink.shade100,
                          offset: const Offset(1, 2),
                          blurRadius: 5)
                    ]),
                child: ButtonTheme(
                    child: TextButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                    if (curentText.length != 6) {
                      errorController!.add(ErrorAnimationType.shake);
                      setState(() {
                        hasError = true;
                      });
                    } else {
                      setState(() {
                        hasError = false;
                        smsCode = controller.text;
                        signinWithPhoneNumber(verificationCode!, smsCode,
                            context, widget.phoneNumber!);
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "VERIFY".toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                )),
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                      child: TextButton(
                    child: const Text("Clear"),
                    onPressed: () {
                      controller.clear();
                    },
                  )),
                  Flexible(
                      child: TextButton(
                    child: const Text("Set Text"),
                    onPressed: () {
                      setState(() {
                        controller.text = "123456";
                      });
                    },
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void startTimer() {
    const onesec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onesec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
          waite = false;
          resend = true;
        });
      } else {
        setState(() {
          start--;
        });
      }
    });
  }
}
