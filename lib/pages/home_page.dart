import 'package:dev_quiz/controllers/home_controller.dart';
import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/state/home_state.dart';
import 'package:dev_quiz/widgets/app_bar_widget.dart';
import 'package:dev_quiz/widgets/level_button_widget.dart';
import 'package:dev_quiz/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.getUser();
    homeController.getQuizzes();
    homeController.stateNotifier.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    if (homeController.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(
          user: homeController.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 24),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                LevelButton(label: "Fácil"),
                LevelButton(label: "Médio"),
                LevelButton(label: "Difícil"),
                LevelButton(label: "Perito"),
              ]),
              SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: homeController.quizzes!
                      .map((e) => QuizCard(
                            title: e.title,
                            progress: "${e.questionAnswered}/${e.questions.length}",
                            percent: e.questionAnswered / e.questions.length,
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}
