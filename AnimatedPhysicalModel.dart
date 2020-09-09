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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedPh(),
    );
  }
}

class AnimatedPh extends StatefulWidget {
  @override
  _AnimatedPhState createState() => _AnimatedPhState();
}

//stateful widget....
class _AnimatedPhState extends State<AnimatedPh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("AnimatedPhysicalModel")),
        ),
        body: Center(
          child: Container(
            //AnimatedPhysicalModel req=>child,BoxShape,elevation,color,shadowColor,Duartion lets begin();
            child: AnimatedPhysicalModel(
                child: Text(
                  "I am Iron Man",
                  style: TextStyle(fontSize: 40, color: Colors.red),
                ),
                shape: BoxShape.rectangle,
                elevation: 500.0,
                curve: Curves.easeIn,
                color: Colors.yellow,
                shadowColor: Colors.purple,
                duration: Duration(seconds: 2)),
          ),
        ));
  }
}
