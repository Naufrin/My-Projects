//TextFormField

import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Password';
                      }
                      return null;
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("validated");
                        }
                      },
                      child: Text("Submit")),
                  Text("TextFormField :label: Text('username'),"),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Icon(Icons.add), //Widgets
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" floatingLabelBehavior: FloatingLabelBehavior.always,"),
                  Container(margin: EdgeInsets.only(left: 50,right: 50),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password", //String
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" floatingLabelBehavior: FloatingLabelBehavior.never,"),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password", //String
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("  filled: true, fillColor: Colors.purpleAccent,"),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purpleAccent,
                      labelText: "Password", //String
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("  filled: true, fillColor: Colors.purpleAccent,"),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purpleAccent,
                      hoverColor: Colors.blue.shade100,
                      labelText: "Password", //String
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" helperText: eg.Jhon Wick,"),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      helperText: "I'm Helper Text",
                      fillColor: Colors.purpleAccent,
                      labelText: "Password", //String
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" helperText: eg.Jhon Wick,"),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      counterText: "eg: 9432XXXXX, don't add 91",
                      fillColor: Colors.purpleAccent,
                      labelText: "Mobile Number", //String
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" helperText: eg.Jhon Wick,"),
                  TextFormField(
                    decoration: InputDecoration(

                      hintStyle: TextStyle(),
                      counter: Icon(Icons.adb),
                      fillColor: Colors.purpleAccent,
                      labelText: "Password", //String
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.blue,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isCollapsed: false,
                        hintText: 'Container',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(

                    color: Colors.blue,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isCollapsed: true,
                        hintText: 'Container',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
