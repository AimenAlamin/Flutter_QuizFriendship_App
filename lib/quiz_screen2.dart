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
  int counter = 0;
  void changeQn() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = qNa[counter];
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
                  color: Color.fromARGB(255, 244, 223, 223),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ...currentQuestion.getShuffle().map((ans) {
            return ButtonDesign(text: ans, onTap: changeQn);
          })
        ],
      ),
    );
  }
}
