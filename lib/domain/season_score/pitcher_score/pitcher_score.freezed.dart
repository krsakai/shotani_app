// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pitcher_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PitcherScore _$PitcherScoreFromJson(Map<String, dynamic> json) {
  return _PitcherScore.fromJson(json);
}

/// @nodoc
class _$PitcherScoreTearOff {
  const _$PitcherScoreTearOff();

// ignore: unused_element
  _PitcherScore call(
      {String year = '',
      String era = '',
      String games = '',
      String completeGames = '',
      String shutouts = '',
      String win = '',
      String losses = '',
      String saves = '',
      String inningsPitched = '',
      String hits = '',
      String homeRuns = '',
      String strikeouts = '',
      String basesOnBalles = '',
      String hitsBatsmen = '',
      String ring = '',
      String bok = '',
      String runs = '',
      String earnedRuns = ''}) {
    return _PitcherScore(
      year: year,
      era: era,
      games: games,
      completeGames: completeGames,
      shutouts: shutouts,
      win: win,
      losses: losses,
      saves: saves,
      inningsPitched: inningsPitched,
      hits: hits,
      homeRuns: homeRuns,
      strikeouts: strikeouts,
      basesOnBalles: basesOnBalles,
      hitsBatsmen: hitsBatsmen,
      ring: ring,
      bok: bok,
      runs: runs,
      earnedRuns: earnedRuns,
    );
  }

// ignore: unused_element
  PitcherScore fromJson(Map<String, Object> json) {
    return PitcherScore.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PitcherScore = _$PitcherScoreTearOff();

/// @nodoc
mixin _$PitcherScore {
  /// 年
  String get year;

  /// 防御率
  String get era;

  /// 試合数
  String get games;

  /// 完投
  String get completeGames;

  /// 完封
  String get shutouts;

  /// 勝利
  String get win;

  /// 敗北
  String get losses;

  /// セーブ
  String get saves;

  /// 投球回数
  String get inningsPitched;

  /// 被安打
  String get hits;

  /// 被本塁打
  String get homeRuns;

  /// 奪三振
  String get strikeouts;

  /// 与四球
  String get basesOnBalles;

  /// 与死球
  String get hitsBatsmen;

  /// 暴投
  String get ring;

  /// ボーク
  String get bok;

  /// 失点
  String get runs;

  /// 自責点
  String get earnedRuns;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PitcherScoreCopyWith<PitcherScore> get copyWith;
}

/// @nodoc
abstract class $PitcherScoreCopyWith<$Res> {
  factory $PitcherScoreCopyWith(
          PitcherScore value, $Res Function(PitcherScore) then) =
      _$PitcherScoreCopyWithImpl<$Res>;
  $Res call(
      {String year,
      String era,
      String games,
      String completeGames,
      String shutouts,
      String win,
      String losses,
      String saves,
      String inningsPitched,
      String hits,
      String homeRuns,
      String strikeouts,
      String basesOnBalles,
      String hitsBatsmen,
      String ring,
      String bok,
      String runs,
      String earnedRuns});
}

/// @nodoc
class _$PitcherScoreCopyWithImpl<$Res> implements $PitcherScoreCopyWith<$Res> {
  _$PitcherScoreCopyWithImpl(this._value, this._then);

  final PitcherScore _value;
  // ignore: unused_field
  final $Res Function(PitcherScore) _then;

  @override
  $Res call({
    Object year = freezed,
    Object era = freezed,
    Object games = freezed,
    Object completeGames = freezed,
    Object shutouts = freezed,
    Object win = freezed,
    Object losses = freezed,
    Object saves = freezed,
    Object inningsPitched = freezed,
    Object hits = freezed,
    Object homeRuns = freezed,
    Object strikeouts = freezed,
    Object basesOnBalles = freezed,
    Object hitsBatsmen = freezed,
    Object ring = freezed,
    Object bok = freezed,
    Object runs = freezed,
    Object earnedRuns = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed ? _value.year : year as String,
      era: era == freezed ? _value.era : era as String,
      games: games == freezed ? _value.games : games as String,
      completeGames: completeGames == freezed
          ? _value.completeGames
          : completeGames as String,
      shutouts: shutouts == freezed ? _value.shutouts : shutouts as String,
      win: win == freezed ? _value.win : win as String,
      losses: losses == freezed ? _value.losses : losses as String,
      saves: saves == freezed ? _value.saves : saves as String,
      inningsPitched: inningsPitched == freezed
          ? _value.inningsPitched
          : inningsPitched as String,
      hits: hits == freezed ? _value.hits : hits as String,
      homeRuns: homeRuns == freezed ? _value.homeRuns : homeRuns as String,
      strikeouts:
          strikeouts == freezed ? _value.strikeouts : strikeouts as String,
      basesOnBalles: basesOnBalles == freezed
          ? _value.basesOnBalles
          : basesOnBalles as String,
      hitsBatsmen:
          hitsBatsmen == freezed ? _value.hitsBatsmen : hitsBatsmen as String,
      ring: ring == freezed ? _value.ring : ring as String,
      bok: bok == freezed ? _value.bok : bok as String,
      runs: runs == freezed ? _value.runs : runs as String,
      earnedRuns:
          earnedRuns == freezed ? _value.earnedRuns : earnedRuns as String,
    ));
  }
}

/// @nodoc
abstract class _$PitcherScoreCopyWith<$Res>
    implements $PitcherScoreCopyWith<$Res> {
  factory _$PitcherScoreCopyWith(
          _PitcherScore value, $Res Function(_PitcherScore) then) =
      __$PitcherScoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String year,
      String era,
      String games,
      String completeGames,
      String shutouts,
      String win,
      String losses,
      String saves,
      String inningsPitched,
      String hits,
      String homeRuns,
      String strikeouts,
      String basesOnBalles,
      String hitsBatsmen,
      String ring,
      String bok,
      String runs,
      String earnedRuns});
}

