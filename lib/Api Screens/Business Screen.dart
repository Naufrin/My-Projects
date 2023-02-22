import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class businessscreen extends StatefulWidget {
  const businessscreen({Key? key}) : super(key: key);

  @override
  State<businessscreen> createState() => _businessscreenState();
}

class _businessscreenState extends State<businessscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("business api"),
          centerTitle: true,
        ),
        body: FutureBuilder<String>(
          future: newsapi(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              var body = jsonDecode(data!);
              int? count = body["articles"].length;
              return Center(
                child: ListView.builder(
                    itemCount: count,
                    itemBuilder: (BuildContext context, int index) {
                      String author =
                          body["articles"][index]["author"].toString();               String title =
                          body["articles"][index]["title"].toString();
                      String description =
                          body["articles"][index]["title"].toString();
                      String url = body["articles"][index]["url"].toString();
                      String urlToImage =
                          body["articles"][index]["urlToImage"].toString();
                      String publishedAt =
                          body["articles"][index]["publishedAt"].toString();
                      String content =
                          body["articles"][index]["content"].toString();

                      return Card(
                        elevation: 3,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${author}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              publishedAt.substring(0, 10) + "  ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Image.network(
                              urlToImage,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return const Text('Image is missing');
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailDescription(
                                            title: title,
                                            author: author,
                                            date: publishedAt,
                                            description: description,
                                            urltoImage: urlToImage,
                                            content: content,
                                            url: url)));
                              },
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Read More..." + " ",
                                  style: TextStyle(color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
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
        ));
  }
}

Future<String> newsapi() async {
  Uri url = Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5455fa80820c4bd6afa503449c83146b");
  print(url.toString());
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body.toString());
  }
  return response.body;
}

class DetailDescription extends StatelessWidget {
  DetailDescription(
      {Key? key,
      required this.title,
      required this.author,
      required this.date,
      required this.description,
      required this.urltoImage,
      required this.content,
      required this.url})
      : super(key: key);
  String author;
  String title;
  String description;
  String date;
  String urltoImage;
  String content;
  String url;

  @override
  Widget build(BuildContext context) {
    print("=======================" + urltoImage);
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending  business News"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Title: ${title}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Author: ${author}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Date : ${date.substring(0, 10)}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Description: ${description}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            // ignore: unnecessary_null_comparison

            Image.network(
              urltoImage,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return const Text('Image was Removed');
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Content: ${content}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () async {
                await launchUrl(
                  Uri.parse(url),
                );
              },
              child: Text(
                "Url: ${url}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.blueAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}

businessapi() {}
