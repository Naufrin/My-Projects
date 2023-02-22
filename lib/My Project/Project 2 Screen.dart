//Categories food

import 'package:flutter/material.dart';

import 'Project 3 Screen.dart';

class CategoriesFood extends StatefulWidget {
  const CategoriesFood({Key? key}) : super(key: key);

  @override
  State<CategoriesFood> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  List gridename = [
    [
      "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX47940915.jpg",
      "Vegetables",
      "Fresh greenie broccoli",
      "199 ",
      "129 ",
      "30% OFF",

    ],
    [
      "https://2.wlimg.com/product_images/bc-full/2020/8/7626556/fresh-natural-orange-1597139578-5550402.jpeg",
      "Fruits",
      "Fresh oranges directly from farm",
      "150 ",
      "110 ",
      "20% OFF",

    ],
    [
      "https://tajinny.com/media/recipes/2159/1603/preparations/preparation10795.jpg",
      "Bread",
      "Ovalle brownish wheat bread",
      "109 ",
      "59 ",
      "50% OFF",

    ],
    [
      "https://p1.pxfuel.com/preview/987/666/510/chocolate-sweets-confectionery-dark.jpg",
      "Sweets",
      "Dark chocolates sweets",
      "300 ",
      "240 ",
      "25% OFF",

    ],
    [
      "https://th.bing.com/th/id/OIP.nMvCZ5Gofd0YrGzXFFsw8AHaE8?pid=ImgDet&rs=1",
      "Pasta",
      "Creamy fresh pastas",
      "109 ",
      "59 ",
      "50% OFF",

    ],
    [
      "https://cdn.travelversed.co/travelversed/wp-content/uploads/2017/03/Feature-5-800x450.jpg",
      "Drinks",
      "Hot beverages",
      "109 ",
      "59 ",
      "50% OFF",

    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextFormField(
                cursorHeight: 25,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 5,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search_rounded,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                  //  icon: Icon(Icons.search_rounded),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
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
              height: 750,
              width: 340,
              //  color: Colors.cyan,
              child: GridView.builder(
                  itemCount: gridename.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 3.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),

                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Veggies(gridname:    gridename[index][1],)));
                      },
                      child: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset.zero,
                              blurRadius: 0.7,
                              spreadRadius: 0.7,
                            ),
                          ],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                // color: Colors.cyan
                                image: DecorationImage(
                                    image: NetworkImage(gridename[index][0]),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                            Container(
                              height: 28,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Container(
                                      //  color: Colors.red,
                                      width: 125,
                                      child: Text(
                                        gridename[index][1],
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 38,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 0, right: 20),
                                    height: 15,
                                    width: 130,
                                    //  color: Colors.cyan,
                                    child: Text(
                                      gridename[index][2],
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 30),
                                    height: 23,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10)),
                                      //   color: Colors.cyan
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: RichText(
                                          text: TextSpan(children: [
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.currency_rupee,
                                                size: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: gridename[index][3],
                                              style: TextStyle(
                                                  color: Colors.grey.shade500,
                                                  fontSize: 13,
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.currency_rupee,
                                                size: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: gridename[index][4],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: gridename[index][5],
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ]),
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
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
