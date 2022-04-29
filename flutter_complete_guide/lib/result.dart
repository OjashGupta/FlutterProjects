import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You\'re pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are..... strange?#&6!';
    } else {
      resultText = 'You are so baddd!';
    }
    return resultText;
  }

  Result(this.resultScore,this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart Quiz!'),
          textColor: Colors.blue,)
        ],
      ),
    );
  }
}