/// @nodoc
class __$PitcherScoreCopyWithImpl<$Res> extends _$PitcherScoreCopyWithImpl<$Res>
    implements _$PitcherScoreCopyWith<$Res> {
  __$PitcherScoreCopyWithImpl(
      _PitcherScore _value, $Res Function(_PitcherScore) _then)
      : super(_value, (v) => _then(v as _PitcherScore));

  @override
  _PitcherScore get _value => super._value as _PitcherScore;

  @override
  $Res call({
    Object year = freezed,
    Object era = freezed,
    Object games = freezed,
    Object completeGames = freezed,
    Object shutouts = freezed,
    Object win = freezed,
    Object losses = freezed,
    Object saves = freezed,
    Object inningsPitched = freezed,
    Object hits = freezed,
    Object homeRuns = freezed,
    Object strikeouts = freezed,
    Object basesOnBalles = freezed,
    Object hitsBatsmen = freezed,
    Object ring = freezed,
    Object bok = freezed,
    Object runs = freezed,
    Object earnedRuns = freezed,
  }) {
    return _then(_PitcherScore(
      year: year == freezed ? _value.year : year as String,
      era: era == freezed ? _value.era : era as String,
      games: games == freezed ? _value.games : games as String,
      completeGames: completeGames == freezed
          ? _value.completeGames
          : completeGames as String,
      shutouts: shutouts == freezed ? _value.shutouts : shutouts as String,
      win: win == freezed ? _value.win : win as String,
      losses: losses == freezed ? _value.losses : losses as String,
      saves: saves == freezed ? _value.saves : saves as String,
      inningsPitched: inningsPitched == freezed
          ? _value.inningsPitched
          : inningsPitched as String,
      hits: hits == freezed ? _value.hits : hits as String,
      homeRuns: homeRuns == freezed ? _value.homeRuns : homeRuns as String,
      strikeouts:
          strikeouts == freezed ? _value.strikeouts : strikeouts as String,
      basesOnBalles: basesOnBalles == freezed
          ? _value.basesOnBalles
          : basesOnBalles as String,
      hitsBatsmen:
          hitsBatsmen == freezed ? _value.hitsBatsmen : hitsBatsmen as String,
      ring: ring == freezed ? _value.ring : ring as String,
      bok: bok == freezed ? _value.bok : bok as String,
      runs: runs == freezed ? _value.runs : runs as String,
      earnedRuns:
          earnedRuns == freezed ? _value.earnedRuns : earnedRuns as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PitcherScore extends _PitcherScore with DiagnosticableTreeMixin {
  const _$_PitcherScore(
      {this.year = '',
      this.era = '',
      this.games = '',
      this.completeGames = '',
      this.shutouts = '',
      this.win = '',
      this.losses = '',
      this.saves = '',
      this.inningsPitched = '',
      this.hits = '',
      this.homeRuns = '',
      this.strikeouts = '',
      this.basesOnBalles = '',
      this.hitsBatsmen = '',
      this.ring = '',
      this.bok = '',
      this.runs = '',
      this.earnedRuns = ''})
      : assert(year != null),
        assert(era != null),
        assert(games != null),
        assert(completeGames != null),
        assert(shutouts != null),
        assert(win != null),
        assert(losses != null),
        assert(saves != null),
        assert(inningsPitched != null),
        assert(hits != null),
        assert(homeRuns != null),
        assert(strikeouts != null),
        assert(basesOnBalles != null),
        assert(hitsBatsmen != null),
        assert(ring != null),
        assert(bok != null),
        assert(runs != null),
        assert(earnedRuns != null),
        super._();

  factory _$_PitcherScore.fromJson(Map<String, dynamic> json) =>
      _$_$_PitcherScoreFromJson(json);

  @JsonKey(defaultValue: '')
  @override

  /// 年
  final String year;
  @JsonKey(defaultValue: '')
  @override

  /// 防御率
  final String era;
  @JsonKey(defaultValue: '')
  @override

  /// 試合数
  final String games;
  @JsonKey(defaultValue: '')
  @override

  /// 完投
  final String completeGames;
  @JsonKey(defaultValue: '')
  @override

  /// 完封
  final String shutouts;
  @JsonKey(defaultValue: '')
  @override

  /// 勝利
  final String win;
  @JsonKey(defaultValue: '')
  @override

  /// 敗北
  final String losses;
  @JsonKey(defaultValue: '')
  @override

  /// セーブ
  final String saves;
  @JsonKey(defaultValue: '')
  @override

  /// 投球回数
  final String inningsPitched;
  @JsonKey(defaultValue: '')
  @override

  /// 被安打
  final String hits;
  @JsonKey(defaultValue: '')
  @override

  /// 被本塁打
  final String homeRuns;
  @JsonKey(defaultValue: '')
  @override

  /// 奪三振
  final String strikeouts;
  @JsonKey(defaultValue: '')
  @override

  /// 与四球
  final String basesOnBalles;
  @JsonKey(defaultValue: '')
  @override

  /// 与死球
  final String hitsBatsmen;
  @JsonKey(defaultValue: '')
  @override

  /// 暴投
  final String ring;
  @JsonKey(defaultValue: '')
  @override

  /// ボーク
  final String bok;
  @JsonKey(defaultValue: '')
  @override

  /// 失点
  final String runs;
  @JsonKey(defaultValue: '')
  @override

  /// 自責点
  final String earnedRuns;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PitcherScore(year: $year, era: $era, games: $games, completeGames: $completeGames, shutouts: $shutouts, win: $win, losses: $losses, saves: $saves, inningsPitched: $inningsPitched, hits: $hits, homeRuns: $homeRuns, strikeouts: $strikeouts, basesOnBalles: $basesOnBalles, hitsBatsmen: $hitsBatsmen, ring: $ring, bok: $bok, runs: $runs, earnedRuns: $earnedRuns)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PitcherScore'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('era', era))
      ..add(DiagnosticsProperty('games', games))
      ..add(DiagnosticsProperty('completeGames', completeGames))
      ..add(DiagnosticsProperty('shutouts', shutouts))
      ..add(DiagnosticsProperty('win', win))
      ..add(DiagnosticsProperty('losses', losses))
      ..add(DiagnosticsProperty('saves', saves))
      ..add(DiagnosticsProperty('inningsPitched', inningsPitched))
      ..add(DiagnosticsProperty('hits', hits))
      ..add(DiagnosticsProperty('homeRuns', homeRuns))
      ..add(DiagnosticsProperty('strikeouts', strikeouts))
      ..add(DiagnosticsProperty('basesOnBalles', basesOnBalles))
      ..add(DiagnosticsProperty('hitsBatsmen', hitsBatsmen))
      ..add(DiagnosticsProperty('ring', ring))
      ..add(DiagnosticsProperty('bok', bok))
      ..add(DiagnosticsProperty('runs', runs))
      ..add(DiagnosticsProperty('earnedRuns', earnedRuns));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PitcherScore &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.era, era) ||
                const DeepCollectionEquality().equals(other.era, era)) &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.completeGames, completeGames) ||
                const DeepCollectionEquality()
                    .equals(other.completeGames, completeGames)) &&
            (identical(other.shutouts, shutouts) ||
                const DeepCollectionEquality()
                    .equals(other.shutouts, shutouts)) &&
            (identical(other.win, win) ||
                const DeepCollectionEquality().equals(other.win, win)) &&
            (identical(other.losses, losses) ||
                const DeepCollectionEquality().equals(other.losses, losses)) &&
            (identical(other.saves, saves) ||
                const DeepCollectionEquality().equals(other.saves, saves)) &&
            (identical(other.inningsPitched, inningsPitched) ||
                const DeepCollectionEquality()
                    .equals(other.inningsPitched, inningsPitched)) &&
            (identical(other.hits, hits) ||
                const DeepCollectionEquality().equals(other.hits, hits)) &&
            (identical(other.homeRuns, homeRuns) ||
                const DeepCollectionEquality()
                    .equals(other.homeRuns, homeRuns)) &&
            (identical(other.strikeouts, strikeouts) ||
                const DeepCollectionEquality()
                    .equals(other.strikeouts, strikeouts)) &&
            (identical(other.basesOnBalles, basesOnBalles) ||
                const DeepCollectionEquality()
                    .equals(other.basesOnBalles, basesOnBalles)) &&
            (identical(other.hitsBatsmen, hitsBatsmen) ||
                const DeepCollectionEquality()
                    .equals(other.hitsBatsmen, hitsBatsmen)) &&
            (identical(other.ring, ring) ||
                const DeepCollectionEquality().equals(other.ring, ring)) &&
            (identical(other.bok, bok) ||
                const DeepCollectionEquality().equals(other.bok, bok)) &&
            (identical(other.runs, runs) ||
                const DeepCollectionEquality().equals(other.runs, runs)) &&
            (identical(other.earnedRuns, earnedRuns) ||
                const DeepCollectionEquality()
                    .equals(other.earnedRuns, earnedRuns)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(era) ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(completeGames) ^
      const DeepCollectionEquality().hash(shutouts) ^
      const DeepCollectionEquality().hash(win) ^
      const DeepCollectionEquality().hash(losses) ^
      const DeepCollectionEquality().hash(saves) ^
      const DeepCollectionEquality().hash(inningsPitched) ^
      const DeepCollectionEquality().hash(hits) ^
      const DeepCollectionEquality().hash(homeRuns) ^
      const DeepCollectionEquality().hash(strikeouts) ^
      const DeepCollectionEquality().hash(basesOnBalles) ^
      const DeepCollectionEquality().hash(hitsBatsmen) ^
      const DeepCollectionEquality().hash(ring) ^
      const DeepCollectionEquality().hash(bok) ^
      const DeepCollectionEquality().hash(runs) ^
      const DeepCollectionEquality().hash(earnedRuns);

  @JsonKey(ignore: true)
  @override
  _$PitcherScoreCopyWith<_PitcherScore> get copyWith =>
      __$PitcherScoreCopyWithImpl<_PitcherScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PitcherScoreToJson(this);
  }
}

