import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:shotani_app/presentation/latest_score/latest_score_page.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/presentation/news/news_page.dart';
import 'package:shotani_app/presentation/quiz/quiz_page.dart';
import 'package:shotani_app/presentation/schedule/schedule_page.dart';
import 'package:shotani_app/presentation/season_score/season_score_page.dart';
import 'package:shotani_app/presentation/setting/setting_page.dart';
import 'package:shotani_app/presentation/tab_page.dart';
import 'package:shotani_app/util/remote_config.dart';

final homeModelProvider = ChangeNotifierProvider((_) => HomeModel());

class HomeModel extends Model with WidgetsBindingObserver {
  final _reloadObserver = StreamController<bool>();
  Stream<bool> get loadStream => _reloadObserver.stream;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  
  bool shouldForceUpdate = false;
  bool opendForceUpdateDialog = false;

  List<TabPage> pageList = [];

  bool availableNews = false;
  bool availableQuiz = true;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  Future init() async {
    WidgetsBinding.instance.addObserver(this);
    _reloadObserver.sink.add(true);
    shouldForceUpdate = await AppRemoteConfig.shouldForceUpdate();
    availableNews = AppRemoteConfig.fetchAvaiableNews();
    availableQuiz = AppRemoteConfig.fetchAvaiableQuiz();
    setupPageList();
    _reloadObserver.sink.add(false);
    notifyListeners();
  }

  Future reload() async {
    final fetchedValue = await AppRemoteConfig.shouldForceUpdate();
    if (shouldForceUpdate != fetchedValue) {
      shouldForceUpdate = fetchedValue;
      _reloadObserver.sink.add(true);
      await Future.delayed(Duration(milliseconds: 500));
    }
    final fetchedNewsValue = AppRemoteConfig.fetchAvaiableNews();
    final fetchedQuizValue = AppRemoteConfig.fetchAvaiableQuiz();
    if (availableNews != fetchedNewsValue || availableQuiz != fetchedQuizValue) {
      availableNews = AppRemoteConfig.fetchAvaiableNews();
      availableQuiz = AppRemoteConfig.fetchAvaiableQuiz();
      setupPageList();
    }
    _reloadObserver.sink.add(false);
    notifyListeners();
  }

  String get pageName => pageList.length > 0 ? pageList[_currentIndex].pageName : "";

  void setupPageList() {
    pageList = [
      availableNews ? NewsPage() : null,
      availableQuiz ? QuizPage() : null,
      LatestScorePage(),
      SeasonScorePage(),
      SchedulePage(),
      SettingPage()
    ].whereType<TabPage>().toList();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      reload();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _reloadObserver.close();
    super.dispose();
  }
}