import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'DetailsFirebaseTwo.dart';

class DetailFirebaseScreen extends StatefulWidget {
  const DetailFirebaseScreen({Key? key}) : super(key: key);

  @override
  State<DetailFirebaseScreen> createState() => _DetailFirebaseScreenState();
}

class _DetailFirebaseScreenState extends State<DetailFirebaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddedData()));
        },
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Details").snapshots(),
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  var templist = [];
                  templist = snapshot.data!.docs[index]['list'];
                  return Container(
                    color: Colors.yellowAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(snapshot.data!.docs[index]['n']),
                        Text(snapshot.data!.docs[index]['a']),
                        Text(snapshot.data!.docs[index]['p']),
                        Text(snapshot.data!.docs[index]['e']),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: templist.length,
                            itemBuilder: (BuildContext context, int listindex) {
                              return Text(templist[listindex]);
                            })
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
