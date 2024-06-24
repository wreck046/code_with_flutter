import 'package:flutter/material.dart';
import 'package:code_with_flutter/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: GradientContainer(
            [Colors.deepOrange, Colors.orangeAccent, Colors.deepOrangeAccent]),
      ),
    ),
  ); //runApp is a method, and MaterialApp is a constructor
}
