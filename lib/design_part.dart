import 'package:flutter/material.dart';
import 'package:trail_app3/data/qn_ans.dart';
import 'package:trail_app3/quiz_screen2.dart';
import 'package:trail_app3/result_screen.dart';
import 'package:trail_app3/start_screen.dart';

class DesignPart extends StatefulWidget {
  const DesignPart({super.key});

  @override
  State<DesignPart> createState() {
    return _DesignPartState();
  }
}

class _DesignPartState extends State<DesignPart> {
  var activeScreen = "start-screen";
  int correct = 0;
  List<String> storeAnswer = [];

  void result(String chosenAnswer) {
    storeAnswer.add(
        chosenAnswer); //from the quiz screen we trigger a pointer to this function and then it be executed

    if (storeAnswer.length == qNa.length) {
      //iterate through the list
      for (int i = 0; i < storeAnswer.length; i++) {
        //compare if user answer == first answer(correct answer) then increament correctAns
        if (storeAnswer[i] == qNa[i].answers[0]) {
          correct++;
        }
      }
      setState(() {
        // I put this inside the if conditon which is no.of ans equal to no.of qns. then go to result screen
        activeScreen = "result-screen";
      });
    }
  }

  void restart() {
    storeAnswer = [];
    correct = 0;

    setState(() {
      activeScreen = "start-screen";
    });
  }

  void nextPg() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  @override
  Widget build(context) {
    Widget? displayScreen;

    if (activeScreen == "start-screen") {
      displayScreen = StartScreen(
          nextPg); //passing a pointer of my function so that in startScreen onPressed the function is executed
    } else if (activeScreen == "quiz-screen") {
      displayScreen = QuizScreen2(onAnsPick: result);
    } else {
      displayScreen =
          ResultScreen(correctAnswers: correct, onRestartTap: restart);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 81, 20, 142),
          title: const Text(
            "Quiz Friendship",
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 30,
        ),
        backgroundColor: const Color.fromARGB(255, 81, 20, 142),
        body: Center(
          child: displayScreen,
        ),
      ),
    );
  }
}
