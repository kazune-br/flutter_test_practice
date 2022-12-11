// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable(explicitToJson: true)
class TodoDto {
  @JsonKey(name: 'userId')
  int? userId;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'completed')
  bool? completed;

  TodoDto({this.userId, this.id, this.title, this.completed});

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoDtoToJson(this);

  @override
  String toString() => json.encode(toJson());
}
