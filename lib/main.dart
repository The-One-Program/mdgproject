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
  // int x = 0;

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      setState(() {
        _state = !_state;
        // print("Hello");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            color: _state ? Colors.cyan[300] : Colors.red[400],
          ),
        ),
        Container(
          color: Colors.white,
          height: 2,
        ),
        Container(
          color: Colors.black, //Not needed
          height: 100,
          child: Row(children: [
            Expanded(
              child: Container(
                color: _state ? Colors.amber : Colors.black,
              ),
            ),
            Expanded(
              child: Container(
                color: _state ? Colors.black : Colors.amber,
                height: 100,
                child: Icon(
                  Icons.accessibility,
                  color: _state ? Colors.pink : Colors.deepPurple[600],
                ),
              ),
            ),
            Container(
              color: _state ? Colors.white : Colors.pink,
              width: 2,
            ),
            Expanded(
              child: Container(
                color: _state ? Colors.black : Colors.amber,
                height: 100,
                child: Icon(
                  Icons.accessibility,
                  color: _state ? Colors.deepPurple[600] : Colors.pink,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: _state ? Colors.amber : Colors.black,
              ),
            )
          ]),
        ),
        Container(
          color: Colors.white,
          height: 2,
        ),
        Expanded(
          child: Container(
            color: _state ? Colors.red[400] : Colors.cyan[300],
          ),
        ),
      ]),
    );
  }
}
