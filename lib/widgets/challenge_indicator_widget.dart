import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
  final int currentPage;
  final int length;

  const QuestionIndicator({
    required this.currentPage,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão $currentPage",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de $length",
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          ProgressIndicatorWidget(
            value: currentPage/length,
          ),
        ],
      ),
    );
  }
}
