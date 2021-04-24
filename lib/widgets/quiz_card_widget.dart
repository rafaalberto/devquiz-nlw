import 'package:flutter/material.dart';
import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/progress_indicator_widget.dart';

class QuizCard extends StatelessWidget {
  final String title;
  final String progress;
  final double percent;

  const QuizCard({
    required this.title,
    required this.progress,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 24,
          ),
          Text(title, style: AppTextStyles.heading15),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1, child: Text(progress, style: AppTextStyles.body11)),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(
                  value: percent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
