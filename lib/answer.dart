import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      margin: EdgeInsets.all(30),
      child: RaisedButton(
        child: Text("Answer 1"),
        textColor: Colors.white,
        color: Colors.black,
        onPressed: selectHandler,
      ),
    );
  }
}
