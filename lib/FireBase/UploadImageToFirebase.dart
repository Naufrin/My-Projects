import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class UploadImagescreen extends StatefulWidget {
  const UploadImagescreen({Key? key}) : super(key: key);

  @override
  State<UploadImagescreen> createState() => _UploadImagescreenState();
}

class _UploadImagescreenState extends State<UploadImagescreen> {
  var list = [];

  Future<void> getImage() async {
    await FirebaseFirestore.instance
        .collection("Images")
        .doc("Image")
        .get()
        .then((value) {
      setState(() {
        list = value['ImageList'];
        print(list);
      });
    });
    setState(() {});
  }

  String aadharFilePath = "";
  File? imageAadhar;
  String aadhar = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: Text("upload pictures"),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  await pickAadharImage();
                },
                icon: Icon(Icons.add),
              ),
              aadhar.isEmpty ? Container() : Image.network(aadhar),
              IconButton(
                onPressed: () async {
                  await FirebaseFirestore.instance
                      .collection("Images")
                      .doc("Image")
                      .set({
                    'ImageList': FieldValue.arrayUnion([aadhar])
                  }, SetOptions(merge: true)).then((value) => getImage());
                  setState(() {
                    aadhar = "";
                  });
                },
                icon: Icon(Icons.save),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(list[index]);
                  })
            ],
          ),
        ),
      ),
    );
  }

  Future pickAadharImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemp = File(image.path);
      print("imageTemp ====? ${imageTemp}");
      aadharFilePath = basename(imageTemp.path);
      print("aadharFilePath ====? ${aadharFilePath}");
      setState(() => this.imageAadhar = imageTemp);
      final storageRef = FirebaseStorage.instance.ref();
      final mountainImagesRef =
          storageRef.child("AdminAadharImage/$aadharFilePath");
      await mountainImagesRef.putFile(imageTemp);
      String aadharurl = await mountainImagesRef.getDownloadURL();
      print(aadharurl);
      setState(() {
        aadhar = aadharurl;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}
