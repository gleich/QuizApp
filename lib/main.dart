import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

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
  static const questions = [
    {
      "question": "What is your favorite color?",
      "answers": ["🔴 Red 🔴", "🟢 Green 🟢", "🔵 Blue 🔵"]
    },
    {
      "question": "What is your favorite animal?",
      "answers": ["🐶 Dog 🐶", "😺 Cat 😺", "🦝 Racoon 🦝"]
    }
  ];

  void _answeredQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); // Change state of MyApp Widget
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "✏️    Quiz App    ✏️",
          ),
          backgroundColor: Colors.black,
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]["question"]),
                  ...(questions[_questionIndex]["answers"] as List<String>).map(
                    (answer) {
                      return Answer(_answeredQuestion, answer);
                    },
                  ).toList(),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(60),
                    child: RaisedButton(
                      child: Text("Restart"),
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(
                          () {
                            _questionIndex = 0;
                          },
                        );
                      },
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(
                  "Nice Job on Finishing the Quiz!",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 20.0,
                    color: Color.fromRGBO(52, 119, 41, 1.0)
                  ),
                )
              ),
      ),
    );
  }
}
