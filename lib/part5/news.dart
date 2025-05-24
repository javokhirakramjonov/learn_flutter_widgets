import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  final String title;

  News({required this.title});

  static News fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}