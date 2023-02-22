import 'package:flutter/material.dart';

class Found extends StatefulWidget {
  const Found({Key? key}) : super(key: key);

  @override
  State<Found> createState() => _FoundState();
}

class _FoundState extends State<Found> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/demon1.jpg'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              FittedBox(fit: BoxFit.fill,
              child: Text("Hello world"),
              ),
              Text("Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN"),
              FittedBox(
                fit: BoxFit.fill,
                child:
                  Text("Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN"),
              ),
              FittedBox(
                fit:BoxFit.fill,
                child: Image.network("https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM="),
              ),
                Container(
                  height: 200,
                  width: 200,
                  child: Image.network("https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM="),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/demon1.jpg'),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg")),

            ],
          ),
        ),
      ),
    );
  }
}
