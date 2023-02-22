import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class SixthApiPage extends StatefulWidget {
  const SixthApiPage({Key? key}) : super(key: key);

  @override
  State<SixthApiPage> createState() => _SixthApiPageState();
}

class _SixthApiPageState extends State<SixthApiPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "SpaceCrafts...",
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<String>(
          future: newapi(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              var body = json.decode(data!);
              var count = body["spacecrafts"].length;
              print(data);
              print(count);

              return Container(
                child: ListView.builder(
                    itemCount: count,
                    itemBuilder: (BuildContext context, int index) {
                      String id = body["spacecrafts"][index]["id"].toString();
                      String namae =
                          body["spacecrafts"][index]["name"].toString();

                      return Container(
                        margin: EdgeInsets.all(17),
                        padding: EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset.zero,
                                color: Colors.orangeAccent,
                                blurRadius: 5,
                                spreadRadius: 7,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: ("Id : "),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                  TextSpan(
                                      text: ("${id}"),
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic)),
                                ])),
                            SizedBox(
                              height: 1,
                              child: Container(
                                height: 1,
                                width: 350,
                                color: Colors.red,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: ("Name : "),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                  TextSpan(
                                      text: ("${namae}"),
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic)),
                                ])),
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
          },
        ),
      ),
    );
  }
}

Future<String> newapi() async {
  Uri url = Uri.parse("https://isro.vercel.app/api/spacecrafts");
  print(url.toString());
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body.toString());
  }
  return response.body;
}
