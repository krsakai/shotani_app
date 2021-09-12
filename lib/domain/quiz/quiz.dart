// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
abstract class Quiz implements _$Quiz {
  const Quiz._(); 
  const factory Quiz({
    /// ID
    @Default('') String id, 
    /// 問題テキスト
    @Default('') String issueText,
    /// 答えテキスト
    @Default('') String answerText, 
    /// 答え説明テキスト
    @Default('') String answerDescribeText, 
    /// 選択肢
    @Default([]) List<String> selectionList, 
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$_$_QuizFromJson(json);
}