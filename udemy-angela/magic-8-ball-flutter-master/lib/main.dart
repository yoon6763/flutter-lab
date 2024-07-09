import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
