import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../My Project/My Project 10 Screen.dart';



class Tabbarpagescreen extends StatefulWidget {
  const Tabbarpagescreen({Key? key}) : super(key: key);

  @override
  State<Tabbarpagescreen> createState() => _TabbarpagescreenState();
}

class _TabbarpagescreenState extends State<Tabbarpagescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              dragStartBehavior: DragStartBehavior.down,
              indicator: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.greenAccent),
              tabs: [
                Tab(
                  icon: Icon(Icons.flight),
                  // text: "Icon Buttons",
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  // text: "Text Buttons",
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                  // text: "Elevated Button",
                ),
              ],
            ),
            title: Center(child: Text("Tab bar")),
          ),
          body: TabBarView(
            children: [
              Lockroom(),
            ],
          ),
        ));
  }
}
