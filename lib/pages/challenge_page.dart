import 'package:dev_quiz/widgets/challenge_indicator_widget.dart';
import 'package:dev_quiz/widgets/next_button_widget.dart';
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
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(icon: Icon(Icons.close), onPressed: () => Navigator.pop(context)),
              QuestionIndicator(),
            ],
          ),
        ),
      ),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget.white(
                label: "Pular",
                onTap: () {},
              )),
              SizedBox(width: 8),
              Expanded(
                  child: NextButtonWidget.green(
                label: "Confirmar",
                onTap: () {},
              )),
            ],
          ),
        ),
      ),
    );
  }
}
