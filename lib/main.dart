import 'package:flutter/material.dart';
import 'package:fluttertestapp/answer.dart';
import './question.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('answer question');
  }
  // overrideアノテーションは無くても正常に動作するが、上書きしていることを明示的に示すために記載
  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('MY FIRST APP'),),
      body: Column(
        children: <Widget>[
          Question(
            questions[_questionIndex]['questionText']
          ),
          // childrenがList型だからMapからListに変換する必要がある
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}