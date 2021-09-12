import 'dart:async';

import 'package:shotani_app/domain/quiz/quiz.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/quiz_repository.dart';

final quizModelProvider = ChangeNotifierProvider.autoDispose((_) => QuizModel());

class QuizModel extends Model {
  final _reloadObserver = StreamController<bool>();
  Stream<bool> get loadStream => _reloadObserver.stream;
  
  List<Quiz> quizList;
  Quiz get selectingQuiz => quizList[selectionQuizIndex];
  int selectionQuizIndex = 0;
  String selectedItem = "";
  bool isAnswering = true;

  @override
  Future init() async {
    _reloadObserver.sink.add(true);
    quizList = await QuizRepository().fetchQuizList;
    quizList.shuffle();
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  void reload() async {
    _reloadObserver.sink.add(true);
    quizList = await QuizRepository().fetchQuizList;
    quizList.shuffle();
    resetQuizIndex();
    resetSelecteingQuizState();
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  // MARK: - Operation

  bool get isCorrectQuiz => selectingQuiz.answerText == selectedItem;

  void setSelectedItem(String value) {
    selectedItem = value;
    notifyListeners();
  }

  void resetSelecteingQuizState() {
    selectedItem = "";
    isAnswering = true;
    notifyListeners();
  }

  void resetQuizIndex() {
    selectionQuizIndex = 0;
    notifyListeners();
  }

  // MARK: - Actions

  void setNextQuizItem() {
    resetSelecteingQuizState();
    selectionQuizIndex = quizList.length > selectionQuizIndex + 1 ? selectionQuizIndex + 1 : 0;
    notifyListeners();
  }

  void setQuizAnswerState(bool value) {
    isAnswering = value;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _reloadObserver.close();
  }
}