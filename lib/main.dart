import 'package:flutter/material.dart';
import 'package:dev_quiz/pages/home_page.dart';
import 'package:dev_quiz/pages/challenge_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "DevQuiz",
        home: ChallengePage());
  }
}
