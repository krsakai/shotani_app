// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
abstract class News implements _$News {
  const News._(); 
  const factory News({
    /// ID
    @Default('') String newsId, 
    /// リンクURL
    @Default('') String linkUrl,
    /// 画像URL
    @Default('') String imageUrl, 
    /// タイトルテキスト
    @Default('') String titleText, 
    /// メッセージテキスト
    @Default('') String messageText,
    /// 日付
    @Default('') String date
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$_$_NewsFromJson(json);
}