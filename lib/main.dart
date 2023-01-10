import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Column(
            children: [
              Text('The question!'),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 3'),
              )
            ],
          )),
    );
  }
}
