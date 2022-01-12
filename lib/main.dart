import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(quizzler());

class quizzler extends StatefulWidget {
  @override
  _quizzlerState createState() => _quizzlerState();
}

class _quizzlerState extends State<quizzler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: Scaffold(backgroundColor: Colors.black, body: homepage()),
    );
  }
}
