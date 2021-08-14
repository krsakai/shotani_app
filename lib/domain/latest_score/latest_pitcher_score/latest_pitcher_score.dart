// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:shotani_app/extension/datetime_extension.dart';

part 'latest_pitcher_score.freezed.dart';
part 'latest_pitcher_score.g.dart';

@freezed
abstract class LatestPitcherScore implements _$LatestPitcherScore {
  const LatestPitcherScore._(); 
  const factory LatestPitcherScore({
    /// 日付
    @Default('') String date, 
    /// 試合リンク
    @Default('') String gameLink,
    /// 対戦相手
    @Default('') String vsTeam, 
    /// 勝敗
    @Default('') String outcome, 
    /// 投球回数
    @Default('') String inningsPitched, 
    /// 投球数
    @Default('') String numberPitched, 
    /// 被安打
    @Default('') String hits, 
    /// 与四球
    @Default('') String basesOnBalles, 
    /// 自責点
    @Default('') String earnedRuns, 
    /// 打者数
    @Default('') String numberHitters, 
    /// 奪三振
    @Default('') String strikeouts, 
    /// 失点
    @Default('') String runs
  }) = _LatestPitcherScore;

  factory LatestPitcherScore.fromJson(Map<String, dynamic> json) => _$_$_LatestPitcherScoreFromJson(json);

  Map<String, dynamic> toJsonAndFormatted() {
    final json = <String, dynamic>{};
    toJson().entries.forEach((element) {
      switch (element.key) {
        case "date":
          return json[element.key] = {"value": element.value, "name": "日付"};
        case "gameLink": 
          return json[element.key] = {"value": element.value, "name": "試合リンク"};
        case "vsTeam": 
          return json[element.key] = {"value": element.value, "name": "対戦相手"};
        case "outcome": 
          return json[element.key] = {"value": element.value, "name": "勝敗"};
        case "inningsPitched": 
          return json[element.key] = {"value": element.value, "name": "投球回数"};
        case "numberPitched": 
          return json[element.key] = {"value": element.value, "name": "投球数"};
        case "hits": 
          return json[element.key] = {"value": element.value, "name": "被安打"};
        case "basesOnBalles": 
          return json[element.key] = {"value": element.value, "name": "与四球"};
        case "earnedRuns":
          return json[element.key] = {"value": element.value, "name": "自責点"};
        case "numberHitters": 
          return json[element.key] = {"value": element.value, "name": "打者数"};
        case "strikeouts": 
          return json[element.key] = {"value": element.value, "name": "奪三振"};
        case "runs": 
          return json[element.key] = {"value": element.value, "name": "失点"};
        default: 
          break;
      }
    });
    return json;
  }

  DateTime get dateTime => this.date.toDateWith(AppDateFormat.hyphenYearToDay);

  String get displayDate {
    final dateTime = this.date.toDateWith(AppDateFormat.hyphenYearToDay);
    return dateTime.toStringWith(AppDateFormat.displayMonthToDay);
  }
}