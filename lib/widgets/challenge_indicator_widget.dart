import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
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
                  "Questão 04",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de 10",
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          ProgressIndicatorWidget(
            value: 0.40,
          ),
        ],
      ),
    );
  }
}
