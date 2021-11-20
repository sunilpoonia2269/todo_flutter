import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'Note_list.dart';

class MyAppSplash extends StatefulWidget {
  @override
  _MyAppSplashState createState() => new _MyAppSplashState();
}

class _MyAppSplashState extends State<MyAppSplash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 2,
        navigateAfterSeconds: NoteList(),
        title: new Text(
          'SR Software Solution',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image(
          image: AssetImage("images/react.png"),
          height: 200.0,
          width: 200.0,
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
}
