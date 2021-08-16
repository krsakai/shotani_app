// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

// ignore: unused_element
  _News call(
      {String newsId = '',
      String linkUrl = '',
      String imageUrl = '',
      String titleText = '',
      String messageText = '',
      String date = ''}) {
    return _News(
      newsId: newsId,
      linkUrl: linkUrl,
      imageUrl: imageUrl,
      titleText: titleText,
      messageText: messageText,
      date: date,
    );
  }

// ignore: unused_element
  News fromJson(Map<String, Object> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  /// ID
  String get newsId;

  /// リンクURL
  String get linkUrl;

  /// 画像URL
  String get imageUrl;

  /// タイトルテキスト
  String get titleText;

  /// メッセージテキスト
  String get messageText;

  /// 日付
  String get date;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {String newsId,
      String linkUrl,
      String imageUrl,
      String titleText,
      String messageText,
      String date});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object newsId = freezed,
    Object linkUrl = freezed,
    Object imageUrl = freezed,
    Object titleText = freezed,
    Object messageText = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      newsId: newsId == freezed ? _value.newsId : newsId as String,
      linkUrl: linkUrl == freezed ? _value.linkUrl : linkUrl as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      messageText:
          messageText == freezed ? _value.messageText : messageText as String,
      date: date == freezed ? _value.date : date as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String newsId,
      String linkUrl,
      String imageUrl,
      String titleText,
      String messageText,
      String date});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object newsId = freezed,
    Object linkUrl = freezed,
    Object imageUrl = freezed,
    Object titleText = freezed,
    Object messageText = freezed,
    Object date = freezed,
  }) {
    return _then(_News(
      newsId: newsId == freezed ? _value.newsId : newsId as String,
      linkUrl: linkUrl == freezed ? _value.linkUrl : linkUrl as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      titleText: titleText == freezed ? _value.titleText : titleText as String,
      messageText:
          messageText == freezed ? _value.messageText : messageText as String,
      date: date == freezed ? _value.date : date as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_News extends _News with DiagnosticableTreeMixin {
  const _$_News(
      {this.newsId = '',
      this.linkUrl = '',
      this.imageUrl = '',
      this.titleText = '',
      this.messageText = '',
      this.date = ''})
      : assert(newsId != null),
        assert(linkUrl != null),
        assert(imageUrl != null),
        assert(titleText != null),
        assert(messageText != null),
        assert(date != null),
        super._();

  factory _$_News.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsFromJson(json);

  @JsonKey(defaultValue: '')
  @override

  /// ID
  final String newsId;
  @JsonKey(defaultValue: '')
  @override

  /// リンクURL
  final String linkUrl;
  @JsonKey(defaultValue: '')
  @override

  /// 画像URL
  final String imageUrl;
  @JsonKey(defaultValue: '')
  @override

  /// タイトルテキスト
  final String titleText;
  @JsonKey(defaultValue: '')
  @override

  /// メッセージテキスト
  final String messageText;
  @JsonKey(defaultValue: '')
  @override

  /// 日付
  final String date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'News(newsId: $newsId, linkUrl: $linkUrl, imageUrl: $imageUrl, titleText: $titleText, messageText: $messageText, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'News'))
      ..add(DiagnosticsProperty('newsId', newsId))
      ..add(DiagnosticsProperty('linkUrl', linkUrl))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('titleText', titleText))
      ..add(DiagnosticsProperty('messageText', messageText))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
            (identical(other.newsId, newsId) ||
                const DeepCollectionEquality().equals(other.newsId, newsId)) &&
            (identical(other.linkUrl, linkUrl) ||
                const DeepCollectionEquality()
                    .equals(other.linkUrl, linkUrl)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.titleText, titleText) ||
                const DeepCollectionEquality()
                    .equals(other.titleText, titleText)) &&
            (identical(other.messageText, messageText) ||
                const DeepCollectionEquality()
                    .equals(other.messageText, messageText)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsId) ^
      const DeepCollectionEquality().hash(linkUrl) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(titleText) ^
      const DeepCollectionEquality().hash(messageText) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsToJson(this);
  }
}

abstract class _News extends News {
  const _News._() : super._();
  const factory _News(
      {String newsId,
      String linkUrl,
      String imageUrl,
      String titleText,
      String messageText,
      String date}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override

  /// ID
  String get newsId;
  @override

  /// リンクURL
  String get linkUrl;
  @override

  /// 画像URL
  String get imageUrl;
  @override

  /// タイトルテキスト
  String get titleText;
  @override

  /// メッセージテキスト
  String get messageText;
  @override

  /// 日付
  String get date;
  @override
  @JsonKey(ignore: true)
  _$NewsCopyWith<_News> get copyWith;
}
