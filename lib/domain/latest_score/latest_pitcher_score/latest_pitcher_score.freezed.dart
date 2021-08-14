// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'latest_pitcher_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LatestPitcherScore _$LatestPitcherScoreFromJson(Map<String, dynamic> json) {
  return _LatestPitcherScore.fromJson(json);
}

/// @nodoc
class _$LatestPitcherScoreTearOff {
  const _$LatestPitcherScoreTearOff();

// ignore: unused_element
  _LatestPitcherScore call(
      {String date = '',
      String gameLink = '',
      String vsTeam = '',
      String outcome = '',
      String inningsPitched = '',
      String numberPitched = '',
      String hits = '',
      String basesOnBalles = '',
      String earnedRuns = '',
      String numberHitters = '',
      String strikeouts = '',
      String runs = ''}) {
    return _LatestPitcherScore(
      date: date,
      gameLink: gameLink,
      vsTeam: vsTeam,
      outcome: outcome,
      inningsPitched: inningsPitched,
      numberPitched: numberPitched,
      hits: hits,
      basesOnBalles: basesOnBalles,
      earnedRuns: earnedRuns,
      numberHitters: numberHitters,
      strikeouts: strikeouts,
      runs: runs,
    );
  }

// ignore: unused_element
  LatestPitcherScore fromJson(Map<String, Object> json) {
    return LatestPitcherScore.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LatestPitcherScore = _$LatestPitcherScoreTearOff();

/// @nodoc
mixin _$LatestPitcherScore {
  /// 日付
  String get date;

  /// 試合リンク
  String get gameLink;

  /// 対戦相手
  String get vsTeam;

  /// 勝敗
  String get outcome;

  /// 投球回数
  String get inningsPitched;

  /// 投球数
  String get numberPitched;

  /// 被安打
  String get hits;

  /// 与四球
  String get basesOnBalles;

  /// 自責点
  String get earnedRuns;

  /// 打者数
  String get numberHitters;

  /// 奪三振
  String get strikeouts;

  /// 失点
  String get runs;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LatestPitcherScoreCopyWith<LatestPitcherScore> get copyWith;
}

/// @nodoc
abstract class $LatestPitcherScoreCopyWith<$Res> {
  factory $LatestPitcherScoreCopyWith(
          LatestPitcherScore value, $Res Function(LatestPitcherScore) then) =
      _$LatestPitcherScoreCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String gameLink,
      String vsTeam,
      String outcome,
      String inningsPitched,
      String numberPitched,
      String hits,
      String basesOnBalles,
      String earnedRuns,
      String numberHitters,
      String strikeouts,
      String runs});
}

/// @nodoc
class _$LatestPitcherScoreCopyWithImpl<$Res>
    implements $LatestPitcherScoreCopyWith<$Res> {
  _$LatestPitcherScoreCopyWithImpl(this._value, this._then);

  final LatestPitcherScore _value;
  // ignore: unused_field
  final $Res Function(LatestPitcherScore) _then;

  @override
  $Res call({
    Object date = freezed,
    Object gameLink = freezed,
    Object vsTeam = freezed,
    Object outcome = freezed,
    Object inningsPitched = freezed,
    Object numberPitched = freezed,
    Object hits = freezed,
    Object basesOnBalles = freezed,
    Object earnedRuns = freezed,
    Object numberHitters = freezed,
    Object strikeouts = freezed,
    Object runs = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      gameLink: gameLink == freezed ? _value.gameLink : gameLink as String,
      vsTeam: vsTeam == freezed ? _value.vsTeam : vsTeam as String,
      outcome: outcome == freezed ? _value.outcome : outcome as String,
      inningsPitched: inningsPitched == freezed
          ? _value.inningsPitched
          : inningsPitched as String,
      numberPitched: numberPitched == freezed
          ? _value.numberPitched
          : numberPitched as String,
      hits: hits == freezed ? _value.hits : hits as String,
      basesOnBalles: basesOnBalles == freezed
          ? _value.basesOnBalles
          : basesOnBalles as String,
      earnedRuns:
          earnedRuns == freezed ? _value.earnedRuns : earnedRuns as String,
      numberHitters: numberHitters == freezed
          ? _value.numberHitters
          : numberHitters as String,
      strikeouts:
          strikeouts == freezed ? _value.strikeouts : strikeouts as String,
      runs: runs == freezed ? _value.runs : runs as String,
    ));
  }
}

/// @nodoc
abstract class _$LatestPitcherScoreCopyWith<$Res>
    implements $LatestPitcherScoreCopyWith<$Res> {
  factory _$LatestPitcherScoreCopyWith(
          _LatestPitcherScore value, $Res Function(_LatestPitcherScore) then) =
      __$LatestPitcherScoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String gameLink,
      String vsTeam,
      String outcome,
      String inningsPitched,
      String numberPitched,
      String hits,
      String basesOnBalles,
      String earnedRuns,
      String numberHitters,
      String strikeouts,
      String runs});
}

