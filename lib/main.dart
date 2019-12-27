import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> { // State for MyApp class
  var _questionIndex = 0;

  void _answeredQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); // Change state of MyApp Widget
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answeredQuestion, // Pass name of function
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answeredQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answeredQuestion,
            )
          ],
        ),
      ),
    );
  }
}
