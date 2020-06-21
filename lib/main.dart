import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // overrideアノテーションは無くても正常に動作するが、上書きしていることを明示的に示すために記載
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello'));
  }
}