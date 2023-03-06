//GridView
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:4,

            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            // mainAxisExtent: 10,
            childAspectRatio:5/2
        ),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        reverse: true,
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Container(color: Colors.red, child: Center(child: Text("One"))),
          Container(color: Colors.blue, child: Center(child: Text("One"))),
          Container(color: Colors.green, child: Center(child: Text("One"))),
          Container(color: Colors.yellow, child: Center(child: Text("One"))),
          Container(color: Colors.white, child: Center(child: Text("One"))),
          Container(color: Colors.indigo, child: Center(child: Text("One"))),
          Container(
              color: Colors.purpleAccent, child: Center(child: Text("One"))),
          Container(color: Colors.orange, child: Center(child: Text("One"))),
          Container(color: Colors.brown, child: Center(child: Text("One"))),
        ],
      ),
    );
  }
}
