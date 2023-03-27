import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPharse {
    var resultText = 'You did it';
    var yourText = 'your score is';

    if (resultScore <= 10) {
      resultText = '$yourText $resultScore\n maybe try again later';
    } else if (resultScore <= 20) {
      resultText = '$yourText $resultScore\n you are good';
    } else if (resultScore <= 30) {
      resultText = '$yourText $resultScore\n you are awesome';
    } else {
      resultText = 'you are strange';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPharse,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
