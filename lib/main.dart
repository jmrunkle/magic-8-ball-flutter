import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Magic8BallPage()));

class Magic8BallPage extends StatefulWidget {
  @override
  _Magic8BallPageState createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber = 1;
  static var random = Random.secure();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () => setState(() {
            ballNumber = shakeBall();
          }),
        ),
      ),
    );
  }

  int shakeBall() => random.nextInt(5) + 1;
}
