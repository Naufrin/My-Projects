//Gridview.builder
import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {

  List gridList = [
    Container(color: Colors.red, child: Center(child: Text("One"))),
    Container(color: Colors.blue, child: Center(child: Text("One"))),
    Container(color: Colors.green, child: Center(child: Text("One"))),
    Container(color: Colors.yellow, child: Center(child: Text("One"))),
    Container(color: Colors.white, child: Center(child: Text("One"))),
    Container(color: Colors.indigo, child: Center(child: Text("One"))),
    Container(color: Colors.purpleAccent, child: Center(child: Text("One"))),
    Container(color: Colors.orange, child: Center(child: Text("One"))),
    Container(color: Colors.brown, child: Center(child: Text("One"))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder"),
      ),
      body: GridView.builder(
          itemCount: gridList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return gridList[index];
            // return Container(
            //     color: getRandomColor(),
            //     child: Center(child: Text("Number ${index}")));
          }),
    );
  }
}
