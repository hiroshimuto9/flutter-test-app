import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print('answer question');
  }
  // overrideアノテーションは無くても正常に動作するが、上書きしていることを明示的に示すために記載
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite color?',
      'Waht\'s your favorite animals?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('MY FIRST APP'),),
      body: Column(children: <Widget>[
        Text(
          questions[questionIndex]
        ),
        RaisedButton(
          child: Text('Answer 1'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Answer 2'),
          onPressed: () => print('Answer 2 chosen!'),
        ),
        RaisedButton(
          child: Text('Answer 3'),
          onPressed: answerQuestion,
        ),
      ],),
    ));
  }
}