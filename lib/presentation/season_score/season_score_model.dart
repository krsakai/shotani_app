import 'dart:async';
import 'package:shotani_app/domain/latest_score/latest_score.dart';
import 'package:shotani_app/domain/season_score/hitter_score/hitter_score.dart';
import 'package:shotani_app/domain/season_score/pitcher_score/pitcher_score.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/score_repository.dart';

final seasonScoreModelProvider = ChangeNotifierProvider.autoDispose((_) => SeasonScoreModel());

class SeasonScoreModel extends Model {
  final _reloadObserver = StreamController<bool>();
  Stream<bool> get loadStream => _reloadObserver.stream;
  
  List<HitterScore> hitterScoreList;
  List<PitcherScore> pitcherScoreList;

  @override
  Future init() async {
    _reloadObserver.sink.add(true);
    hitterScoreList = await ScoreRepository().fetchSeasonHitterScoreList;
    pitcherScoreList = await ScoreRepository().fetchSeasonPitcherScoreList;
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  void reload() async {
    _reloadObserver.sink.add(true);
    hitterScoreList = await ScoreRepository().fetchSeasonHitterScoreList;
    pitcherScoreList = await ScoreRepository().fetchSeasonPitcherScoreList;
    await Future.delayed(Duration(milliseconds: 500));
    _reloadObserver.sink.add(false);
  }

  // MARK: - Hitter Score Model

  List<String> get hitterScoreColumnTitleList {
    final displayColumnList = hitterScoreList[0]?.toJsonAndFormatted();
    displayColumnList.remove('year');
    return displayColumnList.values.toList().map((e) => e['name'] as String).toList();
  }

  List<String> get hitterScoreYearColumnRowList => hitterScoreList.map((e) => e.year).toList();

  List<LatestScore> get hitterScoreDataList => hitterScoreList.map((e) {
    final exchageMapData = e.toJsonAndFormatted();
    exchageMapData.remove('year');
    return LatestScore(
      linkInformation: exchageMapData.remove('gameLink'),
      dataList: exchageMapData.values.toList().map((e) => e['value'] as String).toList()
    );
  }).toList();

  // MARK: - Pitcher Score Model

  List<String> get pitcherScoreColumnTitleList {
    final displayColumnList = pitcherScoreList[0]?.toJsonAndFormatted();
    displayColumnList.remove('year');
    return displayColumnList.values.toList().map((e) => e['name'] as String).toList();
  }

  List<String> get pitcherScoreYearColumnRowList => pitcherScoreList.map((e) => e.year).toList();

  List<LatestScore> get pitcherScoreDataList => pitcherScoreList.map((e) {
    final exchageMapData = e.toJsonAndFormatted();
    exchageMapData.remove('year');
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