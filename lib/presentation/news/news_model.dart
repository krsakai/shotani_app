import 'dart:async';
import 'package:shotani_app/domain/news/news.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/news_repository.dart';

final newsModelProvider = ChangeNotifierProvider.autoDispose((_) => NewsModel());

class NewsModel extends Model {
  final _reloadObserver = StreamController<bool>.broadcast();
  Stream<bool> get loadStream => _reloadObserver.stream;
  
  List<News> newsList;

  @override
  Future init() async {
    _reloadObserver.sink.add(true);
    newsList = await NewsRepository().fetchNewsList;
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  void reload() async {
    _reloadObserver.sink.add(true);
    newsList = await NewsRepository().fetchNewsList;
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  @override
  void dispose() {
    super.dispose();
    _reloadObserver.close();
  }
}