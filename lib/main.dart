import 'package:flutter/material.dart';
import 'package:fluttertestapp/result.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3},
      ]
    },
    {
      'questionText': 'Waht\'s your favorite animals?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rabbit', 'score': 3},
      ]
    },
    {
      'questionText': 'Waht\'s your favorite country?',
      'answers': [
        {'text': 'Japan', 'score': 10},
        {'text': 'America', 'score': 5},
        {'text': 'Italy', 'score': 3},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {

      _totalScore += score;

      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }
  // overrideアノテーションは無くても正常に動作するが、上書きしていることを明示的に示すために記載
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('MY FIRST APP'),),
      body: _questionIndex < _questions.length
        ? Quiz(
          questions: _questions,
          questionIndex: _questionIndex,
          answerQuestion: _answerQuestion,
        )
      : Result(_totalScore, _resetQuiz)
    ));
  }
}