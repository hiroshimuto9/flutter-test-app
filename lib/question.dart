
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // 位置引数
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}