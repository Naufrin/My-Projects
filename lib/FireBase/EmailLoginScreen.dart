import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text(
          'EMAIL LOG',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
                ),
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                          email:  _emailController.text.trim(),
                          password: _passwordController.text.trim())
                          .then((value) => ScaffoldMessenger.of(context)
                          .showSnackBar(
                          SnackBar(content: Text("User Created"))));
                      _emailController.clear();
                      SharedPreferences pref = SharedPreferences.getInstance() as SharedPreferences;
                      pref.setBool("logstatus", true);
                      _passwordController.clear();
                    }catch(e){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                          SnackBar(content: Text(e.toString())));
                    }
                  },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
