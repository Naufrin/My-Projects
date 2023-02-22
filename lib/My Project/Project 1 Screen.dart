import 'package:flutter/material.dart';

class Newlisstscreen extends StatefulWidget {
  const Newlisstscreen({Key? key}) : super(key: key);

  @override
  State<Newlisstscreen> createState() => _NewlisstscreenState();
}

class _NewlisstscreenState extends State<Newlisstscreen> {
  List name = [
    [
      "https://th.bing.com/th/id/OIP.WnMzPUeDPVM6qJYGV97ofwHaDX?pid=ImgDet&rs=1",
      "Business & Management",
      "View all Business & Management ",
      " Reviews",
      " Talk to an Export",
    ],[
      "https://th.bing.com/th/id/OIP.ckIc0_wicmbvPsIQ-KiNnQHaE8?pid=ImgDet&rs=1",
      "Creative Arts & Media",
      "View all Creative Arts & Media ",
      " Reviews",
      " Talk to an Export",
    ],
    [
      "https://th.bing.com/th/id/OIP.kPe6IYCWeOGm2gpF86idZwAAAA?pid=ImgDet&w=335&h=250&rs=1",
      "Healthcare & Medicine",
      "View all Healthcare & Medicine ",
      " Reviews",
      " Talk to an Export",
    ],
    [
      "https://th.bing.com/th/id/OIP.tlEEvhl1R3adVYg_FWD5MQHaE8?pid=ImgDet&rs=1",
      "History",
      "View all History Topics ",
      " Reviews",
      " Talk to an Export",
    ],
    [
      "https://www.computersciencedegreehub.com/wp-content/uploads/2020/06/Is-a-Computer-Science-Degree-Worth-It-1024x614.jpg",
      "IT & Computer Science",
      "View all IT & Computer Science ",
      " Reviews",
      " Talk to an Export",
    ],
    [
      "https://th.bing.com/th/id/R.c3e9160b21afd9d2cd295b55029b9d9d?rik=Agm9%2f8LgoJIEgA&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f5%2f4%2f7%2f94192.jpg&ehk=SAHh8i3UyOTAV%2fKHyC8Rcz11RJPFZw4l8mwHKT2hDGU%3d&risl=&pid=ImgRaw&r=0",
      "Engineering & Maths",
      "View all Engineering & Maths ",
      " Reviews",
      " Talk to an Export",
    ],
    [
      "https://th.bing.com/th/id/OIP.-kXcH2MkAoCAyXQHQJsmYQAAAA?pid=ImgDet&rs=1",
      "Law",
      "View all Law Topics ",
      " Reviews",
      " Talk to an Export",
    ]
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
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.all(10),
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset.zero,
                            blurRadius: 0.7,
                            spreadRadius: 0.5),
                      ]),
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
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
                          image: DecorationImage(
                              image: NetworkImage(name[index][0]),
                              fit: BoxFit.fitHeight)),
                    ),
                    Container(
                      // margin: EdgeInsets.only(right: 1),
                        height: 100,
                        width: 250,
                        //  color: Colors.blueAccent,
                        child: Column(children: [
                          Container(
                            //  color: Colors.grey,
                            height: 57,
                            child: ListTile(
                              contentPadding: EdgeInsets.only(left: 10),
                              title: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 5,
                                    child: Text(
                                      name[index][1],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.bookmark_border,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 40,
                            width: 250,
                            //  color: Colors.blueAccent,
                            child: Row(children: [
                              Container(
                                height: 40,
                                width: 90,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xffc2e0e0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                              child: Icon(
                                                Icons.rate_review_outlined,
                                                color: Colors.black,
                                              )),
                                          TextSpan(
                                              text: name[index][3],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 40,
                                width: 145,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(7),
                                    color: Color(0xffc2e0e0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                              child: Icon(
                                                Icons.chat_outlined,
                                                color: Colors.black,
                                              )),
                                          TextSpan(
                                              text: name[index][4],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ]))
                  ]));
            }));
  }
}
