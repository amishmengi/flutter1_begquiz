import 'package:flutter/material.dart';
import 'package:myapp/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What is your fav color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your fav animal?',
      'answers': ['Rabbit', 'Tiger', 'Lion', 'Rat'],
    },
    {
      'questionText': 'What is your fav x?',
      'answers': ['B', 'r', 'G', 'W'],
    },
  ];

  void answerQuestion() {
    if (questionIndex < questions.length) {
      print('we have more questions');
    }
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Bolteee'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(),
      ),
    );
  }
}
