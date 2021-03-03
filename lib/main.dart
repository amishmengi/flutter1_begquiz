import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Bolteee'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText']
              ),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) =>
            Answer(answerQuestion,answer)
            ).toList(),
          ],
        ),
      ),
    );
  }
}
