import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class FifthApiPage extends StatefulWidget {
  const FifthApiPage({Key? key}) : super(key: key);

  @override
  State<FifthApiPage> createState() => _FifthApiPageState();
}

class _FifthApiPageState extends State<FifthApiPage> {
  bool yes = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Data..."),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder<String>(
          future: newapi(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              var body = json.decode(data!);
              var count = body["entries"].length;
              print(data);
              print(count);

              return Container(
                child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      String api = body["entries"][index]["API"].toString();
                      String description =
                      body["entries"][index]["Description"].toString();
                      String auth = body["entries"][index]["Auth"].toString();
                      String https = body["entries"][index]["HTTPS"].toString();
                      String cors = body["entries"][index]["Cors"].toString();
                      String link = body["entries"][index]["Link"].toString();
                      String category =
                      body["entries"][index]["Category"].toString();

                      return Container(
                        margin: EdgeInsets.all(17),
                        padding: EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                blurRadius: 10,
                                offset: Offset.zero,
                                spreadRadius: 1
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ("Api : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: ("${api}"),
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ("Description : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: ("${description}"),
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ("Auth : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: ("${auth}"),
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ("HTTPS : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: ("${https}"),
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic)),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ("Cors : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: ("${cors}"),
                                        style: TextStyle(
                                            fontSize: 19,
                                            color:  cors == yes? Colors.red : Colors.green,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic)),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            InkWell(
                              onTap: () async{
                                await launchUrl(
                                    Uri.parse(link)
                                );
                              },
                              child: RichText(
                                text: TextSpan(
                                    text: ("Link : "),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: ("${link}"),
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic)),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ("Category: "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: ("${category}"),
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                          ],
                        ),
                      );
                    }),
              );
            } else if (snapshot.hasError) {
              return Text("Error + ${snapshot.hasError}");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

Future<String> newapi() async {
  Uri url = Uri.parse("https://api.publicapis.org/entries");
  print(url.toString());
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body.toString());
  }
  return response.body;
}