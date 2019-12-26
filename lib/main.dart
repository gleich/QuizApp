import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answeredQuestion() {
    questionIndex = questionIndex + 1;
    // print("Question index:" + questionIndex.toString());
    print("Answered Question");
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answeredQuestion, // Pass name of function
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answeredQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answeredQuestion,
            )
          ],
        ),
      ),
    );
  }
}
