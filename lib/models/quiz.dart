import 'dart:convert';

import 'package:dev_quiz/models/level.dart';
import 'package:dev_quiz/models/question.dart';

class Quiz {
  final String title;
  final List<Question> questions;
  final int questionAnswered;
  final String image;
  final Level level;

  Quiz({
    required this.title,
    required this.questions,
    this.questionAnswered = 0,
    required this.image,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionAnswered': questionAnswered,
      'image': image,
      'level': level.parse,
    };
  }

  factory Quiz.fromMap(Map<String, dynamic> map) {
    return Quiz(
      title: map['title'],
      questions: List<Question>.from(
          map['questions']?.map((x) => Question.fromMap(x))),
      questionAnswered: map['questionAnswered'],
      image: map['image'],
      level: map['level'].toString().parse,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quiz.fromJson(String source) => Quiz.fromMap(json.decode(source));
}
