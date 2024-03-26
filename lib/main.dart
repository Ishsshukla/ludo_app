import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:first_application/gradient_container.dart';

void main() {
  runApp(
  const  MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              colors: [Colors.deepPurple, Color.fromARGB(255, 164, 124, 233)])),
    ),
  );
}
