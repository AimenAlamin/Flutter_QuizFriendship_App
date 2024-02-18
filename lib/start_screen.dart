import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 230,
          color: const Color.fromARGB(94, 255, 255, 255),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "How much you know me!",
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
        const SizedBox(
          height: 23,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz, //onPress here will go to QuizScreen
          style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_forward),
          label: const Text(
            'Start Quiz',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
