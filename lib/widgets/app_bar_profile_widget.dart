import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/models/user.dart';
import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget {
  final User user;

  const AppBarProfile({ required this.user });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(gradient: AppGradients.linear,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(text: "Olá, ", style: AppTextStyles.title, children: [
              TextSpan(text: user.name, style: AppTextStyles.titleBold)
            ]),
          ),
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      user.photoUrl),
                )),
          )
        ],
      ),
    );
  }
}
