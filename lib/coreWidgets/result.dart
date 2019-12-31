import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restart;
  Result({@required this.restart});

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
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(60),
            child: RaisedButton(
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