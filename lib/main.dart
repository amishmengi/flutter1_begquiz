import 'package:flutter/material.dart';


import './questions.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex=0;

  void answerQuestion(){
    setState(() {
        questionIndex=questionIndex+1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions=['1ssup?','2ssup?','3ssup?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hi friends'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            RaisedButton(child: Text('answer 1'), onPressed: answerQuestion ),
            RaisedButton(child: Text('answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
