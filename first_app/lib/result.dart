import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultPhase {
    var resultText;
    if (resultScore <= 5) {
      resultText = 'You are good';
    } else if (resultScore <= 10) {
      resultText = 'Your are very good';
    } else {
      resultText = 'You are very very good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(resultPhase)),
        FlatButton(onPressed: resetHandler, child: Text("restart app"))
      ],
    );
  }
}
