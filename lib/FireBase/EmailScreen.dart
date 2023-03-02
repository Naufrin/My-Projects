//Firebase Email Log in
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Classes/App bar Screen.dart';
import 'CreateEmailScreen.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    super.initState();
    check();
  }
  void check()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? status = await pref.getBool("logstatus");
    if(status == true){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => AppBarPage()));
    }else{
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => FirebaseEmail(

              )));
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Singin with mail"),
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
                          .signInWithEmailAndPassword(
                          email: username.text.trim(),
                          password: password.text.trim())
                          .then((value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => AppBarPage())));
                      SharedPreferences pref = SharedPreferences.getInstance() as SharedPreferences;
                      pref.setBool("logstatus", true);
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
