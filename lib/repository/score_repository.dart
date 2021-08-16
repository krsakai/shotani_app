import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:shotani_app/domain/latest_score/latest_hitter_score/latest_hitter_score.dart';
import 'package:shotani_app/domain/latest_score/latest_pitcher_score/latest_pitcher_score.dart';
import 'package:shotani_app/domain/season_score/hitter_score/hitter_score.dart';
import 'package:shotani_app/domain/season_score/pitcher_score/pitcher_score.dart';

class ScoreRepository {
  final _db = FirebaseFirestore.instance;

  Future<List<LatestHitterScore>> get fetchLatestHitterScoreList async {
    try {
      final result = await _db.collection("latestHitterScore").orderBy('date', descending: true).limit(10).get();
      return result.docs.map((e) => LatestHitterScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  Future<List<LatestPitcherScore>> get fetchLatestPitcherScoreList async {
    try {
      final result = await _db.collection("latestPitcherScore").orderBy('date', descending: true).limit(10).get();
      return result.docs.map((e) => LatestPitcherScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  Future<List<HitterScore>> get fetchSeasonHitterScoreList async {
    try {
      final result = await _db.collection("hitterScore").orderBy('year', descending: true).limit(5).get();
      return result.docs.map((e) => HitterScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }

  Future<List<PitcherScore>> get fetchSeasonPitcherScoreList async {
    try {
      final result = await _db.collection("pitcherScore").orderBy('year', descending: true).limit(5).get();
      return result.docs.map((e) => PitcherScore.fromJson(e.data())).toList();
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }
}