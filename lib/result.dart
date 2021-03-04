import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);


String get resultPhrase{
  String resultText;
  if(resultScore <= 12 ){
    resultText='you are awesome and innocent';
  }else if(resultScore <=18){
      resultText='pretty likeable';
  }else if (resultScore <=25){
    resultText='you are strange........';
  }
  else{
    resultText='you are a bad person';
  }
  return resultText;
}


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ),
    FlatButton(onPressed: resetHandler, child: Text('Restart Quiz!!!'))
          ],
        ));
  }
}
