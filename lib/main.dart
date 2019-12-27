import "package:flutter/material.dart";

import "./question.dart";

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
          title: Text("✏️    Quiz App    ✏️",),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
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
            ),
            RaisedButton(
              child: Text("Restart"),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  _questionIndex = 0;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
