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
      'answers': ['Red', 'Blue', 'Yellow']
    },
    {
      'questionText': 'Waht\'s your favorite animals?',
      'answers': ['Dog', 'Cat', 'Rabbit']
    },
    {
      'questionText': 'Waht\'s your favorite country?',
      'answers': ['Japan', 'America', 'Italy']
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
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
      : Result()
    ));
  }
}