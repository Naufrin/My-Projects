import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddedData extends StatefulWidget {
  const AddedData({Key? key}) : super(key: key);

  @override
  State<AddedData> createState() => _AddedDataState();
}

class _AddedDataState extends State<AddedData> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController listcontroller = TextEditingController();
  var list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "Add Data",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: namecontroller,
          ),
          TextField(
            controller: agecontroller,
          ),
          TextField(
            controller: phonecontroller,
          ),
          TextField(
            controller: emailcontroller,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                child: TextField(
                  controller: listcontroller,
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (listcontroller.text.isNotEmpty) {
                      list.add(listcontroller.text);
                      listcontroller.clear();
                      setState(() {});
                    }
                  },
                  child: Text("Add"))
            ],
          ),
          list.isEmpty
              ? Container()
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(list[index]);
                  }),
          ElevatedButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection("Details")
                    .doc()
                    .set({
                  "n": namecontroller.text,
                  "a": agecontroller.text,
                  "p": phonecontroller.text,
                  "e": emailcontroller.text,
                  'list': list,
                }).then((value) => Navigator.pop(context));
              },
              child: Text("Add Data"))
        ],
      ),
    );
  }
}
