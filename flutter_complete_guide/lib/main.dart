import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';
//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());
//Another method of writing when there is only function by omitting the curly brackets

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// the _ infront refers to that these are private properties and can be accessed through main dart file
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  final _questions = const [
    // this means that variable questions cannot be overwritten further down the code
    {
      'questionText': 'What\s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 0},
        {'text': 'Red', 'score': 5}
      ]
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 1}
      ]
    },
    {
      'questionText': 'Who\s your favorite person?',
      'answers': [
        {'text': 'Ojash', 'score': 10},
        {'text': 'Ojash', 'score': 10},
        {'text': 'Ojash', 'score': 10},
        {'text': 'Ojash', 'score': 10}
      ]
    }
  ];

  void _answerQuestion(int score) {
    
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('No more QUestions!');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // questions=[]; this will not work if question is const see above ^^
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('First App')),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 8, 223, 72),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
