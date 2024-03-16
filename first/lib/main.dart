import 'package:flutter/material.dart';
import 'package:first/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: GradientContainer(
          colors: [
            Colors.green,
            Colors.blue,
          ],
        ),
      ),
    ),
  );
}
