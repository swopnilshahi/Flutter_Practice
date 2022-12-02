import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void ansewerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questionList = [
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: const Text(' क ख ग घ ङ च छ ज झ ञ'),
              backgroundColor: Colors.green),
          body: Column(children: [
            Question(questionList[_questionIndex]['questionText'] as String),
            // ...questionList[_questionIndex]['answers'] as List<String>.map((answer){
            //   return Answer(ansewerQuestion,answer);
            // }).toList(),
            ...(questionList[_questionIndex]['answers']as List<String>).map((answer) {
              return Answer(ansewerQuestion, answer);
            }).toList()
          ]),
        ));
  }
}
