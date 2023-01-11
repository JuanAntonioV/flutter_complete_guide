import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < 2) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      setState(() {
        _questionIndex = 0;
      });
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite game?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
            ],
          )),
    );
  }
}
