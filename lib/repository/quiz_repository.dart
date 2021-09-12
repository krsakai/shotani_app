import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:shotani_app/domain/quiz/quiz.dart';

class QuizRepository {
  final _db = FirebaseFirestore.instance;

  Future<List<Quiz>> get fetchQuizList async {
    try {
      final result = await _db.collection("quiz").get();
      return result.docs.map((e) => Quiz.fromJson(e.data())).toList();
    } catch (exception) {
      Logger().e(exception.toString());
      return [];
    }
  }
}