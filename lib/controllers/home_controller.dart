import 'package:flutter/material.dart';
import 'package:dev_quiz/models/quiz.dart';
import 'package:dev_quiz/models/user.dart';
import 'package:dev_quiz/repository/home_repository.dart';
import 'package:dev_quiz/state/home_state.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  User? user;
  List<Quiz>? quizzes;

  final homeRepository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await homeRepository.getUsers();
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await homeRepository.getQuizzes();
    state = HomeState.success;
  }
}
