import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/widgets/answer_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 32),
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 32),
          AnswerWidget(title: "Possibilita a criação de aplicativos compilados nativamente",isSelected: true, isRight: true,),
        ],
      ),
    );
  }
}
