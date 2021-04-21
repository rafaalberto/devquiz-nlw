import 'package:dev_quiz/widgets/level_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:dev_quiz/widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              LevelButton(label: "Fácil"),
              LevelButton(label: "Médio"),
              LevelButton(label: "Difícil"),
              LevelButton(label: "Perito"),
        ]),
      ),
    );
  }
}
