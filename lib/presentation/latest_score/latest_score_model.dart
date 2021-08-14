import 'dart:async';

import 'package:shotani_app/domain/latest_score/latest_hitter_score/latest_hitter_score.dart';
import 'package:shotani_app/domain/latest_score/latest_pitcher_score/latest_pitcher_score.dart';
import 'package:shotani_app/domain/latest_score/latest_score.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/score_repository.dart';

final latestScoreModelProvider = ChangeNotifierProvider.autoDispose((_) => LatestScoreModel());

class LatestScoreModel extends Model {
  final _reloadObserver = StreamController<bool>.broadcast();
  Stream<bool> get loadStream => _reloadObserver.stream;
  
  List<LatestHitterScore> latestHitterScoreList;
  List<LatestPitcherScore> latestPitcherScoreList;

  @override
  Future init() async {
    _reloadObserver.sink.add(true);
    latestHitterScoreList = await ScoreRepository().fetchLatestHitterScoreList();
    latestPitcherScoreList = await ScoreRepository().fetchLatestPitcherScoreList();
    _reloadObserver.sink.add(false);
  }

  void reload() async {
    _reloadObserver.sink.add(true);
    latestHitterScoreList = await ScoreRepository().fetchLatestHitterScoreList();
    latestPitcherScoreList = await ScoreRepository().fetchLatestPitcherScoreList();
    _reloadObserver.sink.add(false);
  }

  // MARK: - Hitter Score Model

  List<String> get hitterScoreColumnTitleList {
    final displayColumnList = latestHitterScoreList[0]?.toJsonAndFormatted();
    displayColumnList.remove('date');
    displayColumnList.remove('gameLink');
    return displayColumnList.values.toList().map((e) => e['name'] as String).toList();
  }

  List<DateTime> get hitterScoreDateColumnRowList => latestHitterScoreList.map((e) => e.dateTime).toList();

  List<LatestScore> get hitterScoreDataList => latestHitterScoreList.map((e) {
    final exchageMapData = e.toJsonAndFormatted();
    exchageMapData.remove('date');
    return LatestScore(
      linkInformation: exchageMapData.remove('gameLink'),
      dataList: exchageMapData.values.toList().map((e) => e['value'] as String).toList()
    );
  }).toList();

  // MARK: - Pitcher Score Model

  List<String> get pitcherScoreColumnTitleList {
    final displayColumnList = latestPitcherScoreList[0]?.toJsonAndFormatted();
    displayColumnList.remove('date');
    displayColumnList.remove('gameLink');
    return displayColumnList.values.toList().map((e) => e['name'] as String).toList();
  }

  List<DateTime> get pitcherScoreDateColumnRowList => latestPitcherScoreList.map((e) => e.dateTime).toList();

  List<LatestScore> get pitcherScoreDataList => latestPitcherScoreList.map((e) {
    final exchageMapData = e.toJsonAndFormatted();
    exchageMapData.remove('date');
    return LatestScore(
      linkInformation: exchageMapData.remove('gameLink'),
      dataList: exchageMapData.values.toList().map((e) => e['value'] as String).toList()
    );
  }).toList();

  @override
  void dispose() {
    super.dispose();
    _reloadObserver.close();
  }
}