import 'package:flutter/material.dart';

class SignUpClass extends StatefulWidget {
  const SignUpClass({Key? key}) : super(key: key);

  @override
  State<SignUpClass> createState() => _SignUpClassState();
}

class _SignUpClassState extends State<SignUpClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Sign up"),),);
  }
}
