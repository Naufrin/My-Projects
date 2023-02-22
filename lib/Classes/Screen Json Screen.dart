import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Jonsscreen extends StatefulWidget {
  const Jonsscreen({Key? key}) : super(key: key);

  @override
  State<Jonsscreen> createState() => _JonsscreenState();
}

class _JonsscreenState extends State<Jonsscreen> {
  List _items = [];
  Future<void> readJson() async {
    final String responce = await rootBundle.loadString("assets/example.json");
    final data = await json.decode(responce);
    setState(() {
      _items = data["items"];
      print(_items);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Json screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          _items.isNotEmpty
              ? Expanded(
            child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Card(
                    key: ValueKey(_items[index]["id"]),
                    margin: const EdgeInsets.all(10),
                    color: Colors.amber.shade100,
                    child: ListTile(
                      leading: Text(_items[index]["id"]),
                      title: Text(_items[index]["name"]),
                      subtitle: Text(_items[index]["description"]),
                    ),
                  );
                }),
          )
              : Container()
        ]),
      ),
    );
  }
}
