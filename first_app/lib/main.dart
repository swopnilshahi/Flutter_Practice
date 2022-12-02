import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _ansewerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  static const _questionList = [
    {
      'questionText': 'What\'s your favourate color ?',
      'answers': ['Blue', 'Red', 'Yellow', 'Green'],
    },
    {
      'questionText': 'What\'s your name ?',
      'answers': ['Swopnil', 'Swopnil Shahi', 'Yellow', 'Green'],
    },
    {
      'questionText': 'What\'s your favourate movie ?',
      'answers': ['Blue', 'jay Nepal', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favourate city ?',
      'answers': ['achham', 'kathmandu', 'Yellow', 'Green'],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: const Text(' क ख ग घ ङ च छ ज झ ञ'),
                backgroundColor: Colors.green),
            body: _questionIndex < _questionList.length
                ? Quiz(
                    questionList: _questionList,
                    questionIndex: _questionIndex,
                    ansewerQuestion: _ansewerQuestion)
                : Result()));
  }
}
