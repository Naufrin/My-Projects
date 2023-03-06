//GridView.count
import 'package:flutter/material.dart';

class GridviewCountScreen extends StatefulWidget {
  const GridviewCountScreen({Key? key}) : super(key: key);

  @override
  State<GridviewCountScreen> createState() => _GridviewCountScreenState();
}

class _GridviewCountScreenState extends State<GridviewCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'GridView.count',
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(200, (index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/33044/sunflower-sun-summer-yellow.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
              ),
              child: Text(index.toString()),
            ),
          );
        },),
      ),
    );
  }
}
