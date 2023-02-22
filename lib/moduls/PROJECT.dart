import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:demoone/main.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              child: Transform.rotate(
                angle: -0,
                child: Image(
                  image: AssetImage("assets/logonike.png"),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "Just Do It",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.remove_red_eye_outlined),
                        labelText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ), style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
