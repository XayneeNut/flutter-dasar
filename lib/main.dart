import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStateFirstApp();
  }
}

class _MyStateFirstApp extends State<FirstApp> {
  var _questionIndex = 0;

  void _quest() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex > 2) {
        _questionIndex = _questionIndex - 3;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'apa kamu orang indonesia?',
        'answer': ['ya', 'tidak', 'tidak tau']
      },
      {
        'questionText': 'berapa umur mu? ',
        'answer': ['0 - 10', '11-20', '21 - 30', 'other']
      },
      {
        'questionText': 'apa kamu programmer?',
        'answer': ['ya', 'tidak', 'tidak tau', 'menuju']
      },
    ];

    var homeText = 'Hello!!';
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(homeText),
            titleTextStyle: const TextStyle(color: Colors.black),
            backgroundColor: Colors.amber,
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'] as String,
              ),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(_quest, answer);
              }).toList()
            ],
          )),
    );
  }
}
