import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;
  final String answerText;
 Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: RaisedButton(
        color: Colors.blueAccent,
        onPressed: selectHandeler,
        child: Text(answerText,
            style: const TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
