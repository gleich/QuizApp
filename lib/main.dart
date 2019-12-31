import "package:flutter/material.dart";

import './coreWidgets/quiz.dart';
import './coreWidgets/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // State for MyApp class
  var _questionIndex = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      "question": "What is your favorite color?",
      "answers": [
        {"text": "🔴 Red 🔴", "score": 5},
        {"text": "🟢 Green 🟢", "score": 5},
        {"text": "🔵 Blue 🔵", "score": 10}
      ]
    },
    {
      "question": "What is your favorite animal?",
      "answers": [
        {"text": "🐶 Dog 🐶", "score": 0},
        {"text": "😺 Cat 😺", "score": 5},
        {"text": "🦝 Racoon 🦝", "score": 10}
      ]
    },
    {
      "question": "What is Matt's Age?",
      "answers": [
        {"text": "🎂 15 🎂", "score": 10},
        {"text": "🎂 16 🎂", "score": 5},
        {"text": "🎂 20 🎂", "score": -5}
      ]
    }
  ];

  void _answeredQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    }); // Change state of MyApp Widget
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("✏️    Quiz App    ✏️"),
            backgroundColor: Colors.black,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answeredQuestion: _answeredQuestion,
                  questionIndex: _questionIndex,
                  restart: _restart,
                )
              : Result(
                  restart: _restart,
                  score: _totalScore,
                )),
    );
  }
}
