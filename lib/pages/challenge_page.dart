import 'package:dev_quiz/widgets/challenge_indicator_widget.dart';
import 'package:dev_quiz/widgets/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestionIndicator(),
        ),
      ),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
    );
  }
}
