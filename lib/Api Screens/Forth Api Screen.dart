import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class FourthApiPage extends StatefulWidget {
  const FourthApiPage({Key? key}) : super(key: key);

  @override
  State<FourthApiPage> createState() => _FourthApiPageState();
}

class _FourthApiPageState extends State<FourthApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Nation Data..."),
      ),
      body: FutureBuilder<String>(
        future: newapi(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            var body = json.decode(data!);
            var count = body["data"].length;
            var count2 = body["source"].length;
            print(data);
            print(count);
            print(count2);

            return Container(
              child: ListView.builder(
                  itemCount: count,
                  itemBuilder: (BuildContext context, int index) {
                    String idNation =
                        body["data"][index]["ID Nation"].toString();
                    String nation = body["data"][index]["Nation"].toString();
                    String idYear = body["data"][index]["ID Year"].toString();
                    String year = body["data"][index]["Year"].toString();
                    String population =
                        body["data"][index]["Population"].toString();
                    String slugNation =
                        body["data"][index]["Slug Nation"].toString();

                    return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 7, bottom: 7),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ("Id Nation : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: ("${idNation}"),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic)),
                              ])),
                          SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ("Nation : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: ("${nation}"),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic)),
                              ])),
                          SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ("Id Year : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: ("${idYear}"),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic)),
                              ])),
                          SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ("Year : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: ("${year}"),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic)),
                              ])),
                          SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ("Population : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: ("${population}"),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic)),
                              ])),
                          SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: ("Slug Nation : "),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                TextSpan(
                                    text: ("${slugNation}"),
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
    );
  }
}

Future<String> newapi() async {
  Uri url = Uri.parse(
      "https://datausa.io/api/data?drilldowns=Nation&measures=Population");
  print(url.toString());
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body.toString());
  }
  return response.body;
}
