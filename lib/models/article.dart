// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  final String greeting;
  final List<String> instructions;

  Article({
    required this.greeting,
    required this.instructions,
  });

  Article copyWith({
    String? greeting,
    List<String>? instructions,
  }) =>
      Article(
        greeting: greeting ?? this.greeting,
        instructions: instructions ?? this.instructions,
      );

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    greeting: json["greeting"],
    instructions: List<String>.from(json["instructions"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "greeting": greeting,
    "instructions": List<dynamic>.from(instructions.map((x) => x)),
  };
}
