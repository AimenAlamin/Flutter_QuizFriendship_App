import 'package:flutter/material.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({super.key});
  @override
  State<QuizScreen2> createState() {
    return _QuizScreen2State();
  }
}

class _QuizScreen2State extends State<QuizScreen2> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(23.0),
            child: Text(
              "What are the main building blocks of Flutter UIs?",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 23,
          ),
        ],
      ),
    );
  }
}
