import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class ThirdApiScreen extends StatefulWidget {
  const ThirdApiScreen({Key? key}) : super(key: key);

  @override
  State<ThirdApiScreen> createState() => _ThirdApiScreenState();
}

class _ThirdApiScreenState extends State<ThirdApiScreen> {
  Map activities = {};
  Future<void> fetchAlbum() async {
    final responce =
        await http.get(Uri.parse("https://www.boredapi.com/api/activity"));

    if (responce.statusCode == 200) {
      setState(() {
        activities = jsonDecode(responce.body);
        print(activities);
      });
    } else {
      throw Exception("Error....404");
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
        title: Text("........."),
        centerTitle: true,
      ),
      body: activities.isNotEmpty
          ? ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type ${activities['type']}",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        "Participants ${activities['participants']}",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        "Activity ${activities['activity']}",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        "Price ${activities['price']}",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        "Key ${activities['key']}",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        "Accessibility ${activities['accessibility']}",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      InkWell(
                        onTap: () async {
                          await launchUrl(Uri.parse(activities["link"]));
                        },
                        child: Text(
                          "Link: ${activities["link"].toString()}",
                          style: TextStyle(fontSize: 17, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
