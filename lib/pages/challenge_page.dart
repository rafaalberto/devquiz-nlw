import 'package:flutter/material.dart';
import 'package:dev_quiz/controllers/challenge_controller.dart';
import 'package:dev_quiz/models/question.dart';
import 'package:dev_quiz/widgets/challenge_indicator_widget.dart';
import 'package:dev_quiz/widgets/next_button_widget.dart';
import 'package:dev_quiz/widgets/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  final List<Question> questions;

  ChallengePage({required this.questions});

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final challengeController = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    pageController.addListener(() {
      challengeController.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

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
              IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context)),
              ValueListenableBuilder<int>(
                  valueListenable: challengeController.currentPageNotifier,
                  builder: (context, value, _) => QuestionIndicator(
                        currentPage: challengeController.currentPage,
                        length: widget.questions.length,
                      )),
            ],
          ),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: widget.questions.map((e) => QuizWidget(question: e)).toList(),
      ),
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
                onTap: () => pageController.nextPage(duration: Duration(milliseconds: 100), curve: Curves.linear),
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
