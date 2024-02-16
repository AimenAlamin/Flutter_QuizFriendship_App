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
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(nextPg);
  }

  void nextPg() {
    setState(() {
      activeScreen = const QuizScreen2();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 81, 20, 142),
        body: Center(
          child: activeScreen,
        ),
      ),
    );
  }
}
