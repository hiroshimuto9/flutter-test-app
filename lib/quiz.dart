import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText']
        ),
        // childrenがList型だからMapからListに変換する必要がある
        ...(questions[questionIndex]['answers'] as List<String>).map((answer){
          return Answer(answerQuestion, answer);
        }).toList()
      ]
    );
  }
}