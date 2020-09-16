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
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "YOUTUBE CHANNEL",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}

//Subscribe
