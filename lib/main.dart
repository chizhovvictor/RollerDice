import 'package:flutter/material.dart';
import 'package:myapp/src/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(colors: [Color.fromARGB(255, 31, 3, 78), Color.fromARGB(255, 37, 1, 99)]),
      ),
    ),
  );
}

