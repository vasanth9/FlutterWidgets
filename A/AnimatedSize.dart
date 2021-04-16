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
      home: AnimatedPo(),
    );
  }
}

class AnimatedPo extends StatefulWidget {
  @override
  _AnimatedPoState createState() => _AnimatedPoState();
}

//stateful widget....
class _AnimatedPoState extends State<AnimatedPo>
    with SingleTickerProviderStateMixin {
  double size = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AnimatedSize")),
      ),
      body: GestureDetector(
        // on tap change size
        onTap: () {
          setState(() {
            size = size == 100 ? 250.0 : 100.0;
          });
        },
        child: Center(
          child: Container(
            color: Colors.brown,
            child: AnimatedSize(
              duration: Duration(seconds: 4),
              vsync: this,
              child: FlutterLogo(size: size),
            ),
          ),
        ),
      ),
    );
  }
}
