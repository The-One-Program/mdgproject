import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _state = false;

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      _state = !_state;
      print("Hello");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: _state ? Colors.black : Colors.red,
          height: 400,
          width: 500,
        ),
        Container(
          color: _state ? Colors.red : Colors.black,
          height: 400,
          width: 500,
        ),
      ]),
    );
  }
}
