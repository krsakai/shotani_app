import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:shotani_app/domain/latest_score/latest_hitter_score/latest_hitter_score.dart';
import 'package:shotani_app/domain/latest_score/latest_pitcher_score/latest_pitcher_score.dart';
import 'package:shotani_app/domain/season_score/hitter_score/hitter_score.dart';
import 'package:shotani_app/domain/season_score/pitcher_score/pitcher_score.dart';

class ScoreRepository {
  final _db = FirebaseFirestore.instance;

  Future<List<LatestHitterScore>> fetchLatestHitterScoreList() async {
    try {
      final result = await _db.collection("latestHitterScore").orderBy('date', descending: true).limit(6).get();
      return result.docs.map((e) => LatestHitterScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  Future<List<LatestPitcherScore>> fetchLatestPitcherScoreList() async {
    try {
      final result = await _db.collection("latestPitcherScore").orderBy('date', descending: true).limit(5).get();
      return result.docs.map((e) => LatestPitcherScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  Future<List<HitterScore>> fetchSeasonHitterScoreList() async {
    try {
      final result = await _db.collection("hitterScore").orderBy('year', descending: true).limit(5).get();
      return result.docs.map((e) => HitterScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  Future<List<PitcherScore>> fetchSeasonPitcherScoreList() async {
    try {
      final result = await _db.collection("pitcherScore").orderBy('year', descending: true).limit(5).get();
      return result.docs.map((e) => PitcherScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  /// バイクをすべて取得する。[orderBy]はソートに使うキー名。[descending]はtrueで降順
  // Future<List<Bike>> fetchBikes(
  //     {String orderBy, bool descending = false}) async {
  //   try {
  //     final collectionRef = _db.collection(_collectionPath);
  //     final snapshot = orderBy != null
  //         ? await collectionRef.orderBy(orderBy, descending: descending).get()
  //         : await collectionRef.get();

  //     return snapshot.docs.map(_toEntity).toList();
  //   } catch (e) {
  //     Logger().e(e.toString());
  //   }
  //   return [];
  // }

  /// バイク画像を一時領域にダウンロードして返す
  // Future<File> fetchBikeImage(String imageUrl) async {
  //   final ref = FirebaseStorage.instance.refFromURL(imageUrl);
  //   final tempDir = await getTemporaryDirectory();
  //   final tempFile = File('${tempDir.path}/temp-${ref.name}');
  //   if (tempFile.existsSync()) {
  //     await tempFile.delete();
  //   }
  //   // リポジトリが副作用をもっているのはよろしくないらしい
  //   await ref.writeToFile(tempFile);

  //   return File(tempFile.path);
  // }

  // Future<String> uploadBikeImage(File bikeImageFile, String bikeId) async {
  //   final snapshot = await FirebaseStorage.instance
  //       .ref()
  //       .child('bikeImage/$bikeId')
  //       .putFile(bikeImageFile);
  //   return snapshot.ref.getDownloadURL();
  // }

  /// FirestoreにランダムIDでバイクを追加する
  ///
  /// 画像があれば同時に保存する
  // Future<Bike> addBikeWithImage(Bike bike, {File bikeImageFile}) async {
  //   // 登録する先のIDを自動生成してもらうため参照を取得
  //   final ref = _db.collection(_collectionPath).doc();
  //   final imageUrl = bikeImageFile != null
  //       ? await uploadBikeImage(bikeImageFile, ref.id)
  //       : null;
  //   final bikeForAdd = bike.copyWith(
  //     id: ref.id,
  //     imageUrl: imageUrl,
  //   );
  //   await ref.set(_toMap(bikeForAdd));

  //   return bikeForAdd;
  // }

  /// Firestoreのバイクを更新する
  ///
  /// 画像があれば同時に保存する
  // Future<Bike> updateBikeWithImage(Bike bike, {File bikeImageFile}) async {
  //   // 登録する先のIDを自動生成してもらうため参照を取得
  //   final ref = _db.collection(_collectionPath).doc(bike.id);
  //   final imageUrl = bikeImageFile != null
  //       ? await uploadBikeImage(bikeImageFile, bike.id)
  //       : null;
  //   final bikeForUpdate = bike.copyWith(imageUrl: imageUrl);
  //   await ref.set(
  //     _toMap(bikeForUpdate),
  //     SetOptions(merge: true),
  //   );

  //   return bikeForUpdate;
  // }
}