abstract class _PitcherScore extends PitcherScore {
  const _PitcherScore._() : super._();
  const factory _PitcherScore(
      {String year,
      String era,
      String games,
      String completeGames,
      String shutouts,
      String win,
      String losses,
      String saves,
      String inningsPitched,
      String hits,
      String homeRuns,
      String strikeouts,
      String basesOnBalles,
      String hitsBatsmen,
      String ring,
      String bok,
      String runs,
      String earnedRuns}) = _$_PitcherScore;

  factory _PitcherScore.fromJson(Map<String, dynamic> json) =
      _$_PitcherScore.fromJson;

  @override

  /// 年
  String get year;
  @override

  /// 防御率
  String get era;
  @override

  /// 試合数
  String get games;
  @override

  /// 完投
  String get completeGames;
  @override

  /// 完封
  String get shutouts;
  @override

  /// 勝利
  String get win;
  @override

  /// 敗北
  String get losses;
  @override

  /// セーブ
  String get saves;
  @override

  /// 投球回数
  String get inningsPitched;
  @override

  /// 被安打
  String get hits;
  @override

  /// 被本塁打
  String get homeRuns;
  @override

  /// 奪三振
  String get strikeouts;
  @override

  /// 与四球
  String get basesOnBalles;
  @override

  /// 与死球
  String get hitsBatsmen;
  @override

  /// 暴投
  String get ring;
  @override

  /// ボーク
  String get bok;
  @override

  /// 失点
  String get runs;
  @override

  /// 自責点
  String get earnedRuns;
  @override
  @JsonKey(ignore: true)
  _$PitcherScoreCopyWith<_PitcherScore> get copyWith;
}
