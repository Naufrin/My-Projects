import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class NinthApiPage extends StatefulWidget {
  const NinthApiPage({Key? key}) : super(key: key);

  @override
  State<NinthApiPage> createState() => _NinthApiPageState();
}

class _NinthApiPageState extends State<NinthApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Customer_Satellites",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black),),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<String>(
        future: newapi(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot){
          if(snapshot.hasData){
            var data = snapshot.data;
            var body = json.decode(data!);
            var count = body["customer_satellites"].length;
            print(data);
            print(count);

            return Container(
              child: ListView.builder(itemCount: count,itemBuilder: (BuildContext context,int index){
                String id = body["customer_satellites"][index]["id"].toString();
                String country = body["customer_satellites"][index]["country"].toString();
                String launch = body["customer_satellites"][index]["launch_date"].toString();
                String mass = body["customer_satellites"][index]["mass"].toString();
                String launcher = body["customer_satellites"][index]["launcher"].toString();
                return Container(
                  margin: EdgeInsets.all(17),
                  padding: EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset.zero,
                          color: Colors.lightBlue,
                          blurRadius: 5,
                          spreadRadius: 7,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      RichText(text: TextSpan(
                          text: ("Id : "),style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: ("${id}"),style: TextStyle(fontSize: 19,color: Colors.blueAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                          ]
                      )),
                      SizedBox(
                        height: 1,
                        child: Container(
                          height: 1,
                          width: 350,
                          color: Colors.red,
                        ),
                      ),
                      RichText(text: TextSpan(
                          text: ("Country : "),style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: ("${country}"),style: TextStyle(fontSize: 19,color: Colors.blueAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                          ]
                      )),
                      SizedBox(
                        height: 1,
                        child: Container(
                          height: 1,
                          width: 350,
                          color: Colors.red,
                        ),
                      ),
                      RichText(text: TextSpan(
                          text: ("Launch Date : "),style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: ("${launch}"),style: TextStyle(fontSize: 19,color: Colors.blueAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                          ]
                      )),
                      SizedBox(
                        height: 1,
                        child: Container(
                          height: 1,
                          width: 350,
                          color: Colors.red,
                        ),
                      ),
                      RichText(text: TextSpan(
                          text: ("Mass: "),style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: ("${mass}"),style: TextStyle(fontSize: 19,color: Colors.blueAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                          ]
                      )),
                      SizedBox(
                        height: 1,
                        child: Container(
                          height: 1,
                          width: 350,
                          color: Colors.red,
                        ),
                      ),
                      RichText(text: TextSpan(
                          text: ("Launcher : "),style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: ("${launcher}"),style: TextStyle(fontSize: 19,color: Colors.blueAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                          ]
                      )),
                    ],
                  ),
                );
              }),
            );
          }else if(snapshot.hasError){
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
  Uri url = Uri.parse("https://isro.vercel.app/api/customer_satellites");
  print(url.toString());
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body.toString());
  }
  return response.body;
}