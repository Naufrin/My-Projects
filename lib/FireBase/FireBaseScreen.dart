import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'StreamBuilderScreen.dart';

class FirebaseScreen extends StatefulWidget {
  const FirebaseScreen({Key? key}) : super(key: key);

  @override
  State<FirebaseScreen> createState() => _FirebaseScreenState();
}

class _FirebaseScreenState extends State<FirebaseScreen> {
  TextEditingController title = TextEditingController();
  TextEditingController subtitile = TextEditingController();
  var todo = [];
  bool? load;

  Future<void> getData() async {
    load = true;
    todo.clear();
    var glength = await FirebaseFirestore.instance.collection("Profile").get();
    print(glength.docs.length);
    for (int i = 0; i < glength.docs.length; i++) {
      print(glength.docs[i].id);
      var gdata = await FirebaseFirestore.instance
          .collection("Profile")
          .doc(glength.docs[i].id)
          .get();
      todo.add({
        "title": gdata['Username'],
        "description": gdata['Password'],
        "doc_id": glength.docs[i].id
      });
      print(todo);
    }
    setState(() {});
    load = false;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todo.clear();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          centerTitle: true,
          title: Text(
            "Upload Id",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StreamBuilderScreen(),
                      ));
                },
                icon: Icon(
                  Icons.pages,
                  color: Colors.black,
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showMyDialog();
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: todo.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  trailing: Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                TextEditingController editcontroller1 =
                                    TextEditingController(
                                        text: todo[index]['title']);
                                TextEditingController editcontroller2 =
                                    TextEditingController(
                                        text: todo[index]['description']);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Edit List'),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          controller: editcontroller1,
                                        ),
                                        TextField(
                                          controller: editcontroller2,
                                        ),
                                        ElevatedButton(
                                            onPressed: () async {
                                              await FirebaseFirestore.instance
                                                  .collection("Profile")
                                                  .doc(todo[index]['doc_id'])
                                                  .update({
                                                "Password":
                                                    editcontroller2.text,
                                                "Username":
                                                    editcontroller1.text,
                                              }).then((value) {
                                                Navigator.pop(context);
                                                getData();
                                              });
                                            },
                                            child: Text("Add Data"))
                                      ],
                                    ),
                                  ),
                                );
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Center(
                                            child: const Text('Caution')),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      getData();
                                                    },
                                                    child: Text("Cancel")),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () async {
                                                      await FirebaseFirestore
                                                          .instance
                                                          .collection("Profile")
                                                          .doc(todo[index]
                                                              ['doc_id'])
                                                          .delete()
                                                          .then((value) {
                                                        Navigator.pop(context);
                                                        getData();
                                                      });
                                                    },
                                                    child: Text("Delete Data")),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      )),
                  leading: Text(todo[index]['title']),
                  title: Text(
                    todo[index]['description'],
                  ),
                ),
              );
            }),
      ),
    );
  }

  void showMyDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(14),
            content: Container(
              height: 150,
              child: Column(
                children: [
                  TextFormField(
                    controller: title,
                    decoration: InputDecoration(hintText: "Title"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: subtitile,
                    decoration: InputDecoration(hintText: "Subtitle"),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection('Profile')
                      .doc(title.text.trim())
                      .set({
                    "Username": title.text,
                    "Password": subtitile.text
                  }).then(
                    (value) {
                      print("uploaded");
                      title.clear();
                      subtitile.clear();
                      Navigator.pop(context);
                      getData();
                    },
                  );
                },
                child: Text("save"),
              )
            ],
          );
        });
  }
}
