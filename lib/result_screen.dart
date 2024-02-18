import 'package:flutter/material.dart';
import 'package:trail_app3/data/qn_ans.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.correctAnswers, required this.onRestartTap});
  final void Function() onRestartTap;
  final int correctAnswers;

  @override
  Widget build(BuildContext context) {
    final totalQuestion = qNa.length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(bottom: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You got ${correctAnswers.toString()} out of ${totalQuestion.toString()}",
              style: const TextStyle(
                  fontSize: 24.5,
                  color: Color.fromARGB(255, 244, 223, 223),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            TextButton.icon(
              onPressed: onRestartTap,
              style: TextButton.styleFrom(),
              icon: const Icon(
                Icons.restart_alt_outlined,
                size: 30,
                color: Colors.white,
              ),
              label: const Text(
                "Restart",
                style: TextStyle(
                    fontSize: 20.5,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
