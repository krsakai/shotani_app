// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
class _$QuizTearOff {
  const _$QuizTearOff();

// ignore: unused_element
  _Quiz call(
      {String id = '',
      String issueText = '',
      String answerText = '',
      String answerDescribeText = '',
      List<String> selectionList = const []}) {
    return _Quiz(
      id: id,
      issueText: issueText,
      answerText: answerText,
      answerDescribeText: answerDescribeText,
      selectionList: selectionList,
    );
  }

// ignore: unused_element
  Quiz fromJson(Map<String, Object> json) {
    return Quiz.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Quiz = _$QuizTearOff();

/// @nodoc
mixin _$Quiz {
  /// ID
  String get id;

  /// 問題テキスト
  String get issueText;

  /// 答えテキスト
  String get answerText;

  /// 答え説明テキスト
  String get answerDescribeText;

  /// 選択肢
  List<String> get selectionList;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String issueText,
      String answerText,
      String answerDescribeText,
      List<String> selectionList});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res> implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  final Quiz _value;
  // ignore: unused_field
  final $Res Function(Quiz) _then;

  @override
  $Res call({
    Object id = freezed,
    Object issueText = freezed,
    Object answerText = freezed,
    Object answerDescribeText = freezed,
    Object selectionList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      issueText: issueText == freezed ? _value.issueText : issueText as String,
      answerText:
          answerText == freezed ? _value.answerText : answerText as String,
      answerDescribeText: answerDescribeText == freezed
          ? _value.answerDescribeText
          : answerDescribeText as String,
      selectionList: selectionList == freezed
          ? _value.selectionList
          : selectionList as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$QuizCopyWith(_Quiz value, $Res Function(_Quiz) then) =
      __$QuizCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String issueText,
      String answerText,
      String answerDescribeText,
      List<String> selectionList});
}

/// @nodoc
class __$QuizCopyWithImpl<$Res> extends _$QuizCopyWithImpl<$Res>
    implements _$QuizCopyWith<$Res> {
  __$QuizCopyWithImpl(_Quiz _value, $Res Function(_Quiz) _then)
      : super(_value, (v) => _then(v as _Quiz));

  @override
  _Quiz get _value => super._value as _Quiz;

  @override
  $Res call({
    Object id = freezed,
    Object issueText = freezed,
    Object answerText = freezed,
    Object answerDescribeText = freezed,
    Object selectionList = freezed,
  }) {
    return _then(_Quiz(
      id: id == freezed ? _value.id : id as String,
      issueText: issueText == freezed ? _value.issueText : issueText as String,
      answerText:
          answerText == freezed ? _value.answerText : answerText as String,
      answerDescribeText: answerDescribeText == freezed
          ? _value.answerDescribeText
          : answerDescribeText as String,
      selectionList: selectionList == freezed
          ? _value.selectionList
          : selectionList as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Quiz extends _Quiz with DiagnosticableTreeMixin {
  const _$_Quiz(
      {this.id = '',
      this.issueText = '',
      this.answerText = '',
      this.answerDescribeText = '',
      this.selectionList = const []})
      : assert(id != null),
        assert(issueText != null),
        assert(answerText != null),
        assert(answerDescribeText != null),
        assert(selectionList != null),
        super._();

  factory _$_Quiz.fromJson(Map<String, dynamic> json) =>
      _$_$_QuizFromJson(json);

  @JsonKey(defaultValue: '')
  @override

  /// ID
  final String id;
  @JsonKey(defaultValue: '')
  @override

  /// 問題テキスト
  final String issueText;
  @JsonKey(defaultValue: '')
  @override

  /// 答えテキスト
  final String answerText;
  @JsonKey(defaultValue: '')
  @override

  /// 答え説明テキスト
  final String answerDescribeText;
  @JsonKey(defaultValue: const [])
  @override

  /// 選択肢
  final List<String> selectionList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Quiz(id: $id, issueText: $issueText, answerText: $answerText, answerDescribeText: $answerDescribeText, selectionList: $selectionList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Quiz'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('issueText', issueText))
      ..add(DiagnosticsProperty('answerText', answerText))
      ..add(DiagnosticsProperty('answerDescribeText', answerDescribeText))
      ..add(DiagnosticsProperty('selectionList', selectionList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Quiz &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.issueText, issueText) ||
                const DeepCollectionEquality()
                    .equals(other.issueText, issueText)) &&
            (identical(other.answerText, answerText) ||
                const DeepCollectionEquality()
                    .equals(other.answerText, answerText)) &&
            (identical(other.answerDescribeText, answerDescribeText) ||
                const DeepCollectionEquality()
                    .equals(other.answerDescribeText, answerDescribeText)) &&
            (identical(other.selectionList, selectionList) ||
                const DeepCollectionEquality()
                    .equals(other.selectionList, selectionList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(issueText) ^
      const DeepCollectionEquality().hash(answerText) ^
      const DeepCollectionEquality().hash(answerDescribeText) ^
      const DeepCollectionEquality().hash(selectionList);

  @JsonKey(ignore: true)
  @override
  _$QuizCopyWith<_Quiz> get copyWith =>
      __$QuizCopyWithImpl<_Quiz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuizToJson(this);
  }
}

abstract class _Quiz extends Quiz {
  const _Quiz._() : super._();
  const factory _Quiz(
      {String id,
      String issueText,
      String answerText,
      String answerDescribeText,
      List<String> selectionList}) = _$_Quiz;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$_Quiz.fromJson;

  @override

  /// ID
  String get id;
  @override

  /// 問題テキスト
  String get issueText;
  @override

  /// 答えテキスト
  String get answerText;
  @override

  /// 答え説明テキスト
  String get answerDescribeText;
  @override

  /// 選択肢
  List<String> get selectionList;
  @override
  @JsonKey(ignore: true)
  _$QuizCopyWith<_Quiz> get copyWith;
}
