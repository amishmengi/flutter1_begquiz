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
  var totalscore= 0;

  final questions = const [
    {
      'questionText': 'What is your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'Yellow', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your fav animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Wolf', 'score': 8},
        {'text': 'Dog', 'score': 6},
        {'text': 'Hamster', 'score': 3},
      ],
    },
    {
      'questionText': 'What is your fav x?',
      'answers': [
        {'text': 'A', 'score': 10},
        {'text': 'B', 'score': 8},
        {'text': 'C', 'score': 6},
        {'text': 'D', 'score': 3},
      ],
    },
  ];

  void answerQuestion(int score) {

    totalscore += score;


    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
        if (questionIndex < questions.length) {
      print('we have more questions');
    }else{print('no more questions');}
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
            : Result(totalscore),
      ),
    );
  }
}
