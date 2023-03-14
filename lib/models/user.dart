import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int id;
  String email;
  String fio;
  String score;
  String avatar;

  Data({
    required this.id,
    required this.email,
    required this.fio,
    required this.score,
    required this.avatar,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}