import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDie;
  int rightDie;
  void rollDie() {
    setState(() {
      leftDie = Random().nextInt(6) + 1;
      rightDie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.orange.shade200,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () => rollDie(),
                  child: Image.asset('images/dice$leftDie.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => rollDie(),
                  child: Image.asset('images/dice$rightDie.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
