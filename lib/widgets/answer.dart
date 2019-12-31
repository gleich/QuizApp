import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      margin: EdgeInsets.all(30),
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.black,
        onPressed: selectHandler,
      ),
    );
  }
}
