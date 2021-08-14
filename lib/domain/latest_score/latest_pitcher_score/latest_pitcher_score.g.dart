// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_pitcher_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestPitcherScore _$_$_LatestPitcherScoreFromJson(
    Map<String, dynamic> json) {
  return _$_LatestPitcherScore(
    date: json['date'] as String ?? '',
    gameLink: json['gameLink'] as String ?? '',
    vsTeam: json['vsTeam'] as String ?? '',
    outcome: json['outcome'] as String ?? '',
    inningsPitched: json['inningsPitched'] as String ?? '',
    numberPitched: json['numberPitched'] as String ?? '',
    hits: json['hits'] as String ?? '',
    basesOnBalles: json['basesOnBalles'] as String ?? '',
    earnedRuns: json['earnedRuns'] as String ?? '',
    numberHitters: json['numberHitters'] as String ?? '',
    strikeouts: json['strikeouts'] as String ?? '',
    runs: json['runs'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_LatestPitcherScoreToJson(
        _$_LatestPitcherScore instance) =>
    <String, dynamic>{
      'date': instance.date,
      'gameLink': instance.gameLink,
      'vsTeam': instance.vsTeam,
      'outcome': instance.outcome,
      'inningsPitched': instance.inningsPitched,
      'numberPitched': instance.numberPitched,
      'hits': instance.hits,
      'basesOnBalles': instance.basesOnBalles,
      'earnedRuns': instance.earnedRuns,
      'numberHitters': instance.numberHitters,
      'strikeouts': instance.strikeouts,
      'runs': instance.runs,
    };
