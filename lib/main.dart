import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blue,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void changeBall() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              changeBall();
            });
          },
        ),
      ],
    );
  }
}
