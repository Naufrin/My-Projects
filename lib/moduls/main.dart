import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../FireBase/EmailLoginScreen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Poppins",
    ),
    home: LoginPage(),
  ));
}
