import 'package:flutter/material.dart';

class Selectpersonscreen extends StatefulWidget {
  const Selectpersonscreen({Key? key}) : super(key: key);

  @override
  State<Selectpersonscreen> createState() => _SelectpersonscreenState();
}

class _SelectpersonscreenState extends State<Selectpersonscreen> {
  List gridlist = [
    Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.add_circle_outline_sharp),
      color: Colors.white,
      iconSize: 40,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Add Profile"),
                      content: Container(
                        height: 200,
                        width: 200,
                        color: Colors.white,child: Center(child: Text("hello"),),
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.edit_outlined))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Who's Watching?",
              style: TextStyle(color: Colors.white54, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(60),
              height: 380,
              child: GridView.builder(
                  itemCount: gridlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 90,
                      childAspectRatio: 10 / 10,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return gridlist[index];
                  }),
              decoration: BoxDecoration(color: Colors.black26),
            )
          ],
        ),
      ),
    );
  }
}
