
import 'package:flutter/material.dart';

import 'Project 4 Screen.dart';

class Veggies extends StatefulWidget {
  Veggies({
    Key? key,
    required this.gridname,
  }) : super(key: key);
  String gridname;

  @override
  State<Veggies> createState() => _VeggiesState();
}

class _VeggiesState extends State<Veggies> {
  List food = [
    [
      "https://th.bing.com/th/id/OIP.TZlhBdpbEgkyfwVx0zs08gHaE8?pid=ImgDet&rs=1",
      "Boston Lettuce",
      "60",
      " /piece",
      "Spain",
      "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
    ],
    [
      "https://th.bing.com/th/id/R.dbb00313b24dd574c34ab91832375a21?rik=tvLVR%2fT2sVgbaQ&riu=http%3a%2f%2fgardeningwithcharlie.com%2fwp-content%2fuploads%2f2012%2f01%2fCarrot-001_2.jpg&ehk=sPoCLfJZZaX2h7pC4watbBNe11qsjESkbsmj%2bM3jcF0%3d&risl=&pid=ImgRaw&r=0",
      "Purple Cauliflower",
      "85",
      " /kg",
      "Spain",
      "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
    ],
    [
      "https://th.bing.com/th/id/OIP.d8zwAjLpCM3SLRQ_UGg-KwHaEK?pid=ImgDet&rs=1",
      "Savoy Cabbage",
      "45",
      " /kg",
      "Spain",
      "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
    ],
    [
      "https://i.pinimg.com/originals/37/cc/03/37cc03f26f8b33bc7c013b142bc93984.jpg",
      "Purple Cauliflower",
      "85",
      " /kg",
      "Spain",
      "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -150,
              left: 120,
              child: Transform.rotate(
                angle: 150,
                child: Image(
                  image: AssetImage("assets/brobros.png"),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 90,
                    width: 390,
                    child: AppBar(

                      centerTitle: true,
                      title: Text(
                        widget.gridname,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextFormField(
                      cursorHeight: 25,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.search_rounded,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "search",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    //  color: Colors.grey,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Chip(
                              shadowColor: Colors.black,
                              elevation: 5,
                              avatar: Icon(
                                Icons.check,
                                color: Colors.black,
                              ),
                              label: Text("Cabbage and lettuce (14)"),
                              backgroundColor: Color(0xffe1ccff),
                            ),
                          ),
                          Chip(
                            shadowColor: Colors.black,
                            elevation: 3,
                            //  avatar: Icon(Icons.check,color: Colors.black,),
                            label: Text("Cucumbers and tomatos (9)"),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    //  color: Colors.grey,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Chip(
                              shadowColor: Colors.black,
                              elevation: 5,
                              //  avatar: Icon(Icons.check,color: Colors.black,),
                              label: Text("Onion and garlic (8)"),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Chip(
                            shadowColor: Colors.black,
                            elevation: 5,
                            //  avatar: Icon(Icons.check,color: Colors.black,),
                            label: Text("Peppers (7)"),
                            backgroundColor: Colors.white,
                          ),
                          Chip(
                            shadowColor: Colors.black,
                            elevation: 5,
                            //  avatar: Icon(Icons.check,color: Colors.black,),
                            label: Text("Potatos and carrot (13)"),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Container(
                    height: 520,
                    width: 350,
                    //  color: Colors.grey.shade200,
                    child: ListView.builder(
                      itemCount: food.length,
                      itemBuilder: (
                        BuildContext context,
                        int index,
                      ) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lettuce(
                                          name: food[index],
                                        )));
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 120,
                            width: 340,
                            //  color: Colors.cyanAccent,
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset.zero,
                                        blurRadius: 0.5,
                                        spreadRadius: 0.7,
                                      ),
                                    ],
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    //  color: Colors.purpleAccent
                                    image: DecorationImage(
                                      image: NetworkImage(food[index][0]),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 180,
                                  // color: Colors.grey,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 180,
                                        // color: Colors.pinkAccent,
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              height: 23,
                                              width: 180,
                                              //  color: Colors.yellow,
                                              child: Text(
                                                food[index][1],
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, right: 100),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    WidgetSpan(
                                                        child: Icon(
                                                      Icons.currency_rupee,
                                                      size: 13,
                                                      color: Colors.black,
                                                    )),
                                                    TextSpan(
                                                        text: food[index][2],
                                                        style: TextStyle(
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black)),
                                                    TextSpan(
                                                        text: food[index][3],
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 13))
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        height: 40,
                                        width: 160,
                                        // color: Colors.yellow,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.green,
                                                      offset: Offset.zero,
                                                      spreadRadius: 0.3,
                                                      blurRadius: 0.3,
                                                    ),
                                                  ]),
                                              child: Icon(
                                                Icons.favorite_border,
                                                color: Colors.green.shade200,
                                                size: 19,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.rectangle,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.green.shade400,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.green,
                                                      offset: Offset.zero,
                                                      spreadRadius: 0.3,
                                                      blurRadius: 0.3,
                                                    ),
                                                  ]),
                                              child: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.white,
                                                size: 19,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
