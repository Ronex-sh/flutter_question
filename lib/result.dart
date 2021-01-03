import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);
  String get resultPh {
    var resultText;
    if (resultScore <= 4) {
      resultText = 'you are awsome';
    } else if (resultScore <= 6) {
      resultText = 'you are awsome2';
    } else {
      resultText = 'you are awsome3';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultPh),
        ),
        FlatButton(onPressed: resetQuiz, child: Text('reset'))
      ],
    );
  }
}
