import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler,this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromRGBO(255, 193, 7, 1)),
          textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.black)),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
