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
      home: AnimatedOp(),
    );
  }
}

class AnimatedOp extends StatefulWidget {
  @override
  _AnimatedOpState createState() => _AnimatedOpState();
}

//stateful widget....
class _AnimatedOpState extends State<AnimatedOp> {
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AnimatedOPacity")),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //wrap the child in AnimatedOpacity req=>child,duration,opacity
            AnimatedOpacity(
              opacity: opacity, //create variable
              duration: Duration(seconds: 3),
              //curve can also be given
              curve: Curves.bounceInOut,
              child: Center(
                child: Text(
                  "Mischeif Managed",
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),
            RaisedButton(
                color: Colors.black,
                child: Text(
                  "You Know Who",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                //onpress change the opacity

                onPressed: () {
                  setState(() {
                    opacity = opacity == 0 ? 1.0 : 0.0;
                  });
                })
          ],
        ),
      ),
    );
  }
}
