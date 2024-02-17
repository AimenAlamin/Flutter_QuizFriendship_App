import 'package:flutter/material.dart';
import 'package:trail_app3/quiz_screen2.dart';
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

  void nextPg() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  @override
  Widget build(context) {
    Widget? displayScreen;

    if (activeScreen == "start-screen") {
      displayScreen = StartScreen(nextPg);
    } else {
      displayScreen = const QuizScreen2();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 81, 20, 142),
          title: const Text(
            "How Much You Know Me Quiz",
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
