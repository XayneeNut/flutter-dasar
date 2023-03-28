import 'package:flutter/material.dart';
import 'package:flutter_question_app/quiz.dart';
import 'package:flutter_question_app/result.dart';

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
  var _totalScore = 0;

  final _questions = [
    {
      'questionText':
          'Saya suka menolong teman-teman saya, bila mereka berada dalam kesulitan',
      'answer': [
        {'text': 'sangat setuju', 'score': 5},
        {'text': 'setuju', 'score': 4},
        {'text': 'kurang setuju', 'score': 3},
        {'text': 'tidak setuju', 'score': 2},
        {'text': 'sangat tidak setuju', 'score': 1},
      ]  
    },
    {
      'questionText': 'Saya akan melakukan pekerjaan apa saja sebaik mungkin',
      'answer': [
        {'text': 'sangat setuju', 'score': 5},
        {'text': 'setuju', 'score': 4},
        {'text': 'kurang setuju', 'score': 3},
        {'text': 'tidak setuju', 'score': 2},
        {'text': 'sangat tidak setuju', 'score': 1},
      ]
    },
    {
      'questionText':
          'Saya akan mengetahui bagaimana pandangan orang-orang besar mengenai berbagai masalah yang menarik perhatian saya',
      'answer': [
        {'text': 'sangat setuju', 'score': 5},
        {'text': 'setuju', 'score': 4},
        {'text': 'kurang setuju', 'score': 3},
        {'text': 'tidak setuju', 'score': 2},
        {'text': 'sangat tidak setuju', 'score': 1},
      ]
    },
    {
      'questionText': 'Saya suka menjadi pusat perhatian dalam suatu kelompok',
      'answer': [
        {'text': 'sangat setuju', 'score': 5},
        {'text': 'setuju', 'score': 4},
        {'text': 'kurang setuju', 'score': 3},
        {'text': 'tidak setuju', 'score': 2},
        {'text': 'sangat tidak setuju', 'score': 1},
      ]
    },
    {
      'questionText':
          'Saya suka mengecam orang-orang yang mempunyai kedudukan sebagai yang berwenang',
      'answer': [
        {'text': 'sangat setuju', 'score': 5},
        {'text': 'setuju', 'score': 4},
        {'text': 'kurang setuju', 'score': 3},
        {'text': 'tidak setuju', 'score': 2},
        {'text': 'sangat tidak setuju', 'score': 1},
      ]
    },
    {
      'questionText':
          'Saya akan mengetahui bagaimana pandangan orang-orang besar mengenai berbagai masalah yang menarik perhatian saya',
      'answer': [
        {'text': 'sangat setuju', 'score': 5},
        {'text': 'setuju', 'score': 4},
        {'text': 'kurang setuju', 'score': 3},
        {'text': 'tidak setuju', 'score': 2},
        {'text': 'sangat tidak setuju', 'score': 1},
      ]
    },
  ];

  void _quest(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('you have more question');
    }
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var homeText = 'Hello!!';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(homeText),
            titleTextStyle: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _quest)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
