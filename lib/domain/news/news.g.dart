// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$_$_NewsFromJson(Map<String, dynamic> json) {
  return _$_News(
    newsId: json['newsId'] as String ?? '',
    linkUrl: json['linkUrl'] as String ?? '',
    imageUrl: json['imageUrl'] as String ?? '',
    titleText: json['titleText'] as String ?? '',
    messageText: json['messageText'] as String ?? '',
    date: json['date'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_NewsToJson(_$_News instance) => <String, dynamic>{
      'newsId': instance.newsId,
      'linkUrl': instance.linkUrl,
      'imageUrl': instance.imageUrl,
      'titleText': instance.titleText,
      'messageText': instance.messageText,
      'date': instance.date,
    };
