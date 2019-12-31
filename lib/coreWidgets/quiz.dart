import 'package:flutter/material.dart';

import './../widgets/question.dart';
import './../widgets/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeredQuestion;
  final Function restart;
  Quiz(
      {@required this.questions,
      @required this.answeredQuestion,
      @required this.questionIndex,
      @required this.restart});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["question"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map(
          (answer) {
            return Answer(() => answeredQuestion(answer["score"]), answer["text"]);
          },
        ).toList(),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(60),
          child: RaisedButton(
            child: Text("Restart"),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: restart,
          ),
        ),
      ],
    );
  }
}
