import 'package:flutter/material.dart';

class Constscreen extends StatefulWidget {
  const Constscreen({Key? key}) : super(key: key);

  @override
  State<Constscreen> createState() => _ConstscreenState();
}

class _ConstscreenState extends State<Constscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
              child: Text(
                'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 100, maxWidth: 100),
              child: Text(
                'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
              child: Text(
                'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
              child: Text(
                'Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN!',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ConstrainedBox(
            constraints: BoxConstraints.expand(height: 100, width: 100),
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,),
            ConstrainedBox(constraints: BoxConstraints(maxHeight: 100,maxWidth: 100),
            child: Text(
              "hello helo hjelo helo helo helo",style:TextStyle(fontSize:15),
            ),),
            SizedBox(height: 10,
            ),
          ConstrainedBox(
            constraints: BoxConstraints.expand(height: 400, width: 400),
            child: Image.asset("assets/demon1.jpg")),
          ],
        ),
      ),
    ));
  }
}
