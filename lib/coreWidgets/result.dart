import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restart;
  int score;
  Result({@required this.restart, @required this.score});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Nice Job on Finishing the Quiz!",
            style: TextStyle(
                color: Colors.green,
                decoration: TextDecoration.underline,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Your Score was: " + score.toString() + "/30",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(60),
            child: FlatButton(
              child: Text("Retry Quiz"),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: restart,
            ),
          )
        ],
      ),
    );
  }
}
