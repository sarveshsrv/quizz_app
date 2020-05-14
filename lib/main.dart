import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = const [
    //var questions
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite cricketer?',
      'answers': ['Kohli', 'Tendulkar', 'Dhoni', 'Ganguly'],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': ['India', 'France', 'Ireland', 'Budapest'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("We have more questions");
    } else {
      print("You are done.");
    }
  }

  @override
  Widget build(BuildContext context) {
    /*var sr = ['Sarvesh'];
    sr.add('Tiwari');
    print(sr);*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('My First App'),
        )),
        body: _questionIndex < questions.length
            ? Column(
                //Using ternary operator
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: RaisedButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: Text("You did it!"),
                  onPressed:(){},
                ),
              ),
      ),
    );
  }
}
