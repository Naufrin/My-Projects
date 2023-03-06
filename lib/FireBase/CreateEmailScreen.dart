import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:shared_preferences/shared_preferences.dart";
import '../Api Screens/Eight Api Screen.dart';

class FirebaseEmail extends StatefulWidget {
  FirebaseEmail({Key? key}) : super(key: key);

  @override
  State<FirebaseEmail> createState() => _FirebaseEmailState();
}

class _FirebaseEmailState extends State<FirebaseEmail> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: Text("MAIL LOG IN"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            await pref.setBool("LOG IN STATUS", true);
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => EighthApiPage()));
          },
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: username,
              ),
              TextField(
                controller: password,
              ),
              TextButton(
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: username.text.trim(),
                              password: password.text.trim())
                          .then((value) => ScaffoldMessenger.of(context)
                              .showSnackBar(
                                  SnackBar(content: Text("User Created"))));
                      username.clear();
                      SharedPreferences pref =
                          SharedPreferences.getInstance() as SharedPreferences;
                      pref.setBool("logstatus", true);
                      password.clear();
                    } catch (e) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(e.toString())));
                    }
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}

