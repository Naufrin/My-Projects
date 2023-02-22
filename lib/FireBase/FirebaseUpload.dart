import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseUploadScreen extends StatefulWidget {
  const FirebaseUploadScreen({Key? key}) : super(key: key);

  @override
  State<FirebaseUploadScreen> createState() => _FirebaseUploadScreenState();
}

class _FirebaseUploadScreenState extends State<FirebaseUploadScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Firebase Upload"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(7.0),
            child: TextFormField(
              controller: username,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(gapPadding: 5),
                  focusedBorder: OutlineInputBorder(gapPadding: 5),
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(7.0),
            child: TextFormField(
              controller: password,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(gapPadding: 5),
                  focusedBorder: OutlineInputBorder(gapPadding: 5),
                  prefixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection('Profile')
                    .doc(username.text.trim())
                    .set({
                  "Username": username.text,
                  "Password": password.text
                }).then((value) {
                  print("uploaded");
                  username.clear();
                  password.clear();
                });
              },
              child: Text("Add In Firebase"))
        ],
      ),
    );
  }
}
