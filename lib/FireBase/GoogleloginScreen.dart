import 'package:flutter/material.dart';

class GoogleLoginScreen extends StatefulWidget {
  const GoogleLoginScreen({Key? key}) : super(key: key);

  @override
  State<GoogleLoginScreen> createState() => _GoogleLoginScreenState();
}

class _GoogleLoginScreenState extends State<GoogleLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Google log in",
        ),
      ),
      body: (Container(
        child: (Center(
            child: ElevatedButton(onPressed: () {}, child: Text("log in")))),
      )),
    );
  }
}
