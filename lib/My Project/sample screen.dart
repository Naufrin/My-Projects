//Text Widget detailed
import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Colors.red, Colors.blue, Colors.green, Colors.limeAccent,Colors.yellow,Colors.deepPurple,Colors.tealAccent],
    ).createShader(Rect.fromLTWH(50.0, 10.0,  MediaQuery.of(context).size.height * 1, MediaQuery.of(context).size.width * 1));
    final Shader linearGradient1 = LinearGradient(
      colors: <Color>[Colors.red, Colors.blue, Colors.green, Colors.limeAccent,Colors.yellow,Colors.deepPurple,Colors.tealAccent],
    ).createShader(Rect.fromLTWH(100.0, 0.0, 200.0, 70.0));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Text Widget"),
            Container(
                height: 100,
                width: 200,
                color: Colors.grey,
                child: Text("Text Widget", textAlign: TextAlign.left)),
            Text(
              "textScaleFactor: 2",
              textScaleFactor: 2,
            ),
            Text(
              "textScaleFactor: 4",
              textScaleFactor: 4,
            ),
            Container(
                height: 50,
                width: 50,
                child: Text(
                  "All 'partly filled' icons are removed due to single colour restriction for .ttf fonts. This includes partly-filled battery icons and not-full-strength wifi/reception icons.",
                  overflow: TextOverflow.clip,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 50,
                width: 50,
                child: Text(
                  "All 'partly filled' icons are removed due to single colour restriction for .ttf fonts. This includes partly-filled battery icons and not-full-strength wifi/reception icons.",
                  overflow: TextOverflow.ellipsis,
                )),
            Container(
                height: 50,
                width: 50,
                child: Text(
                  "All 'partly filled' icons are removed due to single colour restriction for .ttf fonts. This includes partly-filled battery icons and not-full-strength wifi/reception icons.",
                  overflow: TextOverflow.fade,
                  softWrap: false,
                )),
            Text(
                "All 'partly filled' icons are removed due to single colour restriction for .ttf fonts. This includes partly-filled battery icons and not-full-strength wifi/reception icons and not-full-strength .",
                maxLines: 3),
            Text(
              "color: Colors.red",
              style: TextStyle(color: Colors.red),
            ),
            Text(
              "fontSize: 20",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "fontSize: 10",
              style: TextStyle(fontSize: 10),
            ),
            Text(
              "backgroundColor: Colors.lightBlueAccent",
              style: TextStyle(backgroundColor: Colors.lightBlueAccent),
            ),
            Text(
              "fontWeight: FontWeight.bold",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "fontWeight: FontWeight.w100",
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            Text(
              "fontWeight: FontWeight.w700",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(
              "All 'partly filled' icons are removed due to single colour restriction for .ttf fonts. This includes partly-filled battery icons and not-full-strength wifi/reception icons and not-full-strength .",
              style: TextStyle(height: 5),
            ),
            Text(
              "All 'partly filled' icons are removed due to single colour restriction for .ttf fonts. This includes partly-filled battery icons and not-full-strength wifi/reception icons and not-full-strength .",
              style: TextStyle(height: 1),
            ),
            Text(
              "letterSpacing: 3",
              style: TextStyle(letterSpacing: 3),
            ),
            Text(
              "letterSpacing: 5",
              style: TextStyle(letterSpacing: 5),
            ),
            Text(
              "wordSpacing: 1, Hii Hello",
              style: TextStyle(wordSpacing: 1),
            ),
            Text(
              "wordSpacing: 5, Hii Hello",
              style: TextStyle(wordSpacing: 5),
            ),
            Text(
              "fontStyle: FontStyle.italic",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            Text(
              "decoration: TextDecoration.none",
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              "decoration: TextDecoration.underline",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            Text(
              "decoration: TextDecoration.lineThrough",
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
            Text(
              "decoration: TextDecoration.overline",
              style:
              TextStyle(decoration: TextDecoration.overline, fontSize: 20),
            ),
            Text(
              "decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dashed,",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
            Text(
              "decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid,",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Text(
              "decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dotted,",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontSize: 20),
            ),
            Text(
              "decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.double,",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                fontSize: 20,
                decorationColor: Colors.red,
                decorationThickness: 1,
              ),
            ),
            Text(
              "decoration: TextDecoration.underline, decorationColor: Colors.red,",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
              ),
            ),
            Text(
              "decoration: TextDecoration.underline, decorationColor: Colors.red,",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "BackGround Property",
              style: TextStyle(
                background: Paint()
                  ..color = Colors.blue
                  ..strokeJoin = StrokeJoin.round
                  ..strokeCap = StrokeCap.round
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 30.0,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Colors.red
                  ..strokeWidth = 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Foreground Property",
              style: TextStyle(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Colors.blue
                  ..strokeWidth = 2,
              ),
            ),
            Text(
              "Shadows Shadow",
              style: TextStyle(
                color: Colors.green,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.blue,
                  ),
                  Shadow(
                    offset: Offset(8.0, 8.0),
                    blurRadius: 3.0,
                    color: Colors.red,
                  ),
                  Shadow(
                    offset: Offset(15.0, 15.0),
                    blurRadius: 3.0,
                    color: Colors.orange,
                  ),
                ],
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Gradients Text Widget Gradients Text Widget',
              style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Gradients Text Widget',
              style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()..shader = linearGradient1),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

