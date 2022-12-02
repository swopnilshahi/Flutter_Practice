import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
   Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
