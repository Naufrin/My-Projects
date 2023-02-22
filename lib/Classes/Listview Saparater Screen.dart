//Listview.separator

import 'package:flutter/material.dart';

class ListviewSeperatorScreen extends StatefulWidget {
  const ListviewSeperatorScreen({Key? key}) : super(key: key);

  @override
  State<ListviewSeperatorScreen> createState() =>
      _ListviewSeperatorScreenState();
}

class _ListviewSeperatorScreenState extends State<ListviewSeperatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.Separator"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'List Item $index',
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if(index %2 == 0){
            return Card(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'SeparatorOne $index',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }
          return Container();
        },
        itemCount: 20,
      ),
    );
  }
}

