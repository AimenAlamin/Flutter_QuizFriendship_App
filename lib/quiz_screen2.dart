import 'package:flutter/material.dart';
import 'package:trail_app3/button_design.dart';
import 'package:trail_app3/data/qn_ans.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({super.key});
  @override
  State<QuizScreen2> createState() {
    return _QuizScreen2State();
  }
}

class _QuizScreen2State extends State<QuizScreen2> {
  var currentQuestion = qNa[0];
  int counter = 0;
  void changeQn() {
    setState(() {
      counter++;
      if (counter == 1) {
        currentQuestion = qNa[1];
      } else if (counter == 2) {
        currentQuestion = qNa[2];
      } else if (counter == 3) {
        currentQuestion = qNa[3];
      } else if (counter == 4) {
        currentQuestion = qNa[4];
      } else if (counter == 5) {
        currentQuestion = qNa[5];
      } else if (counter == 6) {
        currentQuestion = qNa[6];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              currentQuestion.question,
              style: const TextStyle(
                  fontSize: 24.5,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ButtonDesign(
            text: currentQuestion.answers[0],
            onTap: changeQn,
          ),
          ButtonDesign(
            text: currentQuestion.answers[1],
            onTap: changeQn,
          ),
          ButtonDesign(
            text: currentQuestion.answers[2],
            onTap: changeQn,
          ),
          ButtonDesign(
            text: currentQuestion.answers[3],
            onTap: changeQn,
          ),
        ],
      ),
    );
  }
}
