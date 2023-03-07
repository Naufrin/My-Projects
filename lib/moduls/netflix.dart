import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SignupPage.dart';

class Netflix extends StatefulWidget {
  const Netflix({Key? key}) : super(key: key);

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  bool description = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "NETFLIX",
          style: new TextStyle(
            color: Color(0xffe20513),
            fontFamily: "Poppins",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () async {
                Uri url = Uri.parse("https://help.netflix.com/en/");
                await launchUrl(url);
              },
              child: Text(
                "Help",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                        labelText: "Email or phone number ",
                        labelStyle: TextStyle(color: Colors.white),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 320,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: username.text.trim(),
                                  password: password.text.trim())
                              .then((value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Selectpersonscreen())));
                          SharedPreferences pref =
                              SharedPreferences.getInstance()
                                  as SharedPreferences;
                          pref.setBool("logstatus", true);
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () async {
                        Uri url = Uri.parse(
                            "https://www.netflix.com/in/loginhelp?fromApp=true");
                        await launchUrl(url);
                      },
                      child: Text(
                        "Recover Password",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Sign in protected by Google reCAPTCHA to ensure you're not a bot.",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                                text: 'Learn More',
                                style: TextStyle(
                                  color: Colors.redAccent.withOpacity(0.9),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    setState(() {
                                      description = !description;
                                      print(description);
                                    });
                                  }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  description == false
                      ? RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                "The information collected by google reCAPTCHA is subject to th Google  ",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                            children: [
                              TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      Uri url = Uri.parse(
                                          "https://policies.google.com/privacy");
                                      await launchUrl(url);
                                    }),
                              TextSpan(
                                text: " and ",
                                style: TextStyle(color: Colors.white54),
                              ),
                              TextSpan(
                                  text: "Terms of Service ",
                                  style: TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      Uri url = Uri.parse(
                                          "https://policies.google.com/terms");
                                      await launchUrl(url);
                                    }),
                              TextSpan(
                                text:
                                    ", and is used for providing,maintaining,and improving the reCAPTCHA service and for the general security purposes (it is not used for personalized advertising by Google)  ",
                                style: TextStyle(color: Colors.white54),
                              ),
                            ],
                          ))
                      : Container()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
