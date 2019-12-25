import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Runs our app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hello!"), // Home defines the main widget that will apear on the screen
    );
  }
}
