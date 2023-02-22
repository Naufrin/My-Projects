import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class SeventhApiPage extends StatefulWidget {
  const SeventhApiPage({Key? key}) : super(key: key);

  @override
  State<SeventhApiPage> createState() => _SeventhApiPageState();
}

class _SeventhApiPageState extends State<SeventhApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SpaceCrafts..."),
      ),
      body: FutureBuilder<String>(
        future: newapi(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot){
          if(snapshot.hasData){
            var data = snapshot.data;
            var body = json.decode(data!);
            var count = body["spacecrafts"].length;
            print(data);
            print(count);

            return Container(
              child: ListView.builder(itemCount: count,itemBuilder: (BuildContext context,int index){
                String id = body["spacecrafts"][index]["id"].toString();

                return Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        RichText(text: TextSpan(
                            text: ("Id : "),style: TextStyle(fontSize: 19,color: Colors.blue,fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: ("${id}"),style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
                            ]
                        )),
                      ],
                    ),
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

Future<String> newapi() async{
  Uri url = Uri.parse("https://isro.vercel.app/api/spacecrafts");
  print(url.toString());
  final response = await http.get(url);
  if(response.statusCode == 200){
    print(response.body.toString());
  }
  return response.body;
}