import 'package:flutter/material.dart';

class CarBrandsHomeScreen extends StatefulWidget {
  const CarBrandsHomeScreen({Key? key}) : super(key: key);

  @override
  State<CarBrandsHomeScreen> createState() => _CarBrandsHomeScreenState();
}

class _CarBrandsHomeScreenState extends State<CarBrandsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 390,
                  // color: Colors.green,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 35),
                        child: Icon(
                          Icons.grid_view_outlined,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Icon(
                          Icons.notifications,
                          size: 21,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 75,
                  width: 390,
                  //  color: Colors.green,
                  child: ListTile(
                    title: Text(
                      "Hi Sudhansu!",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text(
                        "Search Your favourite car here..",
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  width: 330,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff8c375),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 170,
                              // color: Colors.blue,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 50),
                                      child: Text(
                                        "Explore Latest",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 5),
                                      child: Text(
                                        "Cars with price",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.grey.shade600),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      print("object");
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 33, top: 15),
                                        child: Text(
                                          "Explore",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 200,
                          width: 180,

                          //  color: Colors.blue,
                          child: Image.asset(
                            "assets/Suv.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 40,
                  width: 350,
                  //  color: Colors.yellowAccent,
                  child: ListTile(
                    leading: Text(
                      "The most searched cars",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        print("object");
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xfff8c375)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 210,
                  width: 330,
                  //  color: Colors.blue,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Hyundai.png",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Hyundai I20",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 50),
                                      child: Text(
                                        "Rs7.03 - 11.54 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Toyota.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Fortuner",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs31.79 - 48.43 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Baleno.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Baleno(Suzuki)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 50),
                                      child: Text(
                                        "Rs6.03 - 8.54 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Tata.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Harrier(TATA)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs14.79 - 21.54 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Thar.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Thar(Mahindra)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs13.58 - 16.27 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //............................................................................//
                Container(
                  height: 40,
                  width: 350,
                  //  color: Colors.yellowAccent,
                  child: ListTile(
                    leading: Text(
                      "Recommended cars for you",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        print("object");
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xfff8c375)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 210,
                  width: 330,
                  //  color: Colors.blue,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Creta.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Hyundai Creta",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs10.44 - 18.24 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Punch.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Punch(TATA)",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs5.99 - 8.93 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/X5.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "BMW X5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs70.03 - 81.54 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/Lexus.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "Lexus NX",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs64.90 - 71.24 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 210,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 170,
                                  //  color: Colors.tealAccent,
                                  child: Image.asset(
                                    "assets/LandRover.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, bottom: 10),
                                      child: Text(
                                        "LandRover",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                    subtitle: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Rs85.58 - 98.27 Lakh*",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_filled,
                color: Colors.grey.shade500,
              )),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              )),
          BottomNavigationBarItem(
              label: "Like",
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.grey.shade500,
              )),
          BottomNavigationBarItem(
              label: "Shave",
              icon: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.grey.shade500,
              )),
        ],
      ),
    );
  }
}