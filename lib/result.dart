import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);


String get resultPhrase{
  String resultText;
  if(resultScore <= 8 ){
    resultText='you are awesome and innocent';
  }else if(resultScore <=12){
      resultText='pretty likeable';
  }else if (resultScore <=16){
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
        child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ));
  }
}
