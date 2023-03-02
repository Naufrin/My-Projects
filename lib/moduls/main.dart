import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../Classes/App bar Screen.dart';
import '../FireBase/EmailLoginScreen.dart';
import '../FireBase/OTPLogIn.dart';
import 'NewApp.dart';
import 'netflix.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Poppins",
    ),
    home: Netflix(),
  ));
}
