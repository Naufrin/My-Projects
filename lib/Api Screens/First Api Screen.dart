import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

class FrirstApiscreen extends StatefulWidget {
  const FrirstApiscreen({Key? key}) : super(key: key);

  @override
  State<FrirstApiscreen> createState() => _FrirstApiscreenState();
}

class _FrirstApiscreenState extends State<FrirstApiscreen> {
  Map detail = {};
  Future<void> fetchAlbum() async {
    final response =
        await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
    if (response.statusCode == 200) {
      setState(() {
        detail = jsonDecode(response.body);
        print(detail);
      });
    } else {
      throw Exception("Failed To Load The Images ");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchAlbum();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images Of Dogs",style: TextStyle(color: Colors.black,fontFamily: "poppins",fontWeight: FontWeight.bold),),centerTitle: true,
      ),
      body: detail.isNotEmpty
          ?ListView.builder(itemCount:detail.length,itemBuilder: (BuildContext context,int index){
            return Column(
              children: [Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(image:DecorationImage(image: NetworkImage(detail["message"])),),
              ),Text("Status")
              ],
            );
      }
      ):Center(child: CircularProgressIndicator(),)
    );
  }
}
