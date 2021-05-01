import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/models/answer.dart';
import 'package:dev_quiz/models/question.dart';
import 'package:dev_quiz/widgets/answer_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final Question question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    required this.question,
    required this.onSelected,
  });

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  Answer answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 32),
          Text(widget.question.title, style: AppTextStyles.heading),
          SizedBox(height: 32),
          for (var index = 0; index < widget.question.answers.length; index++)
            AnswerWidget(
              answer: answer(index),
              isSelected: indexSelected == index,
              isDisabled: indexSelected != -1,
              onTap: (value) {
                indexSelected = index;
                setState(() {});
                Future.delayed(Duration(seconds: 1))
                    .then((_) => widget.onSelected(value));
              },
            )
        ],
      ),
    );
  }
}
