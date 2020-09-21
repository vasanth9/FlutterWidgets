import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Center"),
      ),
      body: Container(
        color: Colors.teal,
        height: 200,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.red,
            child: Text("How are you"),
          ),
        ),
      ),
    );
  }
}

//Subscribe
