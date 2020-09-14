import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Mystfullwid(),
    );
  }
}

class Mystfullwid extends StatefulWidget {
  @override
  _MystfullwidState createState() => _MystfullwidState();
}

class _MystfullwidState extends State<Mystfullwid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Backdrop filter"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text("0" * 10000),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: FlutterLogo(size: 150),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Subscribe
