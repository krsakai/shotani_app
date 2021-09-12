// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quiz _$_$_QuizFromJson(Map<String, dynamic> json) {
  return _$_Quiz(
    id: json['id'] as String ?? '',
    issueText: json['issueText'] as String ?? '',
    answerText: json['answerText'] as String ?? '',
    answerDescribeText: json['answerDescribeText'] as String ?? '',
    selectionList:
        (json['selectionList'] as List)?.map((e) => e as String)?.toList() ??
            [],
  );
}

Map<String, dynamic> _$_$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'issueText': instance.issueText,
      'answerText': instance.answerText,
      'answerDescribeText': instance.answerDescribeText,
      'selectionList': instance.selectionList,
    };
