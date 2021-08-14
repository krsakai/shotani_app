// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'hitter_score.freezed.dart';
part 'hitter_score.g.dart';

@freezed
abstract class HitterScore implements _$HitterScore {
  const HitterScore._(); 
  const factory HitterScore({
    /// 年
    @Default('') String year, 
    /// 打率
    @Default('') String avg,
    /// 試合数
    @Default('') String games, 
    /// 打数
    @Default('') String atBat, 
    /// 得点
    @Default('') String score, 
    /// 安打
    @Default('') String hit, 
    /// 2塁打
    @Default('') String twoBaseHit, 
    /// 3塁打
    @Default('') String threeBaseHit, 
    /// 本塁打
    @Default('') String homeRuns, 
    /// 塁打数
    @Default('') String totalBases, 
    /// 打点
    @Default('') String runBattedIn, 
    /// 三振
    @Default('') String strikeouts,
    /// 四球
    @Default('') String basesOnBalles, 
    /// 死球
    @Default('') String hitByPitch, 
    /// 犠打
    @Default('') String dacrificeHit,
    /// 犠飛
    @Default('') String sacrificeFly, 
    /// 盗塁
    @Default('') String stolenBases, 
    /// 出塁率
    @Default('') String onbasePercentage,
    /// 長打率
    @Default('') String sluggingPercentage
  }) = _HitterScore;

  factory HitterScore.fromJson(Map<String, dynamic> json) => _$_$_HitterScoreFromJson(json);

  Map<String, dynamic> toJsonAndFormatted() {
    final json = <String, dynamic>{};
    toJson().entries.forEach((element) {
      switch (element.key) {
        case "year":
          return json[element.key] = {"value": element.value, "name": "年"};
        case "avg": 
          return json[element.key] = {"value": element.value, "name": "打率"};
        case "games": 
          return json[element.key] = {"value": element.value, "name": "試合数"};
        case "atBat": 
          return json[element.key] = {"value": element.value, "name": "打数"};
        case "score": 
          return json[element.key] = {"value": element.value, "name": "得点"};
        case "hit": 
          return json[element.key] = {"value": element.value, "name": "安打"};
        case "twoBaseHit": 
          return json[element.key] = {"value": element.value, "name": "2塁打"};
        case "threeBaseHit": 
          return json[element.key] = {"value": element.value, "name": "3塁打"};
        case "homeRuns":
          return json[element.key] = {"value": element.value, "name": "本塁打"};
        case "totalBases": 
          return json[element.key] = {"value": element.value, "name": "塁打数"};
        case "runBattedIn": 
          return json[element.key] = {"value": element.value, "name": "打点"};
        case "strikeouts": 
          return json[element.key] = {"value": element.value, "name": "三振"};
        case "basesOnBalles": 
          return json[element.key] = {"value": element.value, "name": "四球"};
        case "hitByPitch": 
          return json[element.key] = {"value": element.value, "name": "死球"};
        case "dacrificeHit":
          return json[element.key] = {"value": element.value, "name": "犠打"};
        case "sacrificeFly": 
          return json[element.key] = {"value": element.value, "name": "犠飛"};
        case "stolenBases": 
          return json[element.key] = {"value": element.value, "name": "盗塁"};
        case "onbasePercentage": 
          return json[element.key] = {"value": element.value, "name": "出塁率"};
        case "sluggingPercentage": 
          return json[element.key] = {"value": element.value, "name": "長打率"};
        default: 
          break;
      }
    });
    return json;
  }
}