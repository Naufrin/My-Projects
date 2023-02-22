
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:video_player/video_player.dart';
import '../My Project/Samplesecond.dart';
class VideoUpload extends StatefulWidget {
  const VideoUpload({Key? key}) : super(key: key);

  @override
  State<VideoUpload> createState() => _VideoUploadState();
}

class _VideoUploadState extends State<VideoUpload> {
  String name = "";
  String id = "";
  UploadTask? task;
  String downloadUrl = "";
  String filePath = "";
  File? file;

  double progress = 0.0;
  VideoPlayerController? _videoPlayerController;
  bool loading = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            shadows: [
              Shadow(
                color: Colors.black,
              )
            ],
          ),
        ),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        title: Text(
          "Upload video",
          style: TextStyle(color: Colors.white, shadows: [
            Shadow(
              color: Colors.black,
              blurRadius: 1,
              offset: Offset(1.0, 1.0),
            )
          ]),
        ),
      ),
      body: Stack(
        children: [
          loading == false
              ? Center(
                  child: Container(
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Image.asset("assets/cloudimage.gif"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              progress.toString() + "%",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                )
              : Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        downloadUrl.isEmpty
                            ? Container()
                            : VideoPlayerClass(downloadUrl),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.yellowAccent,
                            ),
                          ),
                          onPressed: () {
                            selectFileFeed();
                          },
                          child: downloadUrl.isEmpty
                              ? Text(
                                  "Add Video",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              : Text(
                                  "Change Video",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                        ),
                        downloadUrl.isEmpty
                            ? Container()
                            : TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.yellowAccent)),
                                onPressed: () async {},
                                child: Text(
                                  "Upload",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  Future selectFileFeed() async {
    final result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.video);
    loading = false;
    if (result == null) return;
    final path = result.files.single.path!;

    setState(() {
      file = File(path);
    });
    uploadFileFeed(context);
  }

  Future uploadFileFeed(context) async {
    if (file == null) return;

    filePath = basename(file!.path);

    final destination = 'files/$filePath';

    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});

    if (task == null) return;

    task!.snapshotEvents.listen((event) {
      setState(() {
        progress =
            ((event.bytesTransferred.toDouble() / event.totalBytes.toDouble()) *
                    100)
                .roundToDouble();

        if (progress == 100) {
          setState(() {});

          print('uploaded');
        }

        print('loading${progress}');
      });
    });
    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    setState(() {
      downloadUrl = urlDownload;
      loading = true;
    });
    print('Download-Link: $urlDownload');
    print('Download-Url: $downloadUrl');
  }
}

class VideoPlayerClass extends StatefulWidget {
  String videoUrl;

  VideoPlayerClass(
    this.videoUrl,
  );

  @override
  State<VideoPlayerClass> createState() => _VideoPlayerClassState();
}

class _VideoPlayerClassState extends State<VideoPlayerClass> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.videoUrl,
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        });
      },
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
