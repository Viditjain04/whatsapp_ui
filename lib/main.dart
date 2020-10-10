import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'MyHomePage.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      home: MyHomePage(cameras),
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff250366),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
