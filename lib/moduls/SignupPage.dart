import 'package:flutter/material.dart';

class Selectpersonscreen extends StatefulWidget {
  const Selectpersonscreen({Key? key}) : super(key: key);

  @override
  State<Selectpersonscreen> createState() => _SelectpersonscreenState();
}

class _SelectpersonscreenState extends State<Selectpersonscreen> {
  List gridlist = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.white,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.black26,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "NETFLIX",
            style: TextStyle(
              color: Color(0xffe20513),
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined))
          ],
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Who's Watching?",
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    itemCount: gridlist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return gridlist[index];
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
