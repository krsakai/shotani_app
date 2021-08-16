import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:shotani_app/domain/news/news.dart';

class UserRepository {
  final _db = FirebaseFirestore.instance;

  Future updateFCMToken(String token, [String userId = ""]) async {
    try {
      // FIXME: FirebaseAuthでユーザーを予め作る
      await _db.collection("user").doc(token).set({'token': token});
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }
}