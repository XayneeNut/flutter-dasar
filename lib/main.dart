import 'package:flutter/material.dart';

import './question.dart';

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
    var question = [
      'how old are you?',
      'do you like me?',
      'are you programmer?'
    ];

    var choose = ['elevated 1', 'elevated 2', 'elevated 3'];
    var homeText = 'Hello!!';
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(homeText),
          ),
          body: Column(
            children: [
              Question(question[_questionIndex]),
              ElevatedButton(onPressed: _quest, child: const Text('answer')),
              ElevatedButton(onPressed: _quest, child: const Text('answer 2')),
              ElevatedButton(
                  onPressed: () {
                    print(choose[2]);
                  },
                  child: const Text('answer 3')),
            ],
          )),
    );
  }
}
