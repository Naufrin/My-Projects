import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScecondApiScreen extends StatefulWidget {
  const ScecondApiScreen({Key? key}) : super(key: key);

  @override
  State<ScecondApiScreen> createState() => _ScecondApiScreenState();
}

class _ScecondApiScreenState extends State<ScecondApiScreen> {
  Map jokes = {};
  Future<void> fetchAlbum() async {
    final response = await http
        .get(Uri.parse("https://official-joke-api.appspot.com/random_joke"));
    if (response.statusCode == 200) {
      setState(() {
        jokes = jsonDecode(response.body);
        print(jokes);
      });
    } else {
      throw Exception("The Jokes Are not Loading");
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
        title: Text("Random Jokes"),
      ),
      body: Center(
        child: Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.indigo.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: jokes.isNotEmpty
                ? ListView(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Center(child: Text(jokes["type"])),
                      SizedBox(
                        height: 20,
                      ),
                      Center(child: Text(jokes["setup"])),
                      SizedBox(
                        height: 20,
                      ),
                      Center(child: Text(jokes["punchline"])),
                      SizedBox(
                        height: 20,
                      ),
                      Center(child: Text(jokes["id"].toString())),
                    ],
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )),
      ),
    );
  }
}
