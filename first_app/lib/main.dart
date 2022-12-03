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
  var _totalScore = 0;

  void resetApp(){
    setState(() {
       _questionIndex = 0;
       _totalScore = 0;

    });
  }
  void _ansewerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  static const _questionList = [
    {
      'questionText': 'What\'s your favourate color ?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 1},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Green', 'score': 6}
      ],
    },
    {
      'questionText': 'What\'s your name ?',
      'answers': [
        {'text': 'Swopnil', 'score': 4},
        {'text': 'SwopnilShahi', 'score': 4},
        {'text': 'Yellow', 'score': 4},
        {'text': 'Green', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourate movie ?',
      'answers': [
        {'text': 'Blue', 'score': 4},
        {'text': 'jayNepal', 'score': 4},
        {'text': 'Yellow', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favourate city ?',
      'answers': [
        {'text': 'achham', 'score': 23},
        {'text': 'kathmandu', 'score': 5},
        {'text': 'Yellow', 'score': 6},
        {'text': 'Green', 'score': 5}
      ],
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
                : Result(_totalScore,resetApp)));
  }
}
