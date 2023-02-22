//Categories BostonLettuce

import 'package:flutter/material.dart';

class Lettuce extends StatefulWidget {
  Lettuce({Key? key,required this.name}) : super(key: key);
  List name;
  @override
  State<Lettuce> createState() => _LettuceState();
}

class _LettuceState extends State<Lettuce> {

  @override
  Widget build(BuildContext context) {
    print(widget.name);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 330,
            width: 390,
            //  color: Colors.green,
            child: Image.network(
              widget.name[0],
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 290,
            ),
            height: 569,
            width: 390,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset.zero,
                      blurRadius: 0.3,
                      spreadRadius: 0.3),
                ]),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 40,
                  //  width: 110,
                  //  color: Colors.green,
                  child: Text(
                    widget.name[1],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 17),
                  height: 30,
                  //  width: 110,
                  //  color: Colors.green,
                  child: RichText(
                    text: TextSpan(
                        text:widget.name[2],
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.currency_rupee_outlined,
                              color: Colors.black,
                              size: 23,
                            ),
                          ),
                          TextSpan(
                              text: widget.name[3],
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500))
                        ]),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 20,
                  // color: Colors.grey,
                  child: Text(
                    "~150 gr / piece",
                    style:
                    TextStyle(fontSize: 12, color: Colors.green.shade500),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 25,
                  child: Text(
                    widget.name[4],
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: Text(
                    widget.name[5],
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 15,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  //  color: Colors.grey,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 17),
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
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
                          color: Colors.green.shade500,
                          size: 23,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green.shade400,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.green,
                                offset: Offset.zero,
                                spreadRadius: 0.3,
                                blurRadius: 0.3,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60,top: 7),
                          child: RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                    size: 23,
                                  )),
                              TextSpan(
                                  text: "  ADD TO CART",
                                  style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w400)
                              ),
                            ]),
                          ),
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
    );
  }
}