/// @nodoc
class __$LatestPitcherScoreCopyWithImpl<$Res>
    extends _$LatestPitcherScoreCopyWithImpl<$Res>
    implements _$LatestPitcherScoreCopyWith<$Res> {
  __$LatestPitcherScoreCopyWithImpl(
      _LatestPitcherScore _value, $Res Function(_LatestPitcherScore) _then)
      : super(_value, (v) => _then(v as _LatestPitcherScore));

  @override
  _LatestPitcherScore get _value => super._value as _LatestPitcherScore;

  @override
  $Res call({
    Object date = freezed,
    Object gameLink = freezed,
    Object vsTeam = freezed,
    Object outcome = freezed,
    Object inningsPitched = freezed,
    Object numberPitched = freezed,
    Object hits = freezed,
    Object basesOnBalles = freezed,
    Object earnedRuns = freezed,
    Object numberHitters = freezed,
    Object strikeouts = freezed,
    Object runs = freezed,
  }) {
    return _then(_LatestPitcherScore(
      date: date == freezed ? _value.date : date as String,
      gameLink: gameLink == freezed ? _value.gameLink : gameLink as String,
      vsTeam: vsTeam == freezed ? _value.vsTeam : vsTeam as String,
      outcome: outcome == freezed ? _value.outcome : outcome as String,
      inningsPitched: inningsPitched == freezed
          ? _value.inningsPitched
          : inningsPitched as String,
      numberPitched: numberPitched == freezed
          ? _value.numberPitched
          : numberPitched as String,
      hits: hits == freezed ? _value.hits : hits as String,
      basesOnBalles: basesOnBalles == freezed
          ? _value.basesOnBalles
          : basesOnBalles as String,
      earnedRuns:
          earnedRuns == freezed ? _value.earnedRuns : earnedRuns as String,
      numberHitters: numberHitters == freezed
          ? _value.numberHitters
          : numberHitters as String,
      strikeouts:
          strikeouts == freezed ? _value.strikeouts : strikeouts as String,
      runs: runs == freezed ? _value.runs : runs as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LatestPitcherScore extends _LatestPitcherScore
    with DiagnosticableTreeMixin {
  const _$_LatestPitcherScore(
      {this.date = '',
      this.gameLink = '',
      this.vsTeam = '',
      this.outcome = '',
      this.inningsPitched = '',
      this.numberPitched = '',
      this.hits = '',
      this.basesOnBalles = '',
      this.earnedRuns = '',
      this.numberHitters = '',
      this.strikeouts = '',
      this.runs = ''})
      : assert(date != null),
        assert(gameLink != null),
        assert(vsTeam != null),
        assert(outcome != null),
        assert(inningsPitched != null),
        assert(numberPitched != null),
        assert(hits != null),
        assert(basesOnBalles != null),
        assert(earnedRuns != null),
        assert(numberHitters != null),
        assert(strikeouts != null),
        assert(runs != null),
        super._();

  factory _$_LatestPitcherScore.fromJson(Map<String, dynamic> json) =>
      _$_$_LatestPitcherScoreFromJson(json);

  @JsonKey(defaultValue: '')
  @override

  /// 日付
  final String date;
  @JsonKey(defaultValue: '')
  @override

  /// 試合リンク
  final String gameLink;
  @JsonKey(defaultValue: '')
  @override

  /// 対戦相手
  final String vsTeam;
  @JsonKey(defaultValue: '')
  @override

  /// 勝敗
  final String outcome;
  @JsonKey(defaultValue: '')
  @override

  /// 投球回数
  final String inningsPitched;
  @JsonKey(defaultValue: '')
  @override

  /// 投球数
  final String numberPitched;
  @JsonKey(defaultValue: '')
  @override

  /// 被安打
  final String hits;
  @JsonKey(defaultValue: '')
  @override

  /// 与四球
  final String basesOnBalles;
  @JsonKey(defaultValue: '')
  @override

  /// 自責点
  final String earnedRuns;
  @JsonKey(defaultValue: '')
  @override

  /// 打者数
  final String numberHitters;
  @JsonKey(defaultValue: '')
  @override

  /// 奪三振
  final String strikeouts;
  @JsonKey(defaultValue: '')
  @override

  /// 失点
  final String runs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LatestPitcherScore(date: $date, gameLink: $gameLink, vsTeam: $vsTeam, outcome: $outcome, inningsPitched: $inningsPitched, numberPitched: $numberPitched, hits: $hits, basesOnBalles: $basesOnBalles, earnedRuns: $earnedRuns, numberHitters: $numberHitters, strikeouts: $strikeouts, runs: $runs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LatestPitcherScore'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('gameLink', gameLink))
      ..add(DiagnosticsProperty('vsTeam', vsTeam))
      ..add(DiagnosticsProperty('outcome', outcome))
      ..add(DiagnosticsProperty('inningsPitched', inningsPitched))
      ..add(DiagnosticsProperty('numberPitched', numberPitched))
      ..add(DiagnosticsProperty('hits', hits))
      ..add(DiagnosticsProperty('basesOnBalles', basesOnBalles))
      ..add(DiagnosticsProperty('earnedRuns', earnedRuns))
      ..add(DiagnosticsProperty('numberHitters', numberHitters))
      ..add(DiagnosticsProperty('strikeouts', strikeouts))
      ..add(DiagnosticsProperty('runs', runs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LatestPitcherScore &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.gameLink, gameLink) ||
                const DeepCollectionEquality()
                    .equals(other.gameLink, gameLink)) &&
            (identical(other.vsTeam, vsTeam) ||
                const DeepCollectionEquality().equals(other.vsTeam, vsTeam)) &&
            (identical(other.outcome, outcome) ||
                const DeepCollectionEquality()
                    .equals(other.outcome, outcome)) &&
            (identical(other.inningsPitched, inningsPitched) ||
                const DeepCollectionEquality()
                    .equals(other.inningsPitched, inningsPitched)) &&
            (identical(other.numberPitched, numberPitched) ||
                const DeepCollectionEquality()
                    .equals(other.numberPitched, numberPitched)) &&
            (identical(other.hits, hits) ||
                const DeepCollectionEquality().equals(other.hits, hits)) &&
            (identical(other.basesOnBalles, basesOnBalles) ||
                const DeepCollectionEquality()
                    .equals(other.basesOnBalles, basesOnBalles)) &&
            (identical(other.earnedRuns, earnedRuns) ||
                const DeepCollectionEquality()
                    .equals(other.earnedRuns, earnedRuns)) &&
            (identical(other.numberHitters, numberHitters) ||
                const DeepCollectionEquality()
                    .equals(other.numberHitters, numberHitters)) &&
            (identical(other.strikeouts, strikeouts) ||
                const DeepCollectionEquality()
                    .equals(other.strikeouts, strikeouts)) &&
            (identical(other.runs, runs) ||
                const DeepCollectionEquality().equals(other.runs, runs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(gameLink) ^
      const DeepCollectionEquality().hash(vsTeam) ^
      const DeepCollectionEquality().hash(outcome) ^
      const DeepCollectionEquality().hash(inningsPitched) ^
      const DeepCollectionEquality().hash(numberPitched) ^
      const DeepCollectionEquality().hash(hits) ^
      const DeepCollectionEquality().hash(basesOnBalles) ^
      const DeepCollectionEquality().hash(earnedRuns) ^
      const DeepCollectionEquality().hash(numberHitters) ^
      const DeepCollectionEquality().hash(strikeouts) ^
      const DeepCollectionEquality().hash(runs);

  @JsonKey(ignore: true)
  @override
  _$LatestPitcherScoreCopyWith<_LatestPitcherScore> get copyWith =>
      __$LatestPitcherScoreCopyWithImpl<_LatestPitcherScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LatestPitcherScoreToJson(this);
  }
}

abstract class _LatestPitcherScore extends LatestPitcherScore {
  const _LatestPitcherScore._() : super._();
  const factory _LatestPitcherScore(
      {String date,
      String gameLink,
      String vsTeam,
      String outcome,
      String inningsPitched,
      String numberPitched,
      String hits,
      String basesOnBalles,
      String earnedRuns,
      String numberHitters,
      String strikeouts,
      String runs}) = _$_LatestPitcherScore;

  factory _LatestPitcherScore.fromJson(Map<String, dynamic> json) =
      _$_LatestPitcherScore.fromJson;

  @override

  /// 日付
  String get date;
  @override

  /// 試合リンク
  String get gameLink;
  @override

  /// 対戦相手
  String get vsTeam;
  @override

  /// 勝敗
  String get outcome;
  @override

  /// 投球回数
  String get inningsPitched;
  @override

  /// 投球数
  String get numberPitched;
  @override

  /// 被安打
  String get hits;
  @override

  /// 与四球
  String get basesOnBalles;
  @override

  /// 自責点
  String get earnedRuns;
  @override

  /// 打者数
  String get numberHitters;
  @override

  /// 奪三振
  String get strikeouts;
  @override

  /// 失点
  String get runs;
  @override
  @JsonKey(ignore: true)
  _$LatestPitcherScoreCopyWith<_LatestPitcherScore> get copyWith;
}
