// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pitcher_score.freezed.dart';
part 'pitcher_score.g.dart';

@freezed
abstract class PitcherScore implements _$PitcherScore {
  const PitcherScore._(); 
  const factory PitcherScore({
    /// 年
    @Default('') String year, 
    /// 防御率
    @Default('') String era,
    /// 試合数
    @Default('') String games, 
    /// 完投
    @Default('') String completeGames, 
    /// 完封
    @Default('') String shutouts, 
    /// 勝利
    @Default('') String win, 
    /// 敗北
    @Default('') String losses, 
    /// セーブ
    @Default('') String saves, 
    /// 投球回数
    @Default('') String inningsPitched, 
    /// 被安打
    @Default('') String hits, 
    /// 被本塁打
    @Default('') String homeRuns, 
    /// 奪三振
    @Default('') String strikeouts, 
    /// 与四球
    @Default('') String basesOnBalles,
    /// 与死球
    @Default('') String hitsBatsmen, 
    /// 暴投
    @Default('') String ring, 
    /// ボーク
    @Default('') String bok,
    /// 失点
    @Default('') String runs, 
    /// 自責点
    @Default('') String earnedRuns
  }) = _PitcherScore;

  factory PitcherScore.fromJson(Map<String, dynamic> json) => _$_$_PitcherScoreFromJson(json);

  Map<String, dynamic> toJsonAndFormatted() {
    final json = <String, dynamic>{};
    toJson().entries.forEach((element) {
      switch (element.key) {
        case "year":
          return json[element.key] = {"value": element.value, "name": "年"};
        case "era": 
          return json[element.key] = {"value": element.value, "name": "防御率"};
        case "games": 
          return json[element.key] = {"value": element.value, "name": "試合数"};
        case "completeGames": 
          return json[element.key] = {"value": element.value, "name": "完投"};
        case "shutouts": 
          return json[element.key] = {"value": element.value, "name": "完封"};
        case "win": 
          return json[element.key] = {"value": element.value, "name": "勝利"};
        case "losses": 
          return json[element.key] = {"value": element.value, "name": "敗北"};
        case "saves": 
          return json[element.key] = {"value": element.value, "name": "セーブ"};
        case "inningsPitched":
          return json[element.key] = {"value": element.value, "name": "投球回数"};
        case "hits": 
          return json[element.key] = {"value": element.value, "name": "被安打"};
        case "homeRuns": 
          return json[element.key] = {"value": element.value, "name": "被本塁打"};
        case "strikeouts": 
          return json[element.key] = {"value": element.value, "name": "奪三振"};
        case "basesOnBalles": 
          return json[element.key] = {"value": element.value, "name": "与四球"};
        case "hitsBatsmen": 
          return json[element.key] = {"value": element.value, "name": "与死球"};
        case "ring":
          return json[element.key] = {"value": element.value, "name": "暴投"};
        case "bok": 
          return json[element.key] = {"value": element.value, "name": "ボーク"};
        case "runs": 
          return json[element.key] = {"value": element.value, "name": "失点"};
        case "earnedRuns": 
          return json[element.key] = {"value": element.value, "name": "自責点"};
        default: 
          break;
      }
    });
    return json;
  }
}