import 'dart:convert';

import 'package:dev_quiz/models/quiz.dart';
import 'package:dev_quiz/models/user.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<User> getUsers() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    return User.fromJson(response);
  }

  Future<List<Quiz>> getQuizzes() async {
    final response = await rootBundle.loadString("assets/database/quiz.json");
    final quizzes = jsonDecode(response) as List;
    return quizzes.map((e) => Quiz.fromMap(e)).toList();
  }
}