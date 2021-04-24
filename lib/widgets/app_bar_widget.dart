import 'package:dev_quiz/models/user.dart';
import 'package:dev_quiz/widgets/app_bar_profile_widget.dart';
import 'package:dev_quiz/widgets/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final User user;
  AppBarWidget({ required this.user })
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                AppBarProfile(user: user),
                Align(alignment: Alignment(0.0, 1.1), child: ScoreCardWidget()),
              ],
            ),
          ),
        );
}
