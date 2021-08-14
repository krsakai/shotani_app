// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_hitter_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestHitterScore _$_$_LatestHitterScoreFromJson(Map<String, dynamic> json) {
  return _$_LatestHitterScore(
    date: json['date'] as String ?? '',
    gameLink: json['gameLink'] as String ?? '',
    vsTeam: json['vsTeam'] as String ?? '',
    atBat: json['atBat'] as String ?? '',
    hit: json['hit'] as String ?? '',
    runBattedIn: json['runBattedIn'] as String ?? '',
    strikeouts: json['strikeouts'] as String ?? '',
    basesOnBalles: json['basesOnBalles'] as String ?? '',
    homeRuns: json['homeRuns'] as String ?? '',
    stolenBases: json['stolenBases'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_LatestHitterScoreToJson(
        _$_LatestHitterScore instance) =>
    <String, dynamic>{
      'date': instance.date,
      'gameLink': instance.gameLink,
      'vsTeam': instance.vsTeam,
      'atBat': instance.atBat,
      'hit': instance.hit,
      'runBattedIn': instance.runBattedIn,
      'strikeouts': instance.strikeouts,
      'basesOnBalles': instance.basesOnBalles,
      'homeRuns': instance.homeRuns,
      'stolenBases': instance.stolenBases,
    };
