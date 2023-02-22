import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PDFUploader extends StatefulWidget {
  @override
  _PDFUploaderState createState() => _PDFUploaderState();
}

class _PDFUploaderState extends State<PDFUploader> {
  File? _selectedFile;
  bool _uploading = false;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
      });
    }
  }

  Future<void> _uploadFile() async {
    if (_selectedFile == null) return;

    setState(() {
      _uploading = true;
    });

    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child('pdf_files/${_selectedFile!.path}');

    UploadTask task = ref.putFile(_selectedFile!);
    task.snapshotEvents.listen((TaskSnapshot snapshot) {
      print(
          'Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
    });

    try {
      await task.whenComplete(() {
        print('PDF file uploaded successfully');
        setState(() {
          _selectedFile = null;
          _uploading = false;
        });
      });
    } on FirebaseException catch (e) {
      print('Failed to upload PDF file: $e');
      setState(() {
        _uploading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text(
            'PDF Uploader',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_selectedFile == null) Text('NO FILES SELECTED'),
              if (_selectedFile != null) Text(_selectedFile!.path),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickFile,
                child: Text('SELECT PDF FILE'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _uploading ? null : _uploadFile,
                  child: _uploading
                      ? CircularProgressIndicator()
                      : Text('UPLOAD PDF FILE'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
