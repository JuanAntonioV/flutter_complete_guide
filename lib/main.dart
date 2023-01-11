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
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favorite game?',
        'answers': ['Call Of Duty', 'Mobile Legend', 'PUBG', 'Valorant']
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'] as String,
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) => Answer(_answerQuestion, answer))
                  .toList()
            ],
          )),
    );
  }
}
