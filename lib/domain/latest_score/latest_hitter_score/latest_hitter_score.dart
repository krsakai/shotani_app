// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:shotani_app/extension/datetime_extension.dart';

part 'latest_hitter_score.freezed.dart';
part 'latest_hitter_score.g.dart';

@freezed
abstract class LatestHitterScore implements _$LatestHitterScore {
  const LatestHitterScore._(); 
  const factory LatestHitterScore({
    /// 日付
    @Default('') String date, 
    /// 試合リンク
    @Default('') String gameLink,
    /// 対戦相手
    @Default('') String vsTeam, 
    /// 打数
    @Default('') String atBat, 
    /// 安打
    @Default('') String hit, 
    /// 打点
    @Default('') String runBattedIn, 
    /// 三振
    @Default('') String strikeouts, 
    /// 四死球
    @Default('') String basesOnBalles, 
    /// 本塁打
    @Default('') String homeRuns, 
    /// 盗塁
    @Default('') String stolenBases
  }) = _LatestHitterScore;

 factory LatestHitterScore.fromJson(Map<String, dynamic> json) => _$_$_LatestHitterScoreFromJson(json);

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
        case "atBat": 
          return json[element.key] = {"value": element.value, "name": "打数"};
        case "hit": 
          return json[element.key] = {"value": element.value, "name": "安打"};
        case "runBattedIn": 
          return json[element.key] = {"value": element.value, "name": "打点"};
        case "strikeouts": 
          return json[element.key] = {"value": element.value, "name": "三振"};
        case "basesOnBalles": 
          return json[element.key] = {"value": element.value, "name": "四死球"};
        case "homeRuns":
          return json[element.key] = {"value": element.value, "name": "本塁打"};
        case "stolenBases": 
          return json[element.key] = {"value": element.value, "name": "盗塁"};
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