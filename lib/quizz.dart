class Quizz  extends StatelessWidget {
  final List<map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quizz({
    @required this.questions;
    @required this.answerQuestion;
    @required this.questionIndex;
  });
  @override
  Widget build(BuildContext context) {
    return Column(
              
                children: [
                  Question(
                    questions[questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              );
  }
}