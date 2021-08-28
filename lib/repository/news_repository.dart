import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:shotani_app/domain/news/news.dart';

class NewsRepository {
  final _db = FirebaseFirestore.instance;

  Future<List<News>> get fetchNewsList async {
    try {
      final result = await _db.collection("news").orderBy('newsId', descending: true).limit(20).get();
      return result.docs.map((e) => News.fromJson(e.data())).toList();
    } catch (exception) {
      Logger().e(exception.toString());
      return [];
    }
  }
}