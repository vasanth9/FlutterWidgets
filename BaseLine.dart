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
        appBar: AppBar(
          title: Text("BaseLine"),
        ),
        body: Center(
          child: Row(
            children: [
              Text(
                "Youtube",
                style: TextStyle(fontSize: 60, color: Colors.blue),
              ),
              //baseline to align texts in a row
              Baseline(
                //it should have
                baseline: -100,
                baselineType: TextBaseline.alphabetic,
                //highest widget top height as base line
                child: Text(
                  "Google",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Baseline(
                //it should have
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  "Flutter",
                  style: TextStyle(fontSize: 40, color: Colors.orange),
                ),
              )
            ],
          ),
        ));
  }
}

//Subscribe???
