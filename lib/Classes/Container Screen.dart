import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
                color: Colors.red,
                child: Center(
                  child: Text("SizedBox"),
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            height: 300, width: 300,
            // margin: EdgeInsets.all(10),
            // padding:  EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 50, top: 50),
            padding: EdgeInsets.only(left: 50, top: 50),
            // alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                // color: Colors.white,
                shape: BoxShape.rectangle,
                // gradient: LinearGradient(colors: [
                //   Colors.red,
                //   Colors.blue,
                //   Colors.green,
                //   Colors.yellow,
                //   Colors.brown,
                //   Colors.black,
                //   Colors.purpleAccent,
                // ],begin: Alignment.topLeft,end: Alignment.bottomRight),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"),
                    fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      spreadRadius: 55,
                      blurRadius: 10,
                      offset: Offset(10, 1)),
                  BoxShadow(
                      color: Colors.purpleAccent,
                      spreadRadius: 45,
                      blurRadius: 10,
                      offset: Offset(5, 5)),
                  BoxShadow(
                      color: Colors.indigoAccent,
                      spreadRadius: 35,
                      blurRadius: 10,
                      offset: Offset(10, 10)),
                ]),
            child: Text("Hello World"),
          ),
        ],
      ),
    );
  }
}
