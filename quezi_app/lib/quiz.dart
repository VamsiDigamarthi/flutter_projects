import 'package:flutter/material.dart';
import 'package:quezi_app/data/questions.dart';
import 'package:quezi_app/question_screen.dart';
import 'package:quezi_app/result_screen.dart';
import 'package:quezi_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'activeScreen'; // Widget? activeScreen;
  List<String> selectedAnswers = [];
  void switchScreen() {
    setState(() {
      activeScreen = "quz-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  void onResertQuiz() {
    setState(() {
      activeScreen = "quz-screen";
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.blue,
              ],
            ),
          ),
          child: activeScreen == 'activeScreen'
              ? StartScreen(switchScreen)
              : activeScreen == "quz-screen"
                  ? QuistionScreen(onSelectANswer: chooseAnswer)
                  : ResultScreen(
                      chosenAnswers: selectedAnswers,
                      onResertQuiz: onResertQuiz,
                    ),
        ),
      ),
    );
  }
}
