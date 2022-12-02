import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function ansewerQuestion;
  Quiz(
      {required this.questionList,
      required this.questionIndex,
      required this.ansewerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questionList[questionIndex]['questionText'] as String),
      // ...questionList[_questionIndex]['answers'] as List<String>.map((answer){
      //   return Answer(ansewerQuestion,answer);
      // }).toList(),
      // ...(questionList[questionIndex]['answers'] as List<Map<String,Dynami>>).map((answer) {
      //   return Answer(() => ansewerQuestion(int.parse(answer['score'].toString())), answer['text'] as String);
      // }).toList()
      ...(questionList[questionIndex]['answers'] as List<Map<String,dynamic>>).map((answer) {
  return Answer(() => ansewerQuestion(int.parse(answer['score'].toString())), answer['text'].toString());
}).toList(),
    ]);
  }
}
