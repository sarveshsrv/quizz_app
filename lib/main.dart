import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText': 'What\'s your favorite color?','answers':['Black','Blue','Red'],},
      {'questionText': 'What\'s your favorite animal?','answers':['Cat','Dog','Lion'],},
      {'questionText': 'What\'s your favorite place?','answers':['India','US','UK'],},
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
          ],
            ),
        
        ),
      );
  }
}
