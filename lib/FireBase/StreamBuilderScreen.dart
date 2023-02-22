import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  State<StreamBuilderScreen> createState() => _StreamBuilderScreenState();
}

String search = "";

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        title: TextField(
          decoration: InputDecoration(
              suffix: IconButton(
            onPressed: () {
              setState(() {
                controller.clear();
              });
            },
            icon: Icon(
              Icons.clear,
              color: Colors.black,
            ),
          )),
          controller: controller,
          onChanged: (v) {
            setState(() {});
          },
        ),
      ),
      body: controller.text.isEmpty
          ? Container()
          : StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection("Profile").snapshots(),
              builder: (context, snapshot) {
                // print(snapshot.data!.docs.length);


                return snapshot.data?.docs.length ==  null ? Container(): ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (snapshot.data!.docs[index]['Username']
                          .toString()
                          .toLowerCase()
                          .contains(controller.text.toLowerCase())) {
                        return ListTile(
                          title: Text(snapshot.data!.docs[index]['Username']),
                          subtitle:
                              Text(snapshot.data!.docs[index]['Password']),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      TextEditingController editcontroller1 =
                                          TextEditingController(
                                              text: snapshot.data!.docs[index]
                                                  ['Username']);
                                      TextEditingController editcontroller2 =
                                          TextEditingController(
                                              text: snapshot.data!.docs[index]
                                                  ['Password']);
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Text('Edit'),
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
                                                    DateTime time =
                                                        DateTime.now();
                                                    await FirebaseFirestore
                                                        .instance
                                                        .collection("Profile")
                                                        .doc(snapshot.data!
                                                            .docs[index].id)
                                                        .update({
                                                      "Password":
                                                          editcontroller2.text,
                                                      "Username":
                                                          editcontroller1.text,
                                                      "DateTime":
                                                          "${time.day} - ${time.month} - ${time.year}"
                                                    }).then((value) =>
                                                            Navigator.pop(
                                                                context));
                                                  },
                                                  child: Text("Save Data"))
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () async {
                                      await FirebaseFirestore.instance
                                          .collection("Profile")
                                          .doc(snapshot.data!.docs[index].id)
                                          .delete();
                                    },
                                    icon: Icon(Icons.delete)),
                              ],
                            ),
                          ),
                        );
                      }
                      return Container();
                    });
              }),
    );
  }
}
