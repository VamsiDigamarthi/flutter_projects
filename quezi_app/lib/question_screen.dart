import 'package:flutter/material.dart';
import 'package:quezi_app/answer_button.dart';
import 'package:quezi_app/data/questions.dart';

class QuistionScreen extends StatefulWidget {
  const QuistionScreen({super.key, required this.onSelectANswer});

  final void Function(String answer) onSelectANswer;

  @override
  State<QuistionScreen> createState() {
    return _QuistionScreenState();
  }
}

class _QuistionScreenState extends State<QuistionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectANswer(answer);
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),

            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  text: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
