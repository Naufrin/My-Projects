
import 'package:flutter/material.dart';

import '../Classes/TextFeild Model Screen.dart';

class Lockroom extends StatefulWidget {
  const Lockroom({Key? key}) : super(key: key);

  @override
  State<Lockroom> createState() => _LockroomState();
}

class _LockroomState extends State<Lockroom> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffcfe8f1),
      body: Stack(
        children: [
          Positioned(
            left: -100,
            top: -80,
            child: Container(
              height: 470,
              width: 500,
              decoration: BoxDecoration(
                  color: Color(0xffc2dee8),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(1, 1)),
                  ]),
            ),
          ),
          Positioned(
            right: -30,
            top: -60,
            child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xffb0d0da).withOpacity(0.5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(1, 1)),
                  ],
                )),
          ),
          Positioned(
            child: Image.asset("assets/sli.png"),
            top: 40,
            left: 230,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Hello",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Text(
                    "Become a Tutor",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFieldModel(
                    name: "First Name",
                    controller: controller1,
                  ),
                  TextFieldModel(
                    name: "Age",
                    controller: controller2,
                  ),
                  Text(
                    "Age",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    " Email Id / Phone Number",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select the Institution",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                        border: InputBorder.none,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Subject",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Experience",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        color: Colors.white,
                        child: Container(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              fillColor: Colors.white,
                              hintText: "Select class",
                              filled: true,
                              suffixIcon: Icon(Icons.keyboard_arrow_down),
                              border: InputBorder.none,
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blueAccent, width: 3),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black87, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 500,
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blueAccent, width: 3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Upload Institution Id",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 190,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: Color(0xff1e81b0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Browse",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Id number",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black87, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 500,
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blueAccent, width: 3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Upload Aadhaar Id",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 190,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            color: Color(0xff1e81b0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Browse",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 250,
                      child: Center(child: Text("Continue")),
                      decoration: BoxDecoration(
                          color: Color(0xff1e81b0),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
