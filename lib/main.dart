import 'package:flutter/material.dart';
import 'package:flutter_max/result.dart';

import 'quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // final _questions = const [
  //   {
  //     'questionText': 'What\'s your favorite color?',
  //     'answers': ['Black', 'Red', 'Green', 'White'],
  //   },
  //   {
  //     'questionText': 'What\'s your favorite animal?',
  //     'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
  //   },
  //   {
  //     'questionText': 'Who\'s your favorite instructor?',
  //     'answers': ['Max', 'Max', 'Max', 'Max'],
  //   },
  // ];
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black1', 'score': 1},
        {'text': 'Black2', 'score': 2},
        {'text': 'Black3', 'score': 3},
        {'text': 'Black4', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog1', 'score': 4},
        {'text': 'dog2', 'score': 4},
        {'text': 'dog3', 'score': 4}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'max1', 'score': 4},
        {'text': 'max2', 'score': 4}
      ],
    },
  ];
  // var _questionIndex = 0;
  //
  // void _answerQuestion() {
  //   // var aBool = true;
  //   // aBool = false;
  //
  //   setState(() {
  //     _questionIndex = _questionIndex + 1;
  //   });
  //   print(_questionIndex);
  //   if (_questionIndex < _questions.length) {
  //     print('We have more questions!');
  //   } else {
  //     print('No more questions!');
  //   }
  // }
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
