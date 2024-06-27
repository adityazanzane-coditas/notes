import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 190, 115, 203),
        body: GradientContainer(
             Color.fromARGB(255, 224, 16, 16),  
             Color.fromARGB(26, 23, 249, 242),
            ),
      ),
    ),
  );
}
