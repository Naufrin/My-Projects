import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageScreen extends StatefulWidget {
  const CachedNetworkImageScreen({Key? key}) : super(key: key);

  @override
  State<CachedNetworkImageScreen> createState() =>
      _CachedNetworkImageScreenState();
}

class _CachedNetworkImageScreenState extends State<CachedNetworkImageScreen> {
  final _image1 =
      "https://wired.me/wp-content/uploads/2020/01/2020-Corvette-Stingray.jpg";
  final _image2 =
      "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/range-rover-2022-001-tracking-front.jpg?itok=tdFEE1uO";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "Cached Images",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chached Image Screen"),
            SizedBox(
              height: 10,
            ),
            CachedNetworkImage(
              width: double.infinity,
              height: 250,
              fit: BoxFit.fill,
              imageUrl: _image1,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 100,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // This button is used to remove the saved image from the cache directory
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  CachedNetworkImage.evictFromCache(_image1);
                },
                child: const Text(
                  'Remove Cached Images',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),

            const SizedBox(
              height: 10,
            ),
            // Display image without caching
            const Divider(),
            const Text('Network Image'),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              _image2,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
