import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  
  String get resultPhrase{
  String resultText;
  if(resultScore<=10){
    resultText="You are nice and innocent!";
  }
  else if(resultScore>10 && resultScore<=15){
    resultText="You are pretty likeable!";
  }
  else {
    resultText="You are bad!";
  }
  return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.redAccent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        textColor: Colors.white,
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }
}