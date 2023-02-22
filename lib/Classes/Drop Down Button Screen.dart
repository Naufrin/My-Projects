//DropDownMenu

import 'package:flutter/material.dart';

class Buttonsclass extends StatefulWidget {
  const Buttonsclass({Key? key}) : super(key: key);

  @override
  _ButtonsclassState createState() => _ButtonsclassState();
}

class _ButtonsclassState extends State<Buttonsclass> {
  // String dropdownvalue = "jan";
  late FocusNode focus = FocusNode()
    ..addListener(() {
      setState(() {});
    });
  String? dropdownvalue;
  var items = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,backgroundImage: AssetImage("assets/img.JPG"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('NAUFAl',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: const Text('Image'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: const Text('Email'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: focus.hasFocus ? Colors.white : Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Button Screen",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            focus.hasFocus
                ? Text(
                    "welcome",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  )
                : Text(
                    "select",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  ),
            DropdownButton(
              disabledHint: Text("Hello"),
              isDense: false,
              // elevation: 20,
              alignment: Alignment.center,
              iconSize: 30,
              underline: Text(""),
              borderRadius: BorderRadius.circular(20),
              // focusColor: Colors.green,
              focusNode: focus,
              // focusColor: dropdownvalue == 'jan'
              //     ? Colors.red
              //     : dropdownvalue == 'feb'
              //         ? Colors.green
              //         : Colors.yellow,
              // autofocus: true,
              hint: Text(("Select Month")),
              dropdownColor: Colors.white,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              itemHeight: 50,
              // menuMaxHeight: 100,
              // isExpanded: true,
              iconEnabledColor: Colors.black,
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Center(child: Text(items)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                  print(newValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